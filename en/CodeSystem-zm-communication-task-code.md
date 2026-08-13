# Zambia Communication Task Code - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Task Code**

## CodeSystem: Zambia Communication Task Code 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-task-code | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationTaskCodeCS |

 
Actions used to capture acknowledgement and escalation in communication workflows. 

This Code system is referenced in the definition of the following value sets:

* [ZMCommunicationTaskCodeVS](ValueSet-zm-communication-task-code-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "zm-communication-task-code",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-task-code",
  "version" : "0.1.0",
  "name" : "ZMCommunicationTaskCodeCS",
  "title" : "Zambia Communication Task Code",
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
  "description" : "Actions used to capture acknowledgement and escalation in communication workflows.",
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
    "code" : "acknowledge",
    "display" : "Acknowledge communication"
  },
  {
    "code" : "complete-action",
    "display" : "Complete requested action"
  },
  {
    "code" : "escalate",
    "display" : "Escalate communication"
  },
  {
    "code" : "resolve-recipient",
    "display" : "Resolve recipient"
  }]
}

```
