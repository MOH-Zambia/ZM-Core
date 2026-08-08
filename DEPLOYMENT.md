# ZM-Core Deployment

This repository now includes an automation script for deploying both:
1. The static IG site generated in `output/`
2. The FHIR resources (ImplementationGuide, StructureDefinitions, ValueSets, CodeSystems, examples) to a HAPI server

## Script

Use `scripts/deploy-ig.ps1`.

## Prerequisites

- Windows PowerShell 5.1+ or PowerShell 7+
- Java 11+ available in PATH
- Network access to terminology/template services (unless running offline build mode)
- Access to target static host path and HAPI endpoint

## Recommended first run (dry run)

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-ig.ps1 -Build -DeployStatic -DeployHapi -CreateStaticZip -DryRun
```

## Full deployment to hapi.moh.gov.zm

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-ig.ps1 `
  -Build `
  -DeployStatic `
  -DeployHapi `
  -CreateStaticZip `
  -HapiBaseUrl "http://hapi.moh.gov.zm/fhir" `
  -BearerToken "<YOUR_TOKEN>" `
  -StaticTargetPath "\\your-web-host\wwwroot\zm-core"
```

## What the script does

- Optionally updates publisher.jar using `_updatePublisher.bat /f`
- Builds the IG by invoking publisher.jar directly (non-interactive)
- Optionally creates `deploy/static-site.zip` from `output/`
- Optionally copies static output to a target folder/UNC share
- Uploads FHIR resources to HAPI using HTTP PUT at:
  - `{HapiBaseUrl}/{resourceType}/{id}`

## Important options

- `-SkipPublisherUpdate`: skip `_updatePublisher.bat /f`
- `-Offline`: build with `-tx n/a`
- `-BearerToken`: use bearer auth for HAPI writes
- `-Username` and `-Password`: use basic auth instead of bearer token
- `-DryRun`: print actions without executing writes/copies

## Notes

- Deployment order is dependency-aware (CodeSystem/ValueSet before StructureDefinition, ImplementationGuide last).
- If a resource cannot be written, the script stops and prints the failing endpoint and source file.
- `input/resources` and `fsh-generated/resources` are both included for HAPI deployment.
