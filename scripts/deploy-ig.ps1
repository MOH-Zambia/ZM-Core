[CmdletBinding()]
param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path,
    [string]$HapiBaseUrl = "http://hapi.moh.gov.zm/fhir",
    [switch]$Build,
    [switch]$SkipPublisherUpdate,
    [switch]$DeployStatic,
    [switch]$DeployHapi,
    [string]$StaticTargetPath,
    [switch]$CreateStaticZip,
    [string]$StaticZipPath,
    [string]$BearerToken,
    [string]$Username,
    [string]$Password,
    [switch]$DryRun,
    [switch]$Offline
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (-not $Build -and -not $DeployStatic -and -not $DeployHapi) {
    # Default behavior runs full deployment flow.
    $Build = $true
    $DeployStatic = $true
    $DeployHapi = $true
}

if (-not $StaticZipPath) {
    $StaticZipPath = Join-Path $RepoRoot "deploy\static-site.zip"
}

function Write-Step([string]$Message) {
    Write-Host "`n==> $Message" -ForegroundColor Cyan
}

function Get-PublisherJarPath([string]$Root) {
    $candidatePaths = @(
        (Join-Path $Root "input-cache\publisher.jar"),
        (Join-Path $Root "..\publisher.jar")
    )

    foreach ($path in $candidatePaths) {
        if (Test-Path $path) {
            return (Resolve-Path $path).Path
        }
    }

    throw "publisher.jar not found. Run _updatePublisher.bat /f or use -Build without -SkipPublisherUpdate."
}

function Invoke-RepoBuild {
    param(
        [string]$Root,
        [switch]$SkipUpdate,
        [switch]$ForceOffline
    )

    if (-not $SkipUpdate) {
        Write-Step "Updating IG Publisher"
        Push-Location $Root
        try {
            & cmd /c "_updatePublisher.bat /f"
            if ($LASTEXITCODE -ne 0) {
                throw "_updatePublisher.bat failed with exit code $LASTEXITCODE"
            }
        }
        finally {
            Pop-Location
        }
    }

    $jarPath = Get-PublisherJarPath -Root $Root
    Write-Step "Running IG Publisher build"

    $javaArgs = @("-Dfile.encoding=UTF-8", "-jar", $jarPath, "-ig", ".")
    if ($ForceOffline) {
        $javaArgs += @("-tx", "n/a")
    }

    Push-Location $Root
    try {
        & java @javaArgs
        if ($LASTEXITCODE -ne 0) {
            throw "IG Publisher build failed with exit code $LASTEXITCODE"
        }
    }
    finally {
        Pop-Location
    }
}

function Repair-LanguageAssets {
    param([string]$Root)

    # Some IG Publisher versions populate output/assets/images/ correctly but
    # miss copying a subset of those files (observed with jurisdiction flag
    # icons, e.g. zmb.svg) into each per-language output folder even though
    # the generated pages reference them via a relative path that resolves
    # into that per-language folder. Rather than hardcode specific files,
    # diff each language folder's assets/images against the root copy and
    # backfill anything missing.
    $outputPath = Join-Path $Root "output"
    $rootImages = Join-Path $outputPath "assets\images"
    if (-not (Test-Path $rootImages)) {
        return
    }

    Write-Step "Repairing per-language asset copies"
    $langDirs = Get-ChildItem -Path $outputPath -Directory -ErrorAction SilentlyContinue |
        Where-Object { Test-Path (Join-Path $_.FullName "index.html") }

    $repaired = 0
    foreach ($langDir in $langDirs) {
        $langImages = Join-Path $langDir.FullName "assets\images"
        if (-not (Test-Path $langImages)) {
            New-Item -Path $langImages -ItemType Directory -Force | Out-Null
        }

        Get-ChildItem -Path $rootImages -File | ForEach-Object {
            $target = Join-Path $langImages $_.Name
            if (-not (Test-Path $target)) {
                Copy-Item -Path $_.FullName -Destination $target
                Write-Host "Repaired missing asset: $($langDir.Name)/assets/images/$($_.Name)"
                $repaired++
            }
        }
    }

    if ($repaired -eq 0) {
        Write-Host "No missing per-language assets found."
    }
    else {
        Write-Host "Repaired $repaired missing per-language asset file(s)."
    }
}

