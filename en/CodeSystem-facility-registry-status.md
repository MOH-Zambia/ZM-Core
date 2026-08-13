# Zambia Master Facility List Registry Status - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Master Facility List Registry Status**

## CodeSystem: Zambia Master Facility List Registry Status 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/facility-registry-status | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreFacilityRegistryStatusCS |

 
Combined operational, licensing, registration, and record-quality states represented by the current Zambia Master Facility List operation-status field. 

This Code system is referenced in the definition of the following value sets:

* [ZMCoreFacilityRegistryStatusVS](ValueSet-facility-registry-status.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "facility-registry-status",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-registry-status",
  "version" : "0.1.0",
  "name" : "ZMCoreFacilityRegistryStatusCS",
  "title" : "Zambia Master Facility List Registry Status",
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
  "description" : "Combined operational, licensing, registration, and record-quality states represented by the current Zambia Master Facility List operation-status field.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "operational",
    "display" : "Operational",
    "definition" : "A facility that is open and serving patients."
  },
  {
    "code" : "licensed",
    "display" : "Licensed",
    "definition" : "Approved and licensed but not yet operational."
  },
  {
    "code" : "pending-licensing",
    "display" : "Pending Licensing",
    "definition" : "Recommended by the district health management team and awaiting a licence."
  },
  {
    "code" : "licence-suspended",
    "display" : "License Suspended",
    "definition" : "The facility licence has been temporarily suspended."
  },
  {
    "code" : "licence-cancelled",
    "display" : "License Cancelled",
    "definition" : "The facility licence has been permanently cancelled."
  },
  {
    "code" : "pending-registration",
    "display" : "Pending Registration",
    "definition" : "Approved locally and awaiting official registration."
  },
  {
    "code" : "registered",
    "display" : "Registered",
    "definition" : "Approved as an institution and assigned a registration number."
  },
  {
    "code" : "closed",
    "display" : "Closed",
    "definition" : "A licensed facility that has permanently closed."
  },
  {
    "code" : "invalid",
    "display" : "Invalid",
    "definition" : "Registry attributes differ from the attributes on the facility licence."
  },
  {
    "code" : "does-not-exist",
    "display" : "Does not exist",
    "definition" : "A licensed record verified not to correspond to a physical facility."
  },
  {
    "code" : "duplicate",
    "display" : "Duplicate",
    "definition" : "A registry record identified as a duplicate of another facility."
  },
  {
    "code" : "under-construction",
    "display" : "Under Construction"
  }]
}

```
