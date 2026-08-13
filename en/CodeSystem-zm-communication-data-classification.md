# Zambia Communication Data Classification - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Data Classification**

## CodeSystem: Zambia Communication Data Classification 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-data-classification | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationDataClassificationCS |

 
Data classifications that drive disclosure and channel controls for health communications. 

This Code system is referenced in the definition of the following value sets:

* [ZMCommunicationDataClassificationVS](ValueSet-zm-communication-data-classification-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zm-communication-data-classification",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-data-classification",
  "version" : "0.1.0",
  "name" : "ZMCommunicationDataClassificationCS",
  "title" : "Zambia Communication Data Classification",
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
  "description" : "Data classifications that drive disclosure and channel controls for health communications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "public",
    "display" : "Public",
    "definition" : "Information approved for public disclosure."
  },
  {
    "code" : "internal",
    "display" : "Internal",
    "definition" : "Ministry operational information not intended for public disclosure."
  },
  {
    "code" : "confidential",
    "display" : "Confidential",
    "definition" : "Personal, workforce, or business information requiring controlled disclosure."
  },
  {
    "code" : "restricted-health",
    "display" : "Restricted health information",
    "definition" : "Sensitive clinical or public-health information that must be accessed through an authenticated channel."
  }]
}

```
