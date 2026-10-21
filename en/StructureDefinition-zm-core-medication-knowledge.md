# ZM-Core Medication Knowledge Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Medication Knowledge Profile**

## Resource Profile: ZM-Core Medication Knowledge Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-knowledge | *Version*:0.2.0 |
| Draft as of 2026-10-21 | *Computable Name*:ZMCoreMedicationKnowledge |

 
A product as regulated and supplied: its regulatory status, storage and handling, classification and pack presentation. Its clinical counterpart is ZMCoreMedication, and the two carry the same identifiers for the same product. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-medication-knowledge.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-medication-knowledge.csv), [Excel](../StructureDefinition-zm-core-medication-knowledge.xlsx), [Schematron](../StructureDefinition-zm-core-medication-knowledge.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-medication-knowledge",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-implements",
    "valueUri" : "http://hl7.org/fhir/StructureDefinition/MetadataResource"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-knowledge",
  "version" : "0.2.0",
  "name" : "ZMCoreMedicationKnowledge",
  "title" : "ZM-Core Medication Knowledge Profile",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "A product as regulated and supplied: its regulatory status, storage and\nhandling, classification and pack presentation. Its clinical counterpart is\nZMCoreMedication, and the two carry the same identifiers for the same product.",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationKnowledge",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationKnowledge",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationKnowledge",
      "path" : "MedicationKnowledge"
    },
    {
      "id" : "MedicationKnowledge.identifier",
      "path" : "MedicationKnowledge.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Trade, catalogue and regulatory identifiers, as published on the Medication for the same product.",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.identifier.system",
      "path" : "MedicationKnowledge.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.identifier.value",
      "path" : "MedicationKnowledge.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.identifier:gtin",
      "path" : "MedicationKnowledge.identifier",
      "sliceName" : "gtin",
      "short" : "GTIN; the official product identifier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.identifier:gtin.system",
      "path" : "MedicationKnowledge.identifier.system",
      "patternUri" : "https://www.gs1.org/gtin"
    },
    {
      "id" : "MedicationKnowledge.identifier:zammsaSKU",
      "path" : "MedicationKnowledge.identifier",
      "sliceName" : "zammsaSKU",
      "short" : "National catalogue SKU",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.identifier:zammsaSKU.system",
      "path" : "MedicationKnowledge.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
    },
    {
      "id" : "MedicationKnowledge.identifier:zamraRegistration",
      "path" : "MedicationKnowledge.identifier",
      "sliceName" : "zamraRegistration",
      "short" : "ZAMRA registration number; asserted by the regulator",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.identifier:zamraRegistration.system",
      "path" : "MedicationKnowledge.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/zamra-registration"
    },
    {
      "id" : "MedicationKnowledge.code",
      "path" : "MedicationKnowledge.code",
      "short" : "ATC classification, as on the Medication",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.status",
      "path" : "MedicationKnowledge.status",
      "short" : "active while the product is current; a withdrawn product is inactive, never deleted",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.cost",
      "path" : "MedicationKnowledge.cost",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.medicineClassification",
      "path" : "MedicationKnowledge.medicineClassification",
      "short" : "Programme classifications: WHO and Zambia essential medicine lists, EML category and section",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.medicineClassification.type",
      "path" : "MedicationKnowledge.medicineClassification.type",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.packaging",
      "path" : "MedicationKnowledge.packaging",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.storageGuideline",
      "path" : "MedicationKnowledge.storageGuideline",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.storageGuideline.stabilityDuration",
      "path" : "MedicationKnowledge.storageGuideline.stabilityDuration",
      "short" : "Shelf life; the catalogue records it in months",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.regulatory",
      "path" : "MedicationKnowledge.regulatory",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.regulatory.regulatoryAuthority",
      "path" : "MedicationKnowledge.regulatory.regulatoryAuthority",
      "short" : "ZAMRA for products registered in Zambia",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.regulatory.schedule",
      "path" : "MedicationKnowledge.regulatory.schedule",
      "short" : "Controlled-substance schedule, where one applies",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional",
      "path" : "MedicationKnowledge.definitional",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional.doseForm",
      "path" : "MedicationKnowledge.definitional.doseForm",
      "short" : "EDQM Standard Terms dose form; text alone where no code is mapped",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional.intendedRoute",
      "path" : "MedicationKnowledge.definitional.intendedRoute",
      "short" : "EDQM Standard Terms route of administration",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional.ingredient",
      "path" : "MedicationKnowledge.definitional.ingredient",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional.drugCharacteristic",
      "path" : "MedicationKnowledge.definitional.drugCharacteristic",
      "short" : "Pack size and other presentation characteristics; pack size is a string",
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional.drugCharacteristic.type",
      "path" : "MedicationKnowledge.definitional.drugCharacteristic.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationKnowledge.definitional.drugCharacteristic.value[x]",
      "path" : "MedicationKnowledge.definitional.drugCharacteristic.value[x]",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
