# Zambia Master Facility List Facility Type - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Master Facility List Facility Type**

## CodeSystem: Zambia Master Facility List Facility Type 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreFacilityTypeCS |

 
Facility types represented in the Zambia Master Facility List. Police, military, private, and NGO values are retained for source compatibility but overlap with facility ownership and should not be used when a more specific service level is known. 

This Code system is referenced in the definition of the following value sets:

* [ZMCoreFacilityTypeVS](ValueSet-facility-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "facility-type",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type",
  "version" : "0.1.0",
  "name" : "ZMCoreFacilityTypeCS",
  "title" : "Zambia Master Facility List Facility Type",
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
  "description" : "Facility types represented in the Zambia Master Facility List. Police, military, private, and NGO values are retained for source compatibility but overlap with facility ownership and should not be used when a more specific service level is known.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [{
    "code" : "health-post",
    "display" : "Health Post"
  },
  {
    "code" : "border-health-post",
    "display" : "Border Health Post"
  },
  {
    "code" : "rural-health-centre",
    "display" : "Rural Health Centre"
  },
  {
    "code" : "urban-health-centre",
    "display" : "Urban Health Centre"
  },
  {
    "code" : "zonal-health-centre",
    "display" : "Zonal Health Centre"
  },
  {
    "code" : "hospital-affiliated-health-centre",
    "display" : "Hospital Affiliated Health Centre"
  },
  {
    "code" : "hospital-level-1",
    "display" : "Hospital - Level 1"
  },
  {
    "code" : "hospital-level-2",
    "display" : "Hospital - Level 2"
  },
  {
    "code" : "hospital-level-3",
    "display" : "Hospital - Level 3"
  },
  {
    "code" : "police-facility",
    "display" : "Police"
  },
  {
    "code" : "military-facility",
    "display" : "Military"
  },
  {
    "code" : "private-facility",
    "display" : "Private"
  },
  {
    "code" : "ngo-facility",
    "display" : "NGO"
  }]
}

```
