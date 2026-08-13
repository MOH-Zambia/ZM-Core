# Zambia Communication Consent Action - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Consent Action**

## CodeSystem: Zambia Communication Consent Action 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-consent-action | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationConsentActionCS |

 
Consent actions governing contact by the Unified Health Communication Hub. 

This Code system is referenced in the definition of the following value sets:

* [ZMCommunicationConsentActionVS](ValueSet-zm-communication-consent-action-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zm-communication-consent-action",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-consent-action",
  "version" : "0.1.0",
  "name" : "ZMCommunicationConsentActionCS",
  "title" : "Zambia Communication Consent Action",
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
  "description" : "Consent actions governing contact by the Unified Health Communication Hub.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "contact",
    "display" : "Contact individual"
  },
  {
    "code" : "send-notification",
    "display" : "Send notification"
  },
  {
    "code" : "send-sensitive-content",
    "display" : "Send sensitive content through an authenticated channel"
  }]
}

```
