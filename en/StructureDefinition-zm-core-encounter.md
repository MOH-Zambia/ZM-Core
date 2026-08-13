# ZM-Core Encounter Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Encounter Profile**

## Resource Profile: ZM-Core Encounter Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreEncounter |

 
Zambia health encounter profile 

**Usages:**

* Refer to this Profile: [ZM-Core Adverse Event Profile](StructureDefinition-zm-core-adverse-event.md), [ZM-Core Allergy Intolerance Profile](StructureDefinition-zm-core-allergy-intolerance.md), [ZM-Core Care Plan Profile](StructureDefinition-zm-core-care-plan.md), [ZM-Core Condition Profile](StructureDefinition-zm-core-condition.md)... Show 7 more, [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Immunization Profile](StructureDefinition-zm-core-immunization.md), [ZM-Core Medication Dispense Profile](StructureDefinition-zm-core-medication-dispense.md), [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md), [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md), [ZM-Core Procedure Profile](StructureDefinition-zm-core-procedure.md) and [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md)
* Examples for this Profile: [Encounter/ExampleZMCoreEncounter](Encounter-ExampleZMCoreEncounter.md) and [Encounter/zm-core-encounter-example-json](Encounter-zm-core-encounter-example-json.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-encounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-encounter.csv), [Excel](../StructureDefinition-zm-core-encounter.xlsx), [Schematron](../StructureDefinition-zm-core-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-encounter",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter",
  "version" : "0.1.0",
  "name" : "ZMCoreEncounter",
  "title" : "ZM-Core Encounter Profile",
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
  "description" : "Zambia health encounter profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.actor",
      "path" : "Encounter.participant.actor",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.actualPeriod.start",
      "path" : "Encounter.actualPeriod.start",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.actualPeriod.end",
      "path" : "Encounter.actualPeriod.end",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reason",
      "path" : "Encounter.reason",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis",
      "path" : "Encounter.diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.admission",
      "path" : "Encounter.admission",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
      }]
    }]
  }
}

```
