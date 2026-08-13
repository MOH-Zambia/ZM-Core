# ZM-Core Medication Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Medication Profile**

## Resource Profile: ZM-Core Medication Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication | *Version*:0.1.0 |
| Draft as of 2026-08-13 | *Computable Name*:ZMCoreMedication |

 
Zambia Core Medication Profile aligned to the ZAMMSA national product catalogue and the eLMIS Master Product List. 

**Usages:**

* Refer to this Profile: [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Medication Dispense Profile](StructureDefinition-zm-core-medication-dispense.md), [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md) and [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md)
* Examples for this Profile: [Medication/ExampleZMCoreMedication](Medication-ExampleZMCoreMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-medication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-medication.csv), [Excel](../StructureDefinition-zm-core-medication.xlsx), [Schematron](../StructureDefinition-zm-core-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-medication",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication",
  "version" : "0.1.0",
  "name" : "ZMCoreMedication",
  "title" : "ZM-Core Medication Profile",
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
  "description" : "Zambia Core Medication Profile aligned to the ZAMMSA national product catalogue and the eLMIS Master Product List.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.extension:levelOfAccess",
      "path" : "Medication.extension",
      "sliceName" : "levelOfAccess",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"]
      }]
    },
    {
      "id" : "Medication.extension:fullName",
      "path" : "Medication.extension",
      "sliceName" : "fullName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-name"]
      }]
    },
    {
      "id" : "Medication.extension:genericName",
      "path" : "Medication.extension",
      "sliceName" : "genericName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-generic-name"]
      }]
    },
    {
      "id" : "Medication.extension:alternateName",
      "path" : "Medication.extension",
      "sliceName" : "alternateName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-name"]
      }]
    },
    {
      "id" : "Medication.extension:description",
      "path" : "Medication.extension",
      "sliceName" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-description"]
      }]
    },
    {
      "id" : "Medication.extension:strengthText",
      "path" : "Medication.extension",
      "sliceName" : "strengthText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-strength"]
      }]
    },
    {
      "id" : "Medication.extension:dosageUnit",
      "path" : "Medication.extension",
      "sliceName" : "dosageUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dosage-unit"]
      }]
    },
    {
      "id" : "Medication.extension:dispensingUnits",
      "path" : "Medication.extension",
      "sliceName" : "dispensingUnits",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dispensing-units"]
      }]
    },
    {
      "id" : "Medication.extension:dosesPerDispensingUnit",
      "path" : "Medication.extension",
      "sliceName" : "dosesPerDispensingUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-doses-per-dispensing-unit"]
      }]
    },
    {
      "id" : "Medication.extension:mslPackSize",
      "path" : "Medication.extension",
      "sliceName" : "mslPackSize",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size"]
      }]
    },
    {
      "id" : "Medication.extension:packSizeText",
      "path" : "Medication.extension",
      "sliceName" : "packSizeText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-size-text"]
      }]
    },
    {
      "id" : "Medication.extension:alternatePackSize",
      "path" : "Medication.extension",
      "sliceName" : "alternatePackSize",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-pack-size"]
      }]
    },
    {
      "id" : "Medication.extension:packWeight",
      "path" : "Medication.extension",
      "sliceName" : "packWeight",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-weight"]
      }]
    },
    {
      "id" : "Medication.extension:packsPerCarton",
      "path" : "Medication.extension",
      "sliceName" : "packsPerCarton",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-packs-per-carton"]
      }]
    },
    {
      "id" : "Medication.extension:cartonsPerPallet",
      "path" : "Medication.extension",
      "sliceName" : "cartonsPerPallet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-cartons-per-pallet"]
      }]
    },
    {
      "id" : "Medication.extension:shelfLife",
      "path" : "Medication.extension",
      "sliceName" : "shelfLife",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-shelf-life"]
      }]
    },
    {
      "id" : "Medication.extension:storageInstructions",
      "path" : "Medication.extension",
      "sliceName" : "storageInstructions",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-instructions"]
      }]
    },
    {
      "id" : "Medication.extension:transportInstructions",
      "path" : "Medication.extension",
      "sliceName" : "transportInstructions",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-transport-instructions"]
      }]
    },
    {
      "id" : "Medication.extension:storeRefrigerated",
      "path" : "Medication.extension",
      "sliceName" : "storeRefrigerated",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-refrigerated"]
      }]
    },
    {
      "id" : "Medication.extension:routeOfAdministration",
      "path" : "Medication.extension",
      "sliceName" : "routeOfAdministration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-route-of-administration"]
      }]
    },
    {
      "id" : "Medication.extension:atcClassification",
      "path" : "Medication.extension",
      "sliceName" : "atcClassification",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-atc-classification"]
      }]
    },
    {
      "id" : "Medication.extension:storageClassification",
      "path" : "Medication.extension",
      "sliceName" : "storageClassification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-classification"]
      }]
    },
    {
      "id" : "Medication.extension:storeRoomTemperature",
      "path" : "Medication.extension",
      "sliceName" : "storeRoomTemperature",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-room-temperature"]
      }]
    },
    {
      "id" : "Medication.extension:isHazardous",
      "path" : "Medication.extension",
      "sliceName" : "isHazardous",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-hazardous"]
      }]
    },
    {
      "id" : "Medication.extension:isFlammable",
      "path" : "Medication.extension",
      "sliceName" : "isFlammable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-flammable"]
      }]
    },
    {
      "id" : "Medication.extension:isControlledSubstance",
      "path" : "Medication.extension",
      "sliceName" : "isControlledSubstance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-controlled-substance"]
      }]
    },
    {
      "id" : "Medication.extension:isLightSensitive",
      "path" : "Medication.extension",
      "sliceName" : "isLightSensitive",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-light-sensitive"]
      }]
    },
    {
      "id" : "Medication.extension:approvedByWHO",
      "path" : "Medication.extension",
      "sliceName" : "approvedByWHO",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-who-approved"]
      }]
    },
    {
      "id" : "Medication.extension:isFullSupply",
      "path" : "Medication.extension",
      "sliceName" : "isFullSupply",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-supply"]
      }]
    },
    {
      "id" : "Medication.extension:isTracer",
      "path" : "Medication.extension",
      "sliceName" : "isTracer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-tracer"]
      }]
    },
    {
      "id" : "Medication.extension:packRoundingThreshold",
      "path" : "Medication.extension",
      "sliceName" : "packRoundingThreshold",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-rounding-threshold"]
      }]
    },
    {
      "id" : "Medication.extension:canRoundToZero",
      "path" : "Medication.extension",
      "sliceName" : "canRoundToZero",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-can-round-to-zero"]
      }]
    },
    {
      "id" : "Medication.extension:archived",
      "path" : "Medication.extension",
      "sliceName" : "archived",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-archived"]
      }]
    },
    {
      "id" : "Medication.extension:lsiEnabled",
      "path" : "Medication.extension",
      "sliceName" : "lsiEnabled",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-lsi-enabled"]
      }]
    },
    {
      "id" : "Medication.extension:price",
      "path" : "Medication.extension",
      "sliceName" : "price",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-price"]
      }]
    },
    {
      "id" : "Medication.extension:productType",
      "path" : "Medication.extension",
      "sliceName" : "productType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-type"]
      }]
    },
    {
      "id" : "Medication.extension:productGroup",
      "path" : "Medication.extension",
      "sliceName" : "productGroup",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-group"]
      }]
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:programItemCode",
      "path" : "Medication.identifier",
      "sliceName" : "programItemCode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:programItemCode.type",
      "path" : "Medication.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:programItemCode.system",
      "path" : "Medication.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-program-item-code",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:programItemCode.value",
      "path" : "Medication.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:zammsaSKU",
      "path" : "Medication.identifier",
      "sliceName" : "zammsaSKU",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:zammsaSKU.type",
      "path" : "Medication.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:zammsaSKU.system",
      "path" : "Medication.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:zammsaSKU.value",
      "path" : "Medication.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:altItemCode",
      "path" : "Medication.identifier",
      "sliceName" : "altItemCode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:altItemCode.system",
      "path" : "Medication.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-alt-item-code",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:altItemCode.value",
      "path" : "Medication.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:mohBarCode",
      "path" : "Medication.identifier",
      "sliceName" : "mohBarCode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:mohBarCode.type",
      "path" : "Medication.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:mohBarCode.system",
      "path" : "Medication.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-moh-bar-code",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:mohBarCode.value",
      "path" : "Medication.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:gtin",
      "path" : "Medication.identifier",
      "sliceName" : "gtin",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:gtin.type",
      "path" : "Medication.identifier.type",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:gtin.system",
      "path" : "Medication.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-gtin",
      "mustSupport" : true
    },
    {
      "id" : "Medication.identifier:gtin.value",
      "path" : "Medication.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/medication-zammsa-sku"
      }
    },
    {
      "id" : "Medication.code.coding",
      "path" : "Medication.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.system",
      "path" : "Medication.code.coding.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.code",
      "path" : "Medication.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.coding.display",
      "path" : "Medication.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code.text",
      "path" : "Medication.code.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.status",
      "path" : "Medication.status",
      "min" : 1,
      "patternCode" : "active",
      "mustSupport" : true
    },
    {
      "id" : "Medication.marketingAuthorizationHolder",
      "path" : "Medication.marketingAuthorizationHolder",
      "short" : "Marketing authorization holder (e.g. ZAMMSA or manufacturer; align with SDP/contract).",
      "mustSupport" : true
    },
    {
      "id" : "Medication.doseForm",
      "path" : "Medication.doseForm",
      "short" : "Pharmaceutical dose form (e.g. tablet, syrup, injection)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Medication.totalVolume",
      "path" : "Medication.totalVolume",
      "max" : "0"
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "max" : "0"
    },
    {
      "id" : "Medication.batch",
      "path" : "Medication.batch",
      "max" : "0"
    }]
  }
}

```
