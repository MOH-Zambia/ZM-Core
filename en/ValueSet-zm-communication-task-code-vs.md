# Zambia Communication Task Code Value Set - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Communication Task Code Value Set**

## ValueSet: Zambia Communication Task Code Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-task-code-vs | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCommunicationTaskCodeVS |

 
Task actions supported by a communication workflow. 

 **References** 

* [ZM-Core Communication Task Profile](StructureDefinition-zm-core-communication-task.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "zm-communication-task-code-vs",
  "url" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-task-code-vs",
  "version" : "0.1.0",
  "name" : "ZMCommunicationTaskCodeVS",
  "title" : "Zambia Communication Task Code Value Set",
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
  "description" : "Task actions supported by a communication workflow.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-task-code"
    }]
  }
}

```
