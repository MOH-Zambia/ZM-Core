# Example ZAMMSA Betamethasone 0.1% cream/ointment - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZAMMSA Betamethasone 0.1% cream/ointment**

## Example Medication: Example ZAMMSA Betamethasone 0.1% cream/ointment

Profile: [ZM-Core Medication Profile](StructureDefinition-zm-core-medication.md)

**ZM-Core Medication Level of Access**: Health Post

**ZM-Core Medication Level of Access**: Health Centre

**ZM-Core Medication Level of Access**: Level 1 Hospital

**ZM-Core Medication Level of Access**: Level 2 Hospital

**ZM-Core Medication Level of Access**: Level 3 Hospital

**ZM-Core Medication Full Supply**: true

**ZM-Core Medication Tracer**: true

**ZM-Core Medication Pack Rounding Threshold**: 0.5

**ZM-Core Medication Can Round To Zero**: false

**ZM-Core Medication Archived**: false

**Medication LSI Enabled**: true

**ZM-Core Medication Product Type**: Corticosteroid

**ZM-Core Medication Product Group**: Dermatology

**ZM-Core Medication Price**: ZMW165.00 (ZMW)

**ZM-Core Medication Full Name**: Betamethasone 0.1% w/w cream/ointment tube 15g

**ZM-Core Medication Generic Name**: Betamethasone

**ZM-Core Medication Alternate Name**: Betnovate

**ZM-Core Medication Description**: Topical corticosteroid cream/ointment for dermatological conditions

**ZM-Core Medication Strength**: 0.1% w/w

**ZM-Core Medication Dosage Unit**: g

**ZM-Core Medication Dispensing Units**: tube

**ZM-Core Medication Doses Per Dispensing Unit**: 30

**ZM-Core Medication MSL Pack Size (numeric)**: 1

**ZM-Core Medication Pack Size (text)**: Each

**ZM-Core Medication Alternate Pack Size**: Box of 10 tubes

**ZM-Core Medication Pack Weight**: 0.025

**ZM-Core Medication Packs Per Carton**: 100

**ZM-Core Medication Cartons Per Pallet**: 50

**ZM-Core Medication Shelf Life**: 36 months

**ZM-Core Medication Storage Instructions**: Store below 25°C. Do not freeze.

**ZM-Core Medication Transport Instructions**: Transport at ambient temperature. Protect from direct sunlight.

**ZM-Core Medication Store Refrigerated**: false

**ZM-Core Medication Route of Administration**: Topical

**ZM-Core Medication ATC Classification**: Betamethasone

**ZM-Core Medication Storage Classification**: Room Temperature

**ZM-Core Medication Store Room Temperature**: 25

**ZM-Core Medication Hazardous**: false

**ZM-Core Medication Flammable**: false

**ZM-Core Medication Controlled Substance**: false

**ZM-Core Medication Light Sensitive**: false

**ZM-Core Medication WHO Approved**: true

**identifier**: MoH Program Item Code/P-12345, ZAMMSA SKU/ZMM-12345, Alternate Item Code/ALT-12345, GTIN/6001234567890

**code**: Betamethasone 0.1% w/w cream /ointment tube (ZAMMSA SKU: EM1389)

**status**: Active

**doseForm**: Cream/ointment



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "ExampleZMCoreMedication",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication"]
  },
  "extension" : [{
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access",
    "valueCodeableConcept" : {
      "text" : "Health Post"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access",
    "valueCodeableConcept" : {
      "text" : "Health Centre"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access",
    "valueCodeableConcept" : {
      "text" : "Level 1 Hospital"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access",
    "valueCodeableConcept" : {
      "text" : "Level 2 Hospital"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access",
    "valueCodeableConcept" : {
      "text" : "Level 3 Hospital"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-supply",
    "valueBoolean" : true
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-tracer",
    "valueBoolean" : true
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-rounding-threshold",
    "valueDecimal" : 0.5
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-can-round-to-zero",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-archived",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-lsi-enabled",
    "valueBoolean" : true
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-type",
    "valueCodeableConcept" : {
      "text" : "Corticosteroid"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-group",
    "valueCodeableConcept" : {
      "text" : "Dermatology"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-price",
    "valueMoney" : {
      "value" : 165,
      "currency" : "ZMW"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-name",
    "valueString" : "Betamethasone 0.1% w/w cream/ointment tube 15g"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-generic-name",
    "valueString" : "Betamethasone"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-name",
    "valueString" : "Betnovate"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-description",
    "valueString" : "Topical corticosteroid cream/ointment for dermatological conditions"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-strength",
    "valueString" : "0.1% w/w"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dosage-unit",
    "valueCodeableConcept" : {
      "text" : "g"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dispensing-units",
    "valueString" : "tube"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-doses-per-dispensing-unit",
    "valueDecimal" : 30
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size",
    "valueDecimal" : 1
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-size-text",
    "valueString" : "Each"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-pack-size",
    "valueString" : "Box of 10 tubes"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-weight",
    "valueDecimal" : 0.025
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-packs-per-carton",
    "valueDecimal" : 100
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-cartons-per-pallet",
    "valueDecimal" : 50
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-shelf-life",
    "valueString" : "36 months"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-instructions",
    "valueString" : "Store below 25°C. Do not freeze."
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-transport-instructions",
    "valueString" : "Transport at ambient temperature. Protect from direct sunlight."
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-refrigerated",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-route-of-administration",
    "valueCodeableConcept" : {
      "text" : "Topical"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-atc-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "D07AC01",
        "display" : "Betamethasone"
      }]
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-classification",
    "valueCodeableConcept" : {
      "text" : "Room Temperature"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-room-temperature",
    "valueDecimal" : 25
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-hazardous",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-flammable",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-controlled-substance",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-light-sensitive",
    "valueBoolean" : false
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-who-approved",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "type" : {
      "text" : "MoH Program Item Code"
    },
    "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-program-item-code",
    "value" : "P-12345"
  },
  {
    "type" : {
      "text" : "ZAMMSA SKU"
    },
    "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku",
    "value" : "ZMM-12345"
  },
  {
    "type" : {
      "text" : "Alternate Item Code"
    },
    "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-alt-item-code",
    "value" : "ALT-12345"
  },
  {
    "type" : {
      "text" : "GTIN"
    },
    "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-gtin",
    "value" : "6001234567890"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku",
      "code" : "EM1389",
      "display" : "Betamethasone 0.1% w/w cream /ointment tube"
    }],
    "text" : "Betamethasone 0.1% w/w cream /ointment tube (ZAMMSA SKU: EM1389)"
  },
  "status" : "active",
  "doseForm" : {
    "text" : "Cream/ointment"
  }
}

```
