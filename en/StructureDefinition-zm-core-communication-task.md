# ZM-Core Communication Task Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Task Profile**

## Resource Profile: ZM-Core Communication Task Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-task | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunicationTask |

 
An acknowledgement, required action, recipient-resolution, or escalation task linked to a hub communication workflow. 

**Usages:**

* Refer to this Profile: [ZM-Core Communication Audit Event Profile](StructureDefinition-zm-core-communication-audit-event.md) and [ZM-Core Communication Provenance Profile](StructureDefinition-zm-core-communication-provenance.md)
* Examples for this Profile: [Task/ExampleZMCoreCommunicationTask](Task-ExampleZMCoreCommunicationTask.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication-task.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication-task.csv), [Excel](../StructureDefinition-zm-core-communication-task.xlsx), [Schematron](../StructureDefinition-zm-core-communication-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication-task",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-task",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunicationTask",
  "title" : "ZM-Core Communication Task Profile",
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
  "description" : "An acknowledgement, required action, recipient-resolution, or escalation task linked to a hub communication workflow.",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task"
    },
    {
      "id" : "Task.extension",
      "path" : "Task.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Task.extension:dataClassification",
      "path" : "Task.extension",
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
      "id" : "Task.identifier",
      "path" : "Task.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.basedOn",
      "path" : "Task.basedOn",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "mustSupport" : true
    },
    {
      "id" : "Task.statusReason",
      "path" : "Task.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "mustSupport" : true
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "mustSupport" : true
    },
    {
      "id" : "Task.priority",
      "path" : "Task.priority",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-task-code-vs"
      }
    },
    {
      "id" : "Task.description",
      "path" : "Task.description",
      "mustSupport" : true
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "mustSupport" : true
    },
    {
      "id" : "Task.requestedPeriod",
      "path" : "Task.requestedPeriod",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.lastModified",
      "path" : "Task.lastModified",
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.requestedPerformer",
      "path" : "Task.requestedPerformer",
      "mustSupport" : true
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "mustSupport" : true
    },
    {
      "id" : "Task.performer",
      "path" : "Task.performer",
      "mustSupport" : true
    },
    {
      "id" : "Task.location",
      "path" : "Task.location",
      "mustSupport" : true
    },
    {
      "id" : "Task.reason",
      "path" : "Task.reason",
      "mustSupport" : true
    },
    {
      "id" : "Task.note",
      "path" : "Task.note",
      "mustSupport" : true
    },
    {
      "id" : "Task.relevantHistory",
      "path" : "Task.relevantHistory",
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction",
      "path" : "Task.restriction",
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction.recipient",
      "path" : "Task.restriction.recipient",
      "mustSupport" : true
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "mustSupport" : true
    }]
  }
}

```
