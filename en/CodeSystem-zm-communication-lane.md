# Zambia Communication Lane - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Lane**

## CodeSystem: Zambia Communication Lane 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-lane | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationLaneCS |

 
Governance lanes used to separate communication purposes, access rules, and disclosure controls in the Zambia Unified Health Communication Hub. 

This Code system is referenced in the definition of the following value sets:

* [ZMCommunicationLaneVS](ValueSet-zm-communication-lane-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zm-communication-lane",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-lane",
  "version" : "0.1.0",
  "name" : "ZMCommunicationLaneCS",
  "title" : "Zambia Communication Lane",
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
  "description" : "Governance lanes used to separate communication purposes, access rules, and disclosure controls in the Zambia Unified Health Communication Hub.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "clinical",
    "display" : "Clinical",
    "definition" : "Patient care communications such as appointment, referral, result-availability, and follow-up notifications."
  },
  {
    "code" : "public-health",
    "display" : "Public health",
    "definition" : "Surveillance alerts, outbreak notifications, and incident escalation."
  },
  {
    "code" : "operational",
    "display" : "Operational",
    "definition" : "Reporting deadlines, data-quality issues, and service interruptions."
  },
  {
    "code" : "supply-chain",
    "display" : "Supply chain",
    "definition" : "Stock alerts, requisition approvals, and delivery notifications."
  },
  {
    "code" : "workforce",
    "display" : "Workforce",
    "definition" : "Workforce approvals, deployments, training, and licence-expiry reminders."
  },
  {
    "code" : "public-information",
    "display" : "Public information",
    "definition" : "Approved campaigns, service availability, and health advisories."
  }]
}

```
