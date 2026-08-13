# Zambia Master Facility List Registry Status Value Set - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Master Facility List Registry Status Value Set**

## ValueSet: Zambia Master Facility List Registry Status Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ValueSet/facility-registry-status | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreFacilityRegistryStatusVS |

 
Registry status values permitted for a ZM-Core facility organization. 

 **References** 

* [ZM-Core Facility Registry Status](StructureDefinition-zm-core-facility-registry-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "facility-registry-status",
  "url" : "http://hapi.moh.gov.zm/fhir/ValueSet/facility-registry-status",
  "version" : "0.1.0",
  "name" : "ZMCoreFacilityRegistryStatusVS",
  "title" : "Zambia Master Facility List Registry Status Value Set",
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
  "description" : "Registry status values permitted for a ZM-Core facility organization.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-registry-status"
    }]
  }
}

```
