# Zambia Communication Consent Action Value Set - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Consent Action Value Set**

## ValueSet: Zambia Communication Consent Action Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-consent-action-vs | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationConsentActionVS |

 
Permitted contact actions represented in a communication consent. 

 **References** 

* [ZM-Core Communication Consent Profile](StructureDefinition-zm-core-communication-consent.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "zm-communication-consent-action-vs",
  "url" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-consent-action-vs",
  "version" : "0.1.0",
  "name" : "ZMCommunicationConsentActionVS",
  "title" : "Zambia Communication Consent Action Value Set",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Permitted contact actions represented in a communication consent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-consent-action"
    }]
  }
}

```
