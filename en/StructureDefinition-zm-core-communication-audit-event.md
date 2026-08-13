# ZM-Core Communication Audit Event Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Audit Event Profile**

## Resource Profile: ZM-Core Communication Audit Event Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-audit-event | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunicationAuditEvent |

 
Security and access audit trail for creation, routing, access, delivery, acknowledgement, or escalation of a hub communication. 

**Usages:**

* Examples for this Profile: [AuditEvent/ExampleZMCoreCommunicationAuditEvent](AuditEvent-ExampleZMCoreCommunicationAuditEvent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication-audit-event.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication-audit-event.csv), [Excel](../StructureDefinition-zm-core-communication-audit-event.xlsx), [Schematron](../StructureDefinition-zm-core-communication-audit-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication-audit-event",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-audit-event",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunicationAuditEvent",
  "title" : "ZM-Core Communication Audit Event Profile",
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
  "description" : "Security and access audit trail for creation, routing, access, delivery, acknowledgement, or escalation of a hub communication.",
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
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirprovenance",
    "uri" : "http://hl7.org/fhir/provenance",
    "name" : "FHIR Provenance Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.category",
      "path" : "AuditEvent.category",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.code",
      "path" : "AuditEvent.code",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.action",
      "path" : "AuditEvent.action",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.severity",
      "path" : "AuditEvent.severity",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.occurred[x]",
      "path" : "AuditEvent.occurred[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.recorded",
      "path" : "AuditEvent.recorded",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcome",
      "path" : "AuditEvent.outcome",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.authorization",
      "path" : "AuditEvent.authorization",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.basedOn",
      "path" : "AuditEvent.basedOn",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.patient",
      "path" : "AuditEvent.patient",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.encounter",
      "path" : "AuditEvent.encounter",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.type",
      "path" : "AuditEvent.agent.type",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.role",
      "path" : "AuditEvent.agent.role",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.who",
      "path" : "AuditEvent.agent.who",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.requestor",
      "path" : "AuditEvent.agent.requestor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.location",
      "path" : "AuditEvent.agent.location",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.policy",
      "path" : "AuditEvent.agent.policy",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.network[x]",
      "path" : "AuditEvent.agent.network[x]",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source",
      "path" : "AuditEvent.source",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.site",
      "path" : "AuditEvent.source.site",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer",
      "path" : "AuditEvent.source.observer",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.type",
      "path" : "AuditEvent.source.type",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.what",
      "path" : "AuditEvent.entity.what",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-task",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-consent"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.role",
      "path" : "AuditEvent.entity.role",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.securityLabel",
      "path" : "AuditEvent.entity.securityLabel",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.detail",
      "path" : "AuditEvent.entity.detail",
      "mustSupport" : true
    }]
  }
}

```