function Deploy-StaticSite {
    param(
        [string]$Root,
        [string]$TargetPath,
        [switch]$Zip,
        [string]$ZipPath,
        [switch]$IsDryRun
    )

    $outputPath = Join-Path $Root "output"
    if (-not (Test-Path $outputPath)) {
        throw "Output directory not found: $outputPath. Run with -Build first."
    }

    if ($Zip) {
        Write-Step "Creating static site zip package"
        $zipParent = Split-Path $ZipPath -Parent
        if (-not (Test-Path $zipParent)) {
            New-Item -Path $zipParent -ItemType Directory -Force | Out-Null
        }

        if (Test-Path $ZipPath) {
            Remove-Item $ZipPath -Force
        }

        if ($IsDryRun) {
            Write-Host "[DryRun] Would zip $outputPath -> $ZipPath"
        }
        else {
            Compress-Archive -Path (Join-Path $outputPath "*") -DestinationPath $ZipPath -CompressionLevel Optimal
            Write-Host "Created $ZipPath"
        }
    }

    if ($TargetPath) {
        Write-Step "Copying static site artifacts"
        if ($IsDryRun) {
            Write-Host "[DryRun] Would copy $outputPath\* -> $TargetPath"
        }
        else {
            New-Item -Path $TargetPath -ItemType Directory -Force | Out-Null
            Copy-Item -Path (Join-Path $outputPath "*") -Destination $TargetPath -Recurse -Force
            Write-Host "Copied output to $TargetPath"
        }
    }
}

function Get-FhirJsonResources {
    param([string[]]$Directories)

    $resources = New-Object System.Collections.Generic.List[object]

    foreach ($dir in $Directories) {
        if (-not (Test-Path $dir)) {
            continue
        }

        $files = Get-ChildItem -Path $dir -Filter "*.json" -File
        foreach ($file in $files) {
            $jsonRaw = Get-Content -Path $file.FullName -Raw
            try {
                $resource = $jsonRaw | ConvertFrom-Json
            }
            catch {
                throw "Invalid JSON in $($file.FullName): $($_.Exception.Message)"
            }

            if (-not $resource.resourceType) {
                continue
            }

            if (-not $resource.id) {
                Write-Warning "Skipping $($file.FullName) because id is missing"
                continue
            }

            $resources.Add([pscustomobject]@{
                FilePath     = $file.FullName
                ResourceType = [string]$resource.resourceType
                Id           = [string]$resource.id
                Body         = $jsonRaw
                Url          = if ($resource.PSObject.Properties.Name -contains "url") { [string]$resource.url } else { $null }
            })
        }
    }

    return $resources
}

function Get-DeploymentOrder {
    param([object[]]$Resources)

    $priority = @{
        "CodeSystem"          = 10
        "ValueSet"            = 20
        "ConceptMap"          = 30
        "StructureDefinition" = 40
        "SearchParameter"     = 45
        "OperationDefinition" = 46
        "CompartmentDefinition" = 47
        "NamingSystem"        = 48
        "Patient"             = 70
        "Practitioner"        = 70
        "Organization"        = 70
        "Location"            = 70
        "Encounter"           = 75
        "Observation"         = 75
        "Condition"           = 75
        "Medication"          = 75
        "MedicationRequest"   = 75
        "ImplementationGuide" = 100
    }

    return $Resources |
        Sort-Object @{ Expression = { if ($priority.ContainsKey($_.ResourceType)) { $priority[$_.ResourceType] } else { 80 } } },
                    @{ Expression = { $_.ResourceType } },
                    @{ Expression = { $_.Id } }
}

function Get-AuthHeader {
    param(
        [string]$Token,
        [string]$User,
        [string]$Pass
    )

    if ($Token) {
        return "Bearer $Token"
    }

    if ($User -and $Pass) {
        $bytes = [System.Text.Encoding]::UTF8.GetBytes("$User`:$Pass")
        return "Basic " + [Convert]::ToBase64String($bytes)
    }

    return $null
}

