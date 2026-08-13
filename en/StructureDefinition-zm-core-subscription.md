# ZM-Core Communication Subscription Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Subscription Profile**

## Resource Profile: ZM-Core Communication Subscription Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-subscription | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreSubscription |

 
A secure R5 Subscription that activates a communication workflow when a governed communication topic matches. 

**Usages:**

* Examples for this Profile: [DHIS2 Reporting Reminder Workflow](Subscription-ExampleZMCoreSubscription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-subscription.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-subscription.csv), [Excel](../StructureDefinition-zm-core-subscription.xlsx), [Schematron](../StructureDefinition-zm-core-subscription.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-subscription",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-subscription",
  "version" : "0.1.0",
  "name" : "ZMCoreSubscription",
  "title" : "ZM-Core Communication Subscription Profile",
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
  "description" : "A secure R5 Subscription that activates a communication workflow when a governed communication topic matches.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Subscription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Subscription",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Subscription",
      "path" : "Subscription"
    },
    {
      "id" : "Subscription.identifier",
      "path" : "Subscription.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Subscription.name",
      "path" : "Subscription.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Subscription.status",
      "path" : "Subscription.status",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.topic",
      "path" : "Subscription.topic",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.managingEntity",
      "path" : "Subscription.managingEntity",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Subscription.reason",
      "path" : "Subscription.reason",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Subscription.filterBy",
      "path" : "Subscription.filterBy",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.channelType",
      "path" : "Subscription.channelType",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.endpoint",
      "path" : "Subscription.endpoint",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Subscription.heartbeatPeriod",
      "path" : "Subscription.heartbeatPeriod",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.timeout",
      "path" : "Subscription.timeout",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.contentType",
      "path" : "Subscription.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Subscription.content",
      "path" : "Subscription.content",
      "min" : 1,
      "patternCode" : "id-only",
      "mustSupport" : true
    },
    {
      "id" : "Subscription.maxCount",
      "path" : "Subscription.maxCount",
      "mustSupport" : true
    }]
  }
}

```
