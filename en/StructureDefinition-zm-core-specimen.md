# ZM-Core Specimen Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Specimen Profile**

## Resource Profile: ZM-Core Specimen Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-specimen | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreSpecimen |

 
Zambia specimen profile for diagnostic sample collection, transport, receipt, and processing. 

**Usages:**

* Refer to this Profile: [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md) and [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md)
* Examples for this Profile: [Specimen/ExampleZMCoreSpecimenBlood](Specimen-ExampleZMCoreSpecimenBlood.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-specimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-specimen.csv), [Excel](../StructureDefinition-zm-core-specimen.xlsx), [Schematron](../StructureDefinition-zm-core-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-specimen",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-specimen",
  "version" : "0.1.0",
  "name" : "ZMCoreSpecimen",
  "title" : "ZM-Core Specimen Profile",
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
  "description" : "Zambia specimen profile for diagnostic sample collection, transport, receipt, and processing.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier.system",
      "path" : "Specimen.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.identifier.value",
      "path" : "Specimen.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.accessionIdentifier",
      "path" : "Specimen.accessionIdentifier",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.status",
      "path" : "Specimen.status",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hl7.org/fhir/StructureDefinition/Substance",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.receivedTime",
      "path" : "Specimen.receivedTime",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collector",
      "path" : "Specimen.collection.collector",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.quantity",
      "path" : "Specimen.collection.quantity",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.method",
      "path" : "Specimen.collection.method",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.collection.bodySite",
      "path" : "Specimen.collection.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.processing",
      "path" : "Specimen.processing",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.condition",
      "path" : "Specimen.condition",
      "mustSupport" : true
    },
    {
      "id" : "Specimen.note",
      "path" : "Specimen.note",
      "mustSupport" : true
    }]
  }
}

```
