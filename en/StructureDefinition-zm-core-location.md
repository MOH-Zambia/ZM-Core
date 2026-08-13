# ZM-Core Location Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Location Profile**

## Resource Profile: ZM-Core Location Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreLocation |

 
A physical or administrative place from the Zambia Health Facility Registry used in facility and reporting-hierarchy routing. 

**Usages:**

* Refer to this Profile: [ZM-Core Adverse Event Profile](StructureDefinition-zm-core-adverse-event.md), [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Encounter Profile](StructureDefinition-zm-core-encounter.md), [ZM-Core Healthcare Service Profile](StructureDefinition-zm-core-healthcare-service.md)... Show 8 more, [ZM-Core Immunization Profile](StructureDefinition-zm-core-immunization.md), [ZM-Core Location Profile](StructureDefinition-zm-core-location.md), [ZM-Core Medication Dispense Profile](StructureDefinition-zm-core-medication-dispense.md), [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md), [ZM-Core Practitioner Role Profile](StructureDefinition-zm-core-practitioner-role.md), [ZM-Core Procedure Profile](StructureDefinition-zm-core-procedure.md), [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md) and [ZM-Core Specimen Profile](StructureDefinition-zm-core-specimen.md)
* Examples for this Profile: [University Teaching Hospital](Location-ExampleZMCoreLocation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-location.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-location.csv), [Excel](../StructureDefinition-zm-core-location.xlsx), [Schematron](../StructureDefinition-zm-core-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-location",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location",
  "version" : "0.1.0",
  "name" : "ZMCoreLocation",
  "title" : "ZM-Core Location Profile",
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
  "description" : "A physical or administrative place from the Zambia Health Facility Registry used in facility and reporting-hierarchy routing.",
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
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.alias",
      "path" : "Location.alias",
      "mustSupport" : true
    },
    {
      "id" : "Location.description",
      "path" : "Location.description",
      "mustSupport" : true
    },
    {
      "id" : "Location.mode",
      "path" : "Location.mode",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.contact",
      "path" : "Location.contact",
      "mustSupport" : true
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.form",
      "path" : "Location.form",
      "mustSupport" : true
    },
    {
      "id" : "Location.position",
      "path" : "Location.position",
      "mustSupport" : true
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.characteristic",
      "path" : "Location.characteristic",
      "mustSupport" : true
    },
    {
      "id" : "Location.hoursOfOperation",
      "path" : "Location.hoursOfOperation",
      "mustSupport" : true
    },
    {
      "id" : "Location.endpoint",
      "path" : "Location.endpoint",
      "mustSupport" : true
    }]
  }
}

```
