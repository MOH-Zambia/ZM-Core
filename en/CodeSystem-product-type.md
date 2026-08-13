# Zambia Product Type (eLMIS) - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia Product Type (eLMIS)**

## CodeSystem: Zambia Product Type (eLMIS) 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/product-type | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMProductTypeCS |

 
Product types from the eLMIS Master Product List. 

This Code system is referenced in the definition of the following value sets:

* [ZMProductTypeVS](ValueSet-product-type.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "product-type",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/product-type",
  "version" : "0.1.0",
  "name" : "ZMProductTypeCS",
  "title" : "Zambia Product Type (eLMIS)",
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
  "description" : "Product types from the eLMIS Master Product List.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "essential-medicine",
    "display" : "Essential Medicine"
  },
  {
    "code" : "medical-surgicals",
    "display" : "Medical Surgicals"
  },
  {
    "code" : "laboratory",
    "display" : "Laboratory"
  },
  {
    "code" : "equipment",
    "display" : "Equipment"
  },
  {
    "code" : "orthopaedics-prosthetics-orthotics",
    "display" : "Orthopaedics, Prosthetics and Orthotics"
  },
  {
    "code" : "tuberculosis",
    "display" : "Tuberculosis"
  },
  {
    "code" : "antiretroviral",
    "display" : "Antiretroviral Drugs"
  },
  {
    "code" : "hiv-program",
    "display" : "HIV Program"
  }]
}

```
