# ZM-Core Communication Subscription Topic Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Subscription Topic Profile**

## Resource Profile: ZM-Core Communication Subscription Topic Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-subscription-topic | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunicationSubscriptionTopic |

 
A governed R5 subscription topic that describes which communication events may activate hub workflows and what may be filtered or returned. 

**Usages:**

* Examples for this Profile: [ZMCommunicationRequestActiveTopic](SubscriptionTopic-ZMCommunicationRequestActiveTopic.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication-subscription-topic.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication-subscription-topic.csv), [Excel](../StructureDefinition-zm-core-communication-subscription-topic.xlsx), [Schematron](../StructureDefinition-zm-core-communication-subscription-topic.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication-subscription-topic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-implements",
    "valueUri" : "http://hl7.org/fhir/StructureDefinition/CanonicalResource"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-subscription-topic",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunicationSubscriptionTopic",
  "title" : "ZM-Core Communication Subscription Topic Profile",
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
  "description" : "A governed R5 subscription topic that describes which communication events may activate hub workflows and what may be filtered or returned.",
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
  "type" : "SubscriptionTopic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SubscriptionTopic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "SubscriptionTopic",
      "path" : "SubscriptionTopic"
    },
    {
      "id" : "SubscriptionTopic.url",
      "path" : "SubscriptionTopic.url",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.version",
      "path" : "SubscriptionTopic.version",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.name",
      "path" : "SubscriptionTopic.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.title",
      "path" : "SubscriptionTopic.title",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.status",
      "path" : "SubscriptionTopic.status",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.experimental",
      "path" : "SubscriptionTopic.experimental",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.date",
      "path" : "SubscriptionTopic.date",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.publisher",
      "path" : "SubscriptionTopic.publisher",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.description",
      "path" : "SubscriptionTopic.description",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.jurisdiction",
      "path" : "SubscriptionTopic.jurisdiction",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.purpose",
      "path" : "SubscriptionTopic.purpose",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.resourceTrigger",
      "path" : "SubscriptionTopic.resourceTrigger",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.resourceTrigger.resource",
      "path" : "SubscriptionTopic.resourceTrigger.resource",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.resourceTrigger.supportedInteraction",
      "path" : "SubscriptionTopic.resourceTrigger.supportedInteraction",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.resourceTrigger.queryCriteria",
      "path" : "SubscriptionTopic.resourceTrigger.queryCriteria",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.resourceTrigger.fhirPathCriteria",
      "path" : "SubscriptionTopic.resourceTrigger.fhirPathCriteria",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.canFilterBy",
      "path" : "SubscriptionTopic.canFilterBy",
      "mustSupport" : true
    },
    {
      "id" : "SubscriptionTopic.notificationShape",
      "path" : "SubscriptionTopic.notificationShape",
      "mustSupport" : true
    }]
  }
}

```
