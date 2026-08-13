# ZM-Core Communication Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Profile**

## Resource Profile: ZM-Core Communication Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunication |

 
The immutable delivery or receipt record produced for a communication request, including channel and delivery outcome. 

**Usages:**

* Refer to this Profile: [ZM-Core Communication Audit Event Profile](StructureDefinition-zm-core-communication-audit-event.md), [ZM-Core Communication Provenance Profile](StructureDefinition-zm-core-communication-provenance.md) and [ZM-Core Communication Task Profile](StructureDefinition-zm-core-communication-task.md)
* Examples for this Profile: [Communication/ExampleZMCoreCommunication](Communication-ExampleZMCoreCommunication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication.csv), [Excel](../StructureDefinition-zm-core-communication.xlsx), [Schematron](../StructureDefinition-zm-core-communication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunication",
  "title" : "ZM-Core Communication Profile",
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
  "description" : "The immutable delivery or receipt record produced for a communication request, including channel and delivery outcome.",
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
  "type" : "Communication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Communication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.extension",
      "path" : "Communication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "Communication.extension:dataClassification",
      "path" : "Communication.extension",
      "sliceName" : "dataClassification",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.extension:approvedTemplate",
      "path" : "Communication.extension",
      "sliceName" : "approvedTemplate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-template"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.extension:messageLanguage",
      "path" : "Communication.extension",
      "sliceName" : "messageLanguage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-message-language"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.identifier",
      "path" : "Communication.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.identifier.system",
      "path" : "Communication.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.identifier.value",
      "path" : "Communication.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.basedOn",
      "path" : "Communication.basedOn",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.inResponseTo",
      "path" : "Communication.inResponseTo",
      "mustSupport" : true
    },
    {
      "id" : "Communication.status",
      "path" : "Communication.status",
      "mustSupport" : true
    },
    {
      "id" : "Communication.statusReason",
      "path" : "Communication.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Communication.category",
      "path" : "Communication.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-lane-vs"
      }
    },
    {
      "id" : "Communication.priority",
      "path" : "Communication.priority",
      "mustSupport" : true
    },
    {
      "id" : "Communication.medium",
      "path" : "Communication.medium",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-channel-vs"
      }
    },
    {
      "id" : "Communication.subject",
      "path" : "Communication.subject",
      "mustSupport" : true
    },
    {
      "id" : "Communication.topic",
      "path" : "Communication.topic",
      "mustSupport" : true
    },
    {
      "id" : "Communication.about",
      "path" : "Communication.about",
      "mustSupport" : true
    },
    {
      "id" : "Communication.sent",
      "path" : "Communication.sent",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.received",
      "path" : "Communication.received",
      "mustSupport" : true
    },
    {
      "id" : "Communication.recipient",
      "path" : "Communication.recipient",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.sender",
      "path" : "Communication.sender",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.reason",
      "path" : "Communication.reason",
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload",
      "path" : "Communication.payload",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload.content[x]",
      "path" : "Communication.payload.content[x]",
      "mustSupport" : true
    },
    {
      "id" : "Communication.note",
      "path" : "Communication.note",
      "mustSupport" : true
    }]
  }
}

```
