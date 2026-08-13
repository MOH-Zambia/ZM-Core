# ZM-Core Observation Category - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Observation Category**

## ValueSet: ZM-Core Observation Category 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ValueSet/zm-core-observation-category-vs | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreObservationCategoryVS |

 
Observation categories used in Zambian health systems 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "zm-core-observation-category-vs",
  "url" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-core-observation-category-vs",
  "version" : "0.1.0",
  "name" : "ZMCoreObservationCategoryVS",
  "title" : "ZM-Core Observation Category",
  "status" : "active",
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
  "description" : "Observation categories used in Zambian health systems",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category"
    }]
  }
}

```
