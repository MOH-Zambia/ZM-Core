# ZAMMSA Medication SKU Code System - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZAMMSA Medication SKU Code System**

## CodeSystem: ZAMMSA Medication SKU Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZAMMSAMedicationCS |

 
CodeSystem representing the ZAMMSA national medicines catalogue SKUs. 

This Code system is referenced in the definition of the following value sets:

* [ZAMMSAMedicationVS](ValueSet-medication-zammsa-sku.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medication-zammsa-sku",
  "url" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku",
  "version" : "0.1.0",
  "name" : "ZAMMSAMedicationCS",
  "title" : "ZAMMSA Medication SKU Code System",
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
  "description" : "CodeSystem representing the ZAMMSA national medicines catalogue SKUs.",
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
    "code" : "EM1389",
    "display" : "Betamethasone 0.1% w/w cream /ointment tube"
  },
  {
    "code" : "EM1531",
    "display" : "Hydrocortisone 0.1% w/w cream/ointment tube"
  },
  {
    "code" : "EM1390",
    "display" : "Triamcinolone 1% w/w cream/ointment tube"
  },
  {
    "code" : "EM2173",
    "display" : "Benzyl benzoate 25% 500ML/Bottle lotion (topical)"
  },
  {
    "code" : "EM2174",
    "display" : "Benzoyl peroxide 10%, 20g"
  },
  {
    "code" : "EM1879",
    "display" : "Calamine lotion 100ml bottle"
  },
  {
    "code" : "EM1881",
    "display" : "Sun screen protection lotion SPF 30 100ml tube"
  },
  {
    "code" : "EM1883",
    "display" : "Sun screen protection lotion SPF 40 100ml tube"
  },
  {
    "code" : "EM1369",
    "display" : "Nicotinamide (Vitamin B3) 100mg tablet"
  },
  {
    "code" : "EM1370",
    "display" : "Nicotinamide (Vitamin B3) 200mg tablet"
  },
  {
    "code" : "EM1371",
    "display" : "Riboflavine (Vitamin B2) 5mg tablet"
  },
  {
    "code" : "EM1372",
    "display" : "Thiamine (Vitamin B1) 50mg tablet"
  },
  {
    "code" : "EM1373",
    "display" : "Thiamine (Vitamin B1) 100mg/5ml injection"
  },
  {
    "code" : "EM1723",
    "display" : "Ascorbic acid (Vitamin C) 500mg tablet"
  },
  {
    "code" : "EM2195",
    "display" : "Multivitamin tablets (1000)"
  },
  {
    "code" : "EM2196",
    "display" : "Multivitamin tablets 100 pack"
  },
  {
    "code" : "EM2197",
    "display" : "Nicotinamide (Vitamin B3) 50mg tablet"
  },
  {
    "code" : "EM2201",
    "display" : "Potassium iodide 250 mcg liquid supplement (100ml)"
  },
  {
    "code" : "EM2202",
    "display" : "Pyridoxine (Vitamin B6) oral solution 20mg/5ml 200ml with magnesium and potassium"
  },
  {
    "code" : "EM2206",
    "display" : "Recombinant follicle-stimulating hormone (150IU) prefilled syringe"
  }]
}

```
