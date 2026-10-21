# ZM-Core Medication Information Provider GLN - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Medication Information Provider GLN**

## Extension: ZM-Core Medication Information Provider GLN 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-information-provider-gln | *Version*:0.2.0 |
| Active as of 2026-10-21 | *Computable Name*:ZMCoreMedicationInformationProviderGLN |

GS1 Global Location Number of the party that published this trade item.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZM-Core Medication Profile](StructureDefinition-zm-core-medication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-medication-information-provider-gln.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-medication-information-provider-gln.csv), [Excel](../StructureDefinition-zm-core-medication-information-provider-gln.xlsx), [Schematron](../StructureDefinition-zm-core-medication-information-provider-gln.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-medication-information-provider-gln",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-information-provider-gln",
  "version" : "0.2.0",
  "name" : "ZMCoreMedicationInformationProviderGLN",
  "title" : "ZM-Core Medication Information Provider GLN",
  "status" : "active",
  "date" : "2026-10-21T04:21:07+00:00",
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
  "description" : "GS1 Global Location Number of the party that published this trade item.",
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
      "short" : "ZM-Core Medication Information Provider GLN",
      "definition" : "GS1 Global Location Number of the party that published this trade item."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-information-provider-gln"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
