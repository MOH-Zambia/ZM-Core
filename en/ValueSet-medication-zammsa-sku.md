# ZAMMSA Medication SKU ValueSet - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZAMMSA Medication SKU ValueSet**

## ValueSet: ZAMMSA Medication SKU ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ValueSet/medication-zammsa-sku | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZAMMSAMedicationVS |

 
All ZAMMSA catalogue SKUs that are valid for use in the ZM-Core Medication profile. 

 **References** 

* [ZM-Core Medication Profile](StructureDefinition-zm-core-medication.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medication-zammsa-sku",
  "url" : "http://hapi.moh.gov.zm/fhir/ValueSet/medication-zammsa-sku",
  "version" : "0.1.0",
  "name" : "ZAMMSAMedicationVS",
  "title" : "ZAMMSA Medication SKU ValueSet",
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
  "description" : "All ZAMMSA catalogue SKUs that are valid for use in the ZM-Core Medication profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
    }]
  }
}

```
