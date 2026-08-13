# Zambia eLMIS Product Group - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zambia eLMIS Product Group**

## CodeSystem: Zambia eLMIS Product Group 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/product-group | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMProductGroupCS |

 
Short product group codes from the eLMIS Master list (e.g. ess, medsurge, equip…). 

This Code system is referenced in the definition of the following value sets:

* [ZMProductGroupVS](ValueSet-product-group.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "product-group",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/product-group",
  "version" : "0.1.0",
  "name" : "ZMProductGroupCS",
  "title" : "Zambia eLMIS Product Group",
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
  "description" : "Short product group codes from the eLMIS Master list (e.g. ess, medsurge, equip...).",
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
    "code" : "ess",
    "display" : "Essential Medicines (ess)"
  },
  {
    "code" : "medsurge",
    "display" : "Medical Surgicals (medsurge)"
  },
  {
    "code" : "equip",
    "display" : "Equipment (equip)"
  },
  {
    "code" : "Micr",
    "display" : "Microbiology (Micr)"
  },
  {
    "code" : "Che",
    "display" : "Chemistry (Che)"
  },
  {
    "code" : "genreag",
    "display" : "General Reagents (genreag)"
  },
  {
    "code" : "labeq",
    "display" : "Laboratory Equipment (labeq)"
  },
  {
    "code" : "Haem",
    "display" : "Haematology (Haem)"
  },
  {
    "code" : "Vir",
    "display" : "Virology (Vir)"
  }]
}

```
