# Zambia Communication Channel Value Set - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Channel Value Set**

## ValueSet: Zambia Communication Channel Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-channel-vs | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationChannelVS |

 
Approved preferred and fallback delivery channels for hub communications. 

 **References** 

* [Communication Fallback Channel](StructureDefinition-zm-communication-fallback-channel.md)
* [Consent Communication Channel](StructureDefinition-zm-consent-communication-channel.md)
* [ZM-Core Communication Profile](StructureDefinition-zm-core-communication.md)
* [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "zm-communication-channel-vs",
  "url" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-channel-vs",
  "version" : "0.1.0",
  "name" : "ZMCommunicationChannelVS",
  "title" : "Zambia Communication Channel Value Set",
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
  "description" : "Approved preferred and fallback delivery channels for hub communications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-channel"
    }]
  }
}

```
