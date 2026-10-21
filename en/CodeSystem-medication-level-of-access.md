# Zambia Level of Access for Medicines - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Level of Access for Medicines**

## CodeSystem: Zambia Level of Access for Medicines 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/medication-level-of-access | *Version*:0.2.0 |
| Draft as of 2026-10-21 | *Computable Name*:ZMLevelOfAccessCS |

 
Levels of care at which a medicine is allowed to be used, based on the ZAMMSA catalogue. 

This Code system is referenced in the definition of the following value sets:

* [ZMLevelOfAccessVS](ValueSet-medication-level-of-access.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-level-of-access",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-level-of-access",
  "version" : "0.2.0",
  "name" : "ZMLevelOfAccessCS",
  "title" : "Zambia Level of Access for Medicines",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-21T04:21:07+00:00",
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
  "description" : "Levels of care at which a medicine is allowed to be used, based on the ZAMMSA catalogue.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "HP",
    "display" : "Health Post"
  },
  {
    "code" : "HC",
    "display" : "Health Centre"
  },
  {
    "code" : "L1",
    "display" : "Level 1 Hospital"
  },
  {
    "code" : "L2",
    "display" : "Level 2 Hospital"
  },
  {
    "code" : "L3",
    "display" : "Level 3 Hospital"
  }]
}

```
