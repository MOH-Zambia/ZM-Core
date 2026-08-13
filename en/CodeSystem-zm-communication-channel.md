# Zambia Communication Channel - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Channel**

## CodeSystem: Zambia Communication Channel 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-channel | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationChannelCS |

 
Delivery channels supported by the Zambia Unified Health Communication Hub. 

This Code system is referenced in the definition of the following value sets:

* [ZMCommunicationChannelVS](ValueSet-zm-communication-channel-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zm-communication-channel",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-channel",
  "version" : "0.1.0",
  "name" : "ZMCommunicationChannelCS",
  "title" : "Zambia Communication Channel",
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
  "description" : "Delivery channels supported by the Zambia Unified Health Communication Hub.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "sms",
    "display" : "SMS"
  },
  {
    "code" : "email",
    "display" : "Email"
  },
  {
    "code" : "teams",
    "display" : "Microsoft Teams"
  },
  {
    "code" : "whatsapp",
    "display" : "WhatsApp"
  },
  {
    "code" : "portal",
    "display" : "Authenticated portal"
  },
  {
    "code" : "push",
    "display" : "Mobile push notification"
  },
  {
    "code" : "ivr",
    "display" : "Interactive voice response"
  }]
}

```
