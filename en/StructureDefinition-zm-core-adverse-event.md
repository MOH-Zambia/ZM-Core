# ZM-Core Adverse Event Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Adverse Event Profile**

## Resource Profile: ZM-Core Adverse Event Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-adverse-event | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreAdverseEvent |

 
Zambia adverse event profile, including adverse events following immunization. 

**Usages:**

* Examples for this Profile: [AdverseEvent/ExampleZMCoreAdverseEventFollowingImmunization](AdverseEvent-ExampleZMCoreAdverseEventFollowingImmunization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-adverse-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-adverse-event.csv), [Excel](../StructureDefinition-zm-core-adverse-event.xlsx), [Schematron](../StructureDefinition-zm-core-adverse-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-adverse-event",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-adverse-event",
  "version" : "0.1.0",
  "name" : "ZMCoreAdverseEvent",
  "title" : "ZM-Core Adverse Event Profile",
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
  "description" : "Zambia adverse event profile, including adverse events following immunization.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AdverseEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AdverseEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AdverseEvent",
      "path" : "AdverseEvent"
    },
    {
      "id" : "AdverseEvent.identifier",
      "path" : "AdverseEvent.identifier",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.status",
      "path" : "AdverseEvent.status",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.actuality",
      "path" : "AdverseEvent.actuality",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.category",
      "path" : "AdverseEvent.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.code",
      "path" : "AdverseEvent.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.subject",
      "path" : "AdverseEvent.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-related-person"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.encounter",
      "path" : "AdverseEvent.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.occurrence[x]",
      "path" : "AdverseEvent.occurrence[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.recordedDate",
      "path" : "AdverseEvent.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.resultingEffect",
      "path" : "AdverseEvent.resultingEffect",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.location",
      "path" : "AdverseEvent.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.seriousness",
      "path" : "AdverseEvent.seriousness",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.outcome",
      "path" : "AdverseEvent.outcome",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.recorder",
      "path" : "AdverseEvent.recorder",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity",
      "path" : "AdverseEvent.suspectEntity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.suspectEntity.instance[x]",
      "path" : "AdverseEvent.suspectEntity.instance[x]",
      "mustSupport" : true
    },
    {
      "id" : "AdverseEvent.note",
      "path" : "AdverseEvent.note",
      "mustSupport" : true
    }]
  }
}

```
