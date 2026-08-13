# ZM-Core Communication Provenance Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Provenance Profile**

## Resource Profile: ZM-Core Communication Provenance Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-provenance | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunicationProvenance |

 
Record of who initiated or changed a communication workflow resource, when, and on whose behalf. 

**Usages:**

* Examples for this Profile: [Provenance/ExampleZMCoreCommunicationProvenance](Provenance-ExampleZMCoreCommunicationProvenance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication-provenance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication-provenance.csv), [Excel](../StructureDefinition-zm-core-communication-provenance.xlsx), [Schematron](../StructureDefinition-zm-core-communication-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication-provenance",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-provenance",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunicationProvenance",
  "title" : "ZM-Core Communication Provenance Profile",
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
  "description" : "Record of who initiated or changed a communication workflow resource, when, and on whose behalf.",
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
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
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
      "id" : "Provenance.occurred[x]",
      "path" : "Provenance.occurred[x]",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.policy",
      "path" : "Provenance.policy",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.location",
      "path" : "Provenance.location",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.authorization",
      "path" : "Provenance.authorization",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.activity",
      "path" : "Provenance.activity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.basedOn",
      "path" : "Provenance.basedOn",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.patient",
      "path" : "Provenance.patient",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.encounter",
      "path" : "Provenance.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.type",
      "path" : "Provenance.agent.type",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.role",
      "path" : "Provenance.agent.role",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.entity",
      "path" : "Provenance.entity",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.signature",
      "path" : "Provenance.signature",
      "mustSupport" : true
    }]
  }
}

```
