# ZM-Core Medication MSL Pack Size (numeric) - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Medication MSL Pack Size (numeric)**

## Extension: ZM-Core Medication MSL Pack Size (numeric) 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreMedicationMSLPackSize |

Numeric MSL pack size (e.g. 100, 10).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZM-Core Medication Profile](StructureDefinition-zm-core-medication.md)
* Examples for this Extension: [Medication/ExampleZMCoreMedication](Medication-ExampleZMCoreMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-medication-msl-pack-size.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-medication-msl-pack-size.csv), [Excel](../StructureDefinition-zm-core-medication-msl-pack-size.xlsx), [Schematron](../StructureDefinition-zm-core-medication-msl-pack-size.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-medication-msl-pack-size",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size",
  "version" : "0.1.0",
  "name" : "ZMCoreMedicationMSLPackSize",
  "title" : "ZM-Core Medication MSL Pack Size (numeric)",
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
  "description" : "Numeric MSL pack size (e.g. 100, 10).",
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
    "expression" : "Medication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "ZM-Core Medication MSL Pack Size (numeric)",
      "definition" : "Numeric MSL pack size (e.g. 100, 10)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "decimal"
      }]
    }]
  }
}

```
