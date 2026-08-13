# Zambia Master Facility List Facility Ownership - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Master Facility List Facility Ownership**

## CodeSystem: Zambia Master Facility List Facility Ownership 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreFacilityOwnershipCS |

 
Facility ownership or controlling sector represented in the Zambia Master Facility List. 

This Code system is referenced in the definition of the following value sets:

* [ZMCoreFacilityOwnershipVS](ValueSet-facility-ownership.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "facility-ownership",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership",
  "version" : "0.1.0",
  "name" : "ZMCoreFacilityOwnershipCS",
  "title" : "Zambia Master Facility List Facility Ownership",
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
  "description" : "Facility ownership or controlling sector represented in the Zambia Master Facility List.",
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
    "code" : "grz",
    "display" : "Government of the Republic of Zambia"
  },
  {
    "code" : "private",
    "display" : "Private"
  },
  {
    "code" : "ngo",
    "display" : "Non-governmental organization"
  },
  {
    "code" : "police",
    "display" : "Police"
  },
  {
    "code" : "military",
    "display" : "Military"
  }]
}

```
