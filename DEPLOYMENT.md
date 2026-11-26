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

The national HAPI server enforces SMART v2 system scopes (since 2026-11-26), so
writes need a token that carries them. Use the Keycloak client
`zm-core-ig-publisher` (MOH realm; client credentials). Its default scopes are
`system/CodeSystem.cu`, `system/ValueSet.cu`, `system/StructureDefinition.cu`
and `system/ImplementationGuide.cu`. Copy its secret from the Keycloak admin
console (Clients › zm-core-ig-publisher › Credentials). The script fetches the
token itself and asks for the secret if `-ClientSecret` is left out:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-ig.ps1 `
  -RepoRoot (Get-Location).Path `
  -Build `
  -DeployStatic `
  -DeployHapi `
  -CreateStaticZip `
  -HapiBaseUrl "http://hapi.moh.gov.zm/fhir" `
  -ClientId "zm-core-ig-publisher" `
  -StaticTargetPath "\\your-web-host\wwwroot\zm-core"
```

`-RepoRoot` is needed on Windows PowerShell 5.1, which does not set
`$PSScriptRoot` while it reads the parameter defaults.

Only the IG's **definitional** resources are sent: CodeSystem, ValueSet,
ConceptMap, StructureDefinition, SearchParameter, OperationDefinition,
CompartmentDefinition, NamingSystem and ImplementationGuide. The
ImplementationGuide's entries for examples are removed. Example instances
(Patient, Organization, Location, Subscription …) would read as real records
on a production server, and an active Subscription would start sending
notifications. `-IncludeExamples` sends them, for a test server only. The
publisher client cannot write them on the national server anyway.

`-BearerToken` (or `-Username`/`-Password`) still work for servers that do not
use Keycloak.

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
- `-ClientId` / `-ClientSecret` / `-TokenUrl`: get a client-credentials token from Keycloak (default token URL: the MOH realm on sso.moh.gov.zm)
- `-IncludeExamples`: also send the IG's example instances (test servers only)
- `-DryRun`: print actions without executing writes/copies

## Notes

- Deployment order is dependency-aware (CodeSystem/ValueSet before StructureDefinition, ImplementationGuide last).
- If a resource cannot be written, the script stops and prints the failing endpoint and source file.
- `input/resources` and `fsh-generated/resources` are both included for HAPI deployment.
