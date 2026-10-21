# ZM-Core Medication Target Market - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Medication Target Market**

## Extension: ZM-Core Medication Target Market 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-target-market | *Version*:0.2.0 |
| Active as of 2026-10-21 | *Computable Name*:ZMCoreMedicationTargetMarket |

Target market the trade item was published for, as an ISO 3166-1 numeric country code (894 is Zambia).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZM-Core Medication Profile](StructureDefinition-zm-core-medication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-medication-target-market.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-medication-target-market.csv), [Excel](../StructureDefinition-zm-core-medication-target-market.xlsx), [Schematron](../StructureDefinition-zm-core-medication-target-market.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-medication-target-market",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-target-market",
  "version" : "0.2.0",
  "name" : "ZMCoreMedicationTargetMarket",
  "title" : "ZM-Core Medication Target Market",
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
  "description" : "Target market the trade item was published for, as an ISO 3166-1 numeric country code (894 is Zambia).",
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
      "short" : "ZM-Core Medication Target Market",
      "definition" : "Target market the trade item was published for, as an ISO 3166-1 numeric country code (894 is Zambia)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-target-market"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
