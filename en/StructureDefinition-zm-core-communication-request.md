# ZM-Core Communication Request Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Request Profile**

## Resource Profile: ZM-Core Communication Request Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunicationRequest |

 
A governed request from a Ministry health system to the Unified Health Communication Hub to route and deliver information. 

**Usages:**

* Refer to this Profile: [ZM-Core Communication Audit Event Profile](StructureDefinition-zm-core-communication-audit-event.md), [ZM-Core Communication Provenance Profile](StructureDefinition-zm-core-communication-provenance.md), [ZM-Core Communication Task Profile](StructureDefinition-zm-core-communication-task.md) and [ZM-Core Communication Profile](StructureDefinition-zm-core-communication.md)
* Examples for this Profile: [CommunicationRequest/ExampleZMCoreCommunicationRequest](CommunicationRequest-ExampleZMCoreCommunicationRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication-request.csv), [Excel](../StructureDefinition-zm-core-communication-request.xlsx), [Schematron](../StructureDefinition-zm-core-communication-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication-request",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunicationRequest",
  "title" : "ZM-Core Communication Request Profile",
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
  "description" : "A governed request from a Ministry health system to the Unified Health Communication Hub to route and deliver information.",
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
  "type" : "CommunicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CommunicationRequest",
      "path" : "CommunicationRequest"
    },
    {
      "id" : "CommunicationRequest.extension",
      "path" : "CommunicationRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 6
    },
    {
      "id" : "CommunicationRequest.extension:dataClassification",
      "path" : "CommunicationRequest.extension",
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
      "id" : "CommunicationRequest.extension:fallbackChannel",
      "path" : "CommunicationRequest.extension",
      "sliceName" : "fallbackChannel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-fallback-channel"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.extension:approvedTemplate",
      "path" : "CommunicationRequest.extension",
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
      "id" : "CommunicationRequest.extension:messageLanguage",
      "path" : "CommunicationRequest.extension",
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
      "id" : "CommunicationRequest.extension:acknowledgementRequired",
      "path" : "CommunicationRequest.extension",
      "sliceName" : "acknowledgementRequired",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-acknowledgement-required"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.extension:expiry",
      "path" : "CommunicationRequest.extension",
      "sliceName" : "expiry",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.extension:requestingSystem",
      "path" : "CommunicationRequest.extension",
      "sliceName" : "requestingSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-requesting-system"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.identifier",
      "path" : "CommunicationRequest.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.identifier.system",
      "path" : "CommunicationRequest.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.identifier.value",
      "path" : "CommunicationRequest.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.status",
      "path" : "CommunicationRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.statusReason",
      "path" : "CommunicationRequest.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.intent",
      "path" : "CommunicationRequest.intent",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.category",
      "path" : "CommunicationRequest.category",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-lane-vs"
      }
    },
    {
      "id" : "CommunicationRequest.priority",
      "path" : "CommunicationRequest.priority",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.medium",
      "path" : "CommunicationRequest.medium",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-channel-vs"
      }
    },
    {
      "id" : "CommunicationRequest.subject",
      "path" : "CommunicationRequest.subject",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.about",
      "path" : "CommunicationRequest.about",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.encounter",
      "path" : "CommunicationRequest.encounter",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.payload",
      "path" : "CommunicationRequest.payload",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.payload.content[x]",
      "path" : "CommunicationRequest.payload.content[x]",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.occurrence[x]",
      "path" : "CommunicationRequest.occurrence[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.authoredOn",
      "path" : "CommunicationRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.requester",
      "path" : "CommunicationRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.recipient",
      "path" : "CommunicationRequest.recipient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-healthcare-service",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.informationProvider",
      "path" : "CommunicationRequest.informationProvider",
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.reason",
      "path" : "CommunicationRequest.reason",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CommunicationRequest.note",
      "path" : "CommunicationRequest.note",
      "mustSupport" : true
    }]
  }
}

```
