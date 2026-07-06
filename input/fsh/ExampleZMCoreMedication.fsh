// ============================================================================
// Example: ZAMMSA Medication EM1389
// ============================================================================

Instance: ExampleZMCoreMedication
InstanceOf: ZMCoreMedication
Title: "Example ZAMMSA Betamethasone 0.1% cream/ointment"
Description: "Example mapping of ZAMMSA catalogue row EM1389 into ZMCoreMedication."
Usage: #example

// Catalogue:
//   SKU: EM1389
//   Product Description: Betamethasone 0.1% w/w cream /ointment tube
//   Pack Size: Each
//   Example price: 165 ZMW
//   Level of Access: HP,HC,L1,L2,L3

* status = #active
* code.coding.system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* code.coding.code = #EM1389
* code.coding.display = "Betamethasone 0.1% w/w cream /ointment tube"
* code.text = "Betamethasone 0.1% w/w cream /ointment tube (ZAMMSA SKU: EM1389)"

// Program Item Code
* identifier[programItemCode].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-program-item-code"
* identifier[programItemCode].type.text = "MoH Program Item Code"
* identifier[programItemCode].value = "P-12345"

// ZAMMSA SKU – required slice
* identifier[zammsaSKU].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* identifier[zammsaSKU].type.text = "ZAMMSA SKU"
* identifier[zammsaSKU].value = "ZMM-12345"

// Optional: alternative item code
* identifier[altItemCode].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-alt-item-code"
* identifier[altItemCode].type.text = "Alternate Item Code"
* identifier[altItemCode].value = "ALT-12345"

// Optional: GTIN
* identifier[gtin].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-gtin"
* identifier[gtin].type.text = "GTIN"
* identifier[gtin].value = "6001234567890"

// Simple free-text dose form (you can later switch to coded if you prefer)
* doseForm.text = "Cream/ointment"

// ---------------------------
// Example extensions
// ---------------------------

// Level of access (HP, HC, L1, L2, L3)
// We populate multiple repeats of the level-of-access extension.
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"
* extension[=].valueCodeableConcept.text = "Health Post"
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"
* extension[=].valueCodeableConcept.text = "Health Centre"
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"
* extension[=].valueCodeableConcept.text = "Level 1 Hospital"
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"
* extension[=].valueCodeableConcept.text = "Level 2 Hospital"
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-level-of-access"
* extension[=].valueCodeableConcept.text = "Level 3 Hospital"

// Full-supply & tracer flags
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-supply"
* extension[=].valueBoolean = true

* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-tracer"
* extension[=].valueBoolean = true

// Pack rounding rules
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-rounding-threshold"
* extension[=].valueDecimal = 0.5

* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-can-round-to-zero"
* extension[=].valueBoolean = false

// Archive & LSI flags
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-archived"
* extension[=].valueBoolean = false

* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-lsi-enabled"
* extension[=].valueBoolean = true

// Product type / group (free-text examples; you can switch to coded later)
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-type"
* extension[=].valueCodeableConcept.text = "Corticosteroid"

* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-product-group"
* extension[=].valueCodeableConcept.text = "Dermatology"

// Price (165 ZMW)
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-price"
* extension[=].valueMoney.value = 165
* extension[=].valueMoney.currency = #ZMW

// ---------------------------
// Additional extensions (for demonstration / IG completeness)
// ---------------------------

// Full name (trade name)
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-full-name"
* extension[=].valueString = "Betamethasone 0.1% w/w cream/ointment tube 15g"

// Generic name
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-generic-name"
* extension[=].valueString = "Betamethasone"

// Alternate / brand name
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-name"
* extension[=].valueString = "Betnovate"

// Description
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-description"
* extension[=].valueString = "Topical corticosteroid cream/ointment for dermatological conditions"

// Strength
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-strength"
* extension[=].valueString = "0.1% w/w"

// Dosage unit
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dosage-unit"
* extension[=].valueCodeableConcept.text = "g"

// Dispensing units
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-dispensing-units"
* extension[=].valueString = "tube"

// Doses per dispensing unit
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-doses-per-dispensing-unit"
* extension[=].valueDecimal = 30

// MSL pack size
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-msl-pack-size"
* extension[=].valueDecimal = 1

// Pack size text
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-size-text"
* extension[=].valueString = "Each"

// Alternate pack size
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-alternate-pack-size"
* extension[=].valueString = "Box of 10 tubes"

// Pack weight (kg)
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-pack-weight"
* extension[=].valueDecimal = 0.025

// Packs per carton
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-packs-per-carton"
* extension[=].valueDecimal = 100

// Cartons per pallet
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-cartons-per-pallet"
* extension[=].valueDecimal = 50

// Shelf life
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-shelf-life"
* extension[=].valueString = "36 months"

// Storage instructions
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-instructions"
* extension[=].valueString = "Store below 25°C. Do not freeze."

// Transport instructions
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-transport-instructions"
* extension[=].valueString = "Transport at ambient temperature. Protect from direct sunlight."

// Store refrigerated
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-refrigerated"
* extension[=].valueBoolean = false

// Route of administration
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-route-of-administration"
* extension[=].valueCodeableConcept.text = "Topical"

// ATC classification
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-atc-classification"
* extension[=].valueCodeableConcept.coding[0].system = "http://www.whocc.no/atc"
* extension[=].valueCodeableConcept.coding[0].code = #D07AC01
* extension[=].valueCodeableConcept.coding[0].display = "Betamethasone"

// Storage classification
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-storage-classification"
* extension[=].valueCodeableConcept.text = "Room Temperature"

// Store room temperature
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-store-room-temperature"
* extension[=].valueDecimal = 25

// Hazardous
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-hazardous"
* extension[=].valueBoolean = false

// Flammable
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-flammable"
* extension[=].valueBoolean = false

// Controlled substance
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-controlled-substance"
* extension[=].valueBoolean = false

// Light sensitive
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-light-sensitive"
* extension[=].valueBoolean = false

// WHO approved
* extension[+].url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-who-approved"
* extension[=].valueBoolean = true