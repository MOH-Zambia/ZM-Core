Alias: $ZMExtBase = http://moh.gov.zm/fhir/StructureDefinition

// -----------------------------------------------------------------------------
// ZM-Core Medication Extensions
// -----------------------------------------------------------------------------

// Level of access / level of care classification (e.g. Level 1, Level 2, Hospital)
Extension: ZMCoreMedicationLevelOfAccess
Id: zm-core-medication-level-of-access
Title: "ZM-Core Medication Level of Access"
Description: "Level of access / level of care at which this medicine is used (e.g. Health Post, Clinic, Hospital)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept

// Full name as in Master List (trade name)
Extension: ZMCoreMedicationFullName
Id: zm-core-medication-full-name
Title: "ZM-Core Medication Full Name"
Description: "Full trade name of the product as it appears in the Master List."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-name"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Generic name
Extension: ZMCoreMedicationGenericName
Id: zm-core-medication-generic-name
Title: "ZM-Core Medication Generic Name"
Description: "Generic name of the medicine."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-generic-name"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Alternate / brand name
Extension: ZMCoreMedicationAlternateName
Id: zm-core-medication-alternate-name
Title: "ZM-Core Medication Alternate Name"
Description: "Alternate or brand name of the medicine, if any."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-name"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Human-readable long description coming from Master List
Extension: ZMCoreMedicationDescription
Id: zm-core-medication-description
Title: "ZM-Core Medication Description"
Description: "Long description of the product from the Master List."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-description"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Free-text strength (e.g. 500mg, 500mg/5ml)
Extension: ZMCoreMedicationStrength
Id: zm-core-medication-strength
Title: "ZM-Core Medication Strength"
Description: "Product strength as free text (e.g. '500mg', '500mg/5ml')."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-strength"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Dosage unit (e.g. mg, ml, IU)
Extension: ZMCoreMedicationDosageUnit
Id: zm-core-medication-dosage-unit
Title: "ZM-Core Medication Dosage Unit"
Description: "Unit of measure for the product strength (e.g. mg, ml, IU)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dosage-unit"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept

// Dispensing units (e.g. tablet, vial, bottle)
Extension: ZMCoreMedicationDispensingUnits
Id: zm-core-medication-dispensing-units
Title: "ZM-Core Medication Dispensing Units"
Description: "Unit in which the product is dispensed (e.g. tablet, vial, bottle)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dispensing-units"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Doses per dispensing unit (e.g. 5ml spoon = 1 dose)
Extension: ZMCoreMedicationDosesPerDispensingUnit
Id: zm-core-medication-doses-per-dispensing-unit
Title: "ZM-Core Medication Doses Per Dispensing Unit"
Description: "Number of doses per dispensing unit."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-doses-per-dispensing-unit"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// MSL pack size (numeric) – e.g. 100, 10
Extension: ZMCoreMedicationMSLPackSize
Id: zm-core-medication-msl-pack-size
Title: "ZM-Core Medication MSL Pack Size (numeric)"
Description: "Numeric MSL pack size (e.g. 100, 10)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// Pack size text (e.g. 'Pack of 100', 'Each')
Extension: ZMCoreMedicationPackSizeText
Id: zm-core-medication-pack-size-text
Title: "ZM-Core Medication Pack Size (text)"
Description: "Pack size description (e.g. 'Pack of 100', 'Each')."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-size-text"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Alternate pack size text (if applicable)
Extension: ZMCoreMedicationAlternatePackSize
Id: zm-core-medication-alternate-pack-size
Title: "ZM-Core Medication Alternate Pack Size"
Description: "Alternate pack size description, if used in Master List."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-pack-size"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Pack weight (kg)
Extension: ZMCoreMedicationPackWeight
Id: zm-core-medication-pack-weight
Title: "ZM-Core Medication Pack Weight"
Description: "Weight of a single pack, typically in kilograms."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-weight"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// Packs per carton
Extension: ZMCoreMedicationPacksPerCarton
Id: zm-core-medication-packs-per-carton
Title: "ZM-Core Medication Packs Per Carton"
Description: "Number of packs per carton."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-packs-per-carton"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// Cartons per pallet
Extension: ZMCoreMedicationCartonsPerPallet
Id: zm-core-medication-cartons-per-pallet
Title: "ZM-Core Medication Cartons Per Pallet"
Description: "Number of cartons per pallet."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-cartons-per-pallet"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// Shelf-life
Extension: ZMCoreMedicationShelfLife
Id: zm-core-medication-shelf-life
Title: "ZM-Core Medication Shelf Life"
Description: "Product shelf-life description (e.g. 24 months)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-shelf-life"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Storage instructions
Extension: ZMCoreMedicationStorageInstructions
Id: zm-core-medication-storage-instructions
Title: "ZM-Core Medication Storage Instructions"
Description: "Free-text storage instructions."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-instructions"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Transport instructions
Extension: ZMCoreMedicationTransportInstructions
Id: zm-core-medication-transport-instructions
Title: "ZM-Core Medication Transport Instructions"
Description: "Free-text transport instructions."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-transport-instructions"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only string

// Store refrigerated flag
Extension: ZMCoreMedicationStoreRefrigerated
Id: zm-core-medication-store-refrigerated
Title: "ZM-Core Medication Store Refrigerated"
Description: "Indicates whether the product must be stored refrigerated."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-refrigerated"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Route of administration (e.g. oral, IM, IV)
Extension: ZMCoreMedicationRouteOfAdministration
Id: zm-core-medication-route-of-administration
Title: "ZM-Core Medication Route of Administration"
Description: "Route of administration for this medicine (e.g. oral, IM, IV)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-route-of-administration"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept

// ATC classification as a CodeableConcept
Extension: ZMCoreMedicationATCClassification
Id: zm-core-medication-atc-classification
Title: "ZM-Core Medication ATC Classification"
Description: "WHO ATC classification for the product."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-atc-classification"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept

// Storage classification (e.g. Room Temperature, Cold Chain, Freezer)
Extension: ZMCoreMedicationStorageClassification
Id: zm-core-medication-storage-classification
Title: "ZM-Core Medication Storage Classification"
Description: "Storage classification (e.g. Room temperature, Cold chain, Freezer)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-classification"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept

// Room temperature storage (in degrees Celsius)
Extension: ZMCoreMedicationStoreRoomTemperature
Id: zm-core-medication-store-room-temperature
Title: "ZM-Core Medication Store Room Temperature"
Description: "Storage temperature in degrees Celsius for room temperature storage."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-room-temperature"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// Hazardous flag
Extension: ZMCoreMedicationHazardous
Id: zm-core-medication-hazardous
Title: "ZM-Core Medication Hazardous"
Description: "Indicates whether the product is hazardous."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-hazardous"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Flammable flag
Extension: ZMCoreMedicationFlammable
Id: zm-core-medication-flammable
Title: "ZM-Core Medication Flammable"
Description: "Indicates whether the product is flammable."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-flammable"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Controlled substance flag
Extension: ZMCoreMedicationControlledSubstance
Id: zm-core-medication-controlled-substance
Title: "ZM-Core Medication Controlled Substance"
Description: "Indicates whether the product is a controlled substance."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-controlled-substance"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Light-sensitive flag
Extension: ZMCoreMedicationLightSensitive
Id: zm-core-medication-light-sensitive
Title: "ZM-Core Medication Light Sensitive"
Description: "Indicates whether the product is light sensitive."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-light-sensitive"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// WHO prequalified / WHO-approved
Extension: ZMCoreMedicationWHOApproved
Id: zm-core-medication-who-approved
Title: "ZM-Core Medication WHO Approved"
Description: "Indicates whether the product is WHO prequalified / approved."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-who-approved"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Full-supply tracer list indicator
Extension: ZMCoreMedicationFullSupply
Id: zm-core-medication-full-supply
Title: "ZM-Core Medication Full Supply"
Description: "Indicates if the product is part of the full-supply list."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-supply"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Tracer medicine flag
Extension: ZMCoreMedicationTracer
Id: zm-core-medication-tracer
Title: "ZM-Core Medication Tracer"
Description: "Indicates whether the product is a tracer medicine."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-tracer"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Pack rounding threshold (e.g. 0.5)
Extension: ZMCoreMedicationPackRoundingThreshold
Id: zm-core-medication-pack-rounding-threshold
Title: "ZM-Core Medication Pack Rounding Threshold"
Description: "Threshold at which pack quantities are rounded up or down."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-rounding-threshold"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only decimal

