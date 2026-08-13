# Communication Data Classification - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Communication Data Classification**

## Extension: Communication Data Classification 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCommunicationDataClassification |

The governance classification used to determine permitted channels and payload disclosure.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md), [ZM-Core Communication Task Profile](StructureDefinition-zm-core-communication-task.md) and [ZM-Core Communication Profile](StructureDefinition-zm-core-communication.md)
* Examples for this Extension: [Communication/ExampleZMCoreCommunication](Communication-ExampleZMCoreCommunication.md), [CommunicationRequest/ExampleZMCoreCommunicationRequest](CommunicationRequest-ExampleZMCoreCommunicationRequest.md) and [Task/ExampleZMCoreCommunicationTask](Task-ExampleZMCoreCommunicationTask.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-communication-data-classification.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-communication-data-classification.csv), [Excel](../StructureDefinition-zm-communication-data-classification.xlsx), [Schematron](../StructureDefinition-zm-communication-data-classification.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-communication-data-classification",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification",
  "version" : "0.1.0",
  "name" : "ZMCommunicationDataClassification",
  "title" : "Communication Data Classification",
  "status" : "active",
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
  "description" : "The governance classification used to determine permitted channels and payload disclosure.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "CommunicationRequest"
  },
  {
    "type" : "element",
    "expression" : "Communication"
  },
  {
    "type" : "element",
    "expression" : "Task"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Communication Data Classification",
      "definition" : "The governance classification used to determine permitted channels and payload disclosure."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-data-classification-vs"
      }
    }]
  }
}

```
