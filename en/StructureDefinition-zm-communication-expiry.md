# Communication Expiry - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Expiry**

## Extension: Communication Expiry 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCommunicationExpiry |

The instant after which the request must not be delivered and should be completed, revoked, or escalated according to policy.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md)
* Examples for this Extension: [CommunicationRequest/ExampleZMCoreCommunicationRequest](CommunicationRequest-ExampleZMCoreCommunicationRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-communication-expiry.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-communication-expiry.csv), [Excel](../StructureDefinition-zm-communication-expiry.xlsx), [Schematron](../StructureDefinition-zm-communication-expiry.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-communication-expiry",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry",
  "version" : "0.1.0",
  "name" : "ZMCommunicationExpiry",
  "title" : "Communication Expiry",
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
  "description" : "The instant after which the request must not be delivered and should be completed, revoked, or escalated according to policy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "CommunicationRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Communication Expiry",
      "definition" : "The instant after which the request must not be delivered and should be completed, revoked, or escalated according to policy."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "instant"
      }]
    }]
  }
}

```