// Can round to zero flag
Extension: ZMCoreMedicationCanRoundToZero
Id: zm-core-medication-can-round-to-zero
Title: "ZM-Core Medication Can Round To Zero"
Description: "Indicates whether calculated order quantities can be rounded down to zero."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-can-round-to-zero"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Archived (product no longer in active use)
Extension: ZMCoreMedicationArchived
Id: zm-core-medication-archived
Title: "ZM-Core Medication Archived"
Description: "Indicates whether the product is archived or no longer active in the catalogue."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-archived"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean

// Price in ZMW or other currency
Extension: ZMCoreMedicationPrice
Id: zm-core-medication-price
Title: "ZM-Core Medication Price"
Description: "Unit price of the product (e.g. pack price) as a Money value."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-price"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only Money

// Product type (e.g. Medicine, Lab Reagent, Device)
Extension: ZMCoreMedicationProductType
Id: zm-core-medication-product-type
Title: "ZM-Core Medication Product Type"
Description: "High-level product type (e.g. Medicine, Lab Reagent, Device)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-type"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept

// Product group (e.g. ARVs, TB, Malaria)
Extension: ZMCoreMedicationProductGroup
Id: zm-core-medication-product-group
Title: "ZM-Core Medication Product Group"
Description: "Programmatic grouping (e.g. ARV, TB, Malaria, RMNCH)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-group"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only CodeableConcept


// ============================================================================
// LSI Enabled Extension
// ============================================================================
Extension: ZMCoreMedicationLSIEnabled
Id: zm-core-medication-lsi-enabled
Title: "Medication LSI Enabled"
Description: "Indicates whether this medication is enabled for the Logistics Seasonality Index (LSI)."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-lsi-enabled"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Medication"
* value[x] only boolean
* valueBoolean 1..1


// =============================================================================
// ZM-Core Medication Profile
// =============================================================================

Profile: ZMCoreMedication
Parent: Medication
Id: zm-core-medication
Title: "ZM-Core Medication Profile"
Description: """
Zambia Core Medication Profile aligned to the ZAMMSA national product catalogue and the eLMIS Master Product List.
"""
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication"
* ^status = #draft
* ^publisher = "Ministry of Health Zambia"
* ^experimental = false
* ^version = "0.1.0"

// ------------------------------------------------------------
// CODE – ZAMMSA Product Code (Master List 'Product Code')
// ------------------------------------------------------------

* code 1..1 MS
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.code 1..1 MS
* code.text 1..1 MS

// National catalogue SKUs (from Master List / ZAMMSA catalogue)
* code from ZAMMSAMedicationVS (required)
* code.coding.system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* code.coding.display MS


// ------------------------------------------------------------
// IDENTIFIERS – map Master List identity fields
//   Product Code          → code (above)
//   Alternate Item Code   → identifier[altItemCode]
//   Manufacturer Product Code → identifier[manufacturerProductCode]
//   MoH Bar Code          → identifier[mohBarCode]
//   GTIN                  → identifier[gtin]
// ------------------------------------------------------------

* identifier 1..* MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open


* identifier contains
    programItemCode 1..1 MS and
    zammsaSKU 1..1 MS and
    altItemCode 0..1 MS and
    mohBarCode 0..1 MS and
    gtin 0..1 MS

* identifier[programItemCode] MS
* identifier[programItemCode].system 1..1 MS
* identifier[programItemCode].value 1..1 MS
* identifier[programItemCode].type 1..1 MS
* identifier[programItemCode].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-program-item-code"

* identifier[zammsaSKU] MS
* identifier[zammsaSKU].system 1..1 MS
* identifier[zammsaSKU].value 1..1 MS
* identifier[zammsaSKU].type 1..1 MS
* identifier[zammsaSKU].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"

* identifier[altItemCode] MS
* identifier[altItemCode].system 1..1 MS
* identifier[altItemCode].value 1..1 MS
* identifier[altItemCode].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-alt-item-code"