function Deploy-HapiResources {
    param(
        [string]$Root,
        [string]$BaseUrl,
        [string]$Token,
        [string]$User,
        [string]$Pass,
        [switch]$IsDryRun
    )

    Write-Step "Collecting FHIR resources"
    $resourceDirs = @(
        (Join-Path $Root "fsh-generated\resources"),
        (Join-Path $Root "input\resources")
    )

    $resources = Get-FhirJsonResources -Directories $resourceDirs
    if (-not $resources -or $resources.Count -eq 0) {
        throw "No JSON FHIR resources found in expected directories."
    }

    $ordered = Get-DeploymentOrder -Resources $resources
    $authHeader = Get-AuthHeader -Token $Token -User $User -Pass $Pass

    $headers = @{
        "Accept"       = "application/fhir+json"
        "Content-Type" = "application/fhir+json"
    }
    if ($authHeader) {
        $headers["Authorization"] = $authHeader
    }

    Write-Step "Deploying resources to HAPI via PUT"

    if ($IsDryRun) {
        foreach ($res in $ordered) {
            Write-Host "[DryRun] PUT $BaseUrl/$($res.ResourceType)/$($res.Id)   <=  $($res.FilePath)"
        }
        return
    }

    # The priority table in Get-DeploymentOrder groups resources into coarse
    # tiers (terminology, profiles, instances, IG), but within a tier the
    # alphabetical fallback sort does not account for cross-references
    # between example instances (e.g. Location sorts before Organization
    # but may reference it). Retry failures across multiple rounds so any
    # resource ordering within a tier resolves itself instead of requiring
    # the caller to pre-sort by reference graph.
    $pending = New-Object System.Collections.Generic.List[object]
    $pending.AddRange($ordered)
    $successCount = 0
    $maxRounds = 6
    $lastErrors = @{}

    for ($round = 1; $round -le $maxRounds -and $pending.Count -gt 0; $round++) {
        $stillPending = New-Object System.Collections.Generic.List[object]
        $progress = $false

        foreach ($res in $pending) {
            $endpoint = "$BaseUrl/$($res.ResourceType)/$($res.Id)"
            try {
                Invoke-RestMethod -Uri $endpoint -Method Put -Headers $headers -Body $res.Body -TimeoutSec 120 | Out-Null
                $successCount++
                $progress = $true
                Write-Host "PUT OK: $($res.ResourceType)/$($res.Id)"
            }
            catch {
                $lastErrors[$endpoint] = $_.Exception.Message
                $stillPending.Add($res)
            }
        }

        $pending = $stillPending
        if ($pending.Count -gt 0 -and -not $progress) {
            break
        }
    }

    if ($pending.Count -gt 0) {
        Write-Host "`nFailed to deploy $($pending.Count) resource(s) after $maxRounds rounds:"
        foreach ($res in $pending) {
            $endpoint = "$BaseUrl/$($res.ResourceType)/$($res.Id)"
            Write-Host "  $($res.ResourceType)/$($res.Id) ($($res.FilePath)): $($lastErrors[$endpoint])"
        }
        throw "Deployment incomplete: $($pending.Count) resource(s) could not be deployed. See above for details."
    }

    Write-Host "Deployed $successCount resources to $BaseUrl"
}

Write-Step "Starting ZM-Core deployment"
Write-Host "RepoRoot: $RepoRoot"
Write-Host "HapiBaseUrl: $HapiBaseUrl"
Write-Host "DryRun: $DryRun"

if ($Build) {
    Invoke-RepoBuild -Root $RepoRoot -SkipUpdate:$SkipPublisherUpdate -ForceOffline:$Offline
    Repair-LanguageAssets -Root $RepoRoot
}

if ($DeployStatic) {
    Deploy-StaticSite -Root $RepoRoot -TargetPath $StaticTargetPath -Zip:$CreateStaticZip -ZipPath $StaticZipPath -IsDryRun:$DryRun
}

if ($DeployHapi) {
    Deploy-HapiResources -Root $RepoRoot -BaseUrl $HapiBaseUrl -Token $BearerToken -User $Username -Pass $Password -IsDryRun:$DryRun
}

Write-Step "Deployment flow completed"
