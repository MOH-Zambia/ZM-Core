# ZM-Core Healthcare Service Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Healthcare Service Profile**

## Resource Profile: ZM-Core Healthcare Service Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-healthcare-service | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreHealthcareService |

 
A service directory entry used to resolve facilities, responsible teams, service coverage, and communication contacts. 

**Usages:**

* Refer to this Profile: [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md), [ZM-Core Practitioner Role Profile](StructureDefinition-zm-core-practitioner-role.md) and [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md)
* Examples for this Profile: [DHIS2 Reporting Service](HealthcareService-ExampleZMCoreHealthcareService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-healthcare-service.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-healthcare-service.csv), [Excel](../StructureDefinition-zm-core-healthcare-service.xlsx), [Schematron](../StructureDefinition-zm-core-healthcare-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-healthcare-service",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-healthcare-service",
  "version" : "0.1.0",
  "name" : "ZMCoreHealthcareService",
  "title" : "ZM-Core Healthcare Service Profile",
  "status" : "active",
  "date" : "2026-08-13T13:25:03+00:00",
  "publisher" : "Ministry of Health - Zambia",
  "contact" : [{
    "name" : "Ministry of Health - Zambia",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.moh.gov.zm/"
    },
    {
      "system" : "email",
      "value" : "digital.health@moh.gov.zm"
    }]
  },
  {
    "name" : "ZM-Core Team",
    "telecom" : [{
      "system" : "email",
      "value" : "zm-core@moh.gov.zm",
      "use" : "work"
    }]
  }],
  "description" : "A service directory entry used to resolve facilities, responsible teams, service coverage, and communication contacts.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.active",
      "path" : "HealthcareService.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.offeredIn",
      "path" : "HealthcareService.offeredIn",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.specialty",
      "path" : "HealthcareService.specialty",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.name",
      "path" : "HealthcareService.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.contact",
      "path" : "HealthcareService.contact",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.coverageArea",
      "path" : "HealthcareService.coverageArea",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.program",
      "path" : "HealthcareService.program",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.characteristic",
      "path" : "HealthcareService.characteristic",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.communication",
      "path" : "HealthcareService.communication",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.availability",
      "path" : "HealthcareService.availability",
      "mustSupport" : true
    },
    {
      "id" : "HealthcareService.endpoint",
      "path" : "HealthcareService.endpoint",
      "mustSupport" : true
    }]
  }
}

```