* identifier[mohBarCode] MS
* identifier[mohBarCode].system 1..1 MS
* identifier[mohBarCode].value 1..1 MS
* identifier[mohBarCode].type 1..1 MS
* identifier[mohBarCode].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-moh-bar-code"

* identifier[gtin] MS
* identifier[gtin].system 1..1 MS
* identifier[gtin].value 1..1 MS
* identifier[gtin].type 1..1 MS
* identifier[gtin].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-gtin"

// Manufacturer and trade name
* marketingAuthorizationHolder MS
* marketingAuthorizationHolder ^short = "Marketing authorization holder (e.g. ZAMMSA or manufacturer; align with SDP/contract)."

// We are describing catalogue items, not in-use lots
* status 1..1 MS
* status = #active

// R5: doseForm (not 'form')
* doseForm 1..1 MS
* doseForm ^short = "Pharmaceutical dose form (e.g. tablet, syrup, injection)"

// Keep only the fields we actually plan to populate in phase 1
* totalVolume 0..0
* ingredient 0..0
* batch 0..0


// -----------------------------------------------------------------------------
// Master List related extensions
// -----------------------------------------------------------------------------

// Slice Medication.extension by url so we can refer to specific ZM-Core extensions
* extension ^slicing.discriminator[0].type = #value
* extension ^slicing.discriminator[0].path = "url"
* extension ^slicing.rules = #open
* extension ^slicing.ordered = false

* extension contains
    ZMCoreMedicationLevelOfAccess named levelOfAccess 0..*
  and ZMCoreMedicationFullName named fullName 0..1
  and ZMCoreMedicationGenericName named genericName 0..1
  and ZMCoreMedicationAlternateName named alternateName 0..1
  and ZMCoreMedicationDescription named description 0..1
  and ZMCoreMedicationStrength named strengthText 0..1
  and ZMCoreMedicationDosageUnit named dosageUnit 0..1
  and ZMCoreMedicationDispensingUnits named dispensingUnits 0..1
  and ZMCoreMedicationDosesPerDispensingUnit named dosesPerDispensingUnit 0..1
  and ZMCoreMedicationMSLPackSize named mslPackSize 0..1
  and ZMCoreMedicationPackSizeText named packSizeText 0..1
  and ZMCoreMedicationAlternatePackSize named alternatePackSize 0..1
  and ZMCoreMedicationPackWeight named packWeight 0..1
  and ZMCoreMedicationPacksPerCarton named packsPerCarton 0..1
  and ZMCoreMedicationCartonsPerPallet named cartonsPerPallet 0..1
  and ZMCoreMedicationShelfLife named shelfLife 0..1
  and ZMCoreMedicationStorageInstructions named storageInstructions 0..1
  and ZMCoreMedicationTransportInstructions named transportInstructions 0..1
  and ZMCoreMedicationStoreRefrigerated named storeRefrigerated 0..1
  and ZMCoreMedicationRouteOfAdministration named routeOfAdministration 0..1
  and ZMCoreMedicationATCClassification named atcClassification 0..*
  and ZMCoreMedicationStorageClassification named storageClassification 0..1
  and ZMCoreMedicationStoreRoomTemperature named storeRoomTemperature 0..1
  and ZMCoreMedicationHazardous named isHazardous 0..1
  and ZMCoreMedicationFlammable named isFlammable 0..1
  and ZMCoreMedicationControlledSubstance named isControlledSubstance 0..1
  and ZMCoreMedicationLightSensitive named isLightSensitive 0..1
  and ZMCoreMedicationWHOApproved named approvedByWHO 0..1
  and ZMCoreMedicationFullSupply named isFullSupply 0..1
  and ZMCoreMedicationTracer named isTracer 0..1
  and ZMCoreMedicationPackRoundingThreshold named packRoundingThreshold 0..1
  and ZMCoreMedicationCanRoundToZero named canRoundToZero 0..1
  and ZMCoreMedicationArchived named archived 0..1
  and ZMCoreMedicationLSIEnabled named lsiEnabled 0..1
  and ZMCoreMedicationPrice named price 0..1
  and ZMCoreMedicationProductType named productType 0..1
  and ZMCoreMedicationProductGroup named productGroup 0..1

* extension[lsiEnabled].valueBoolean 1..1