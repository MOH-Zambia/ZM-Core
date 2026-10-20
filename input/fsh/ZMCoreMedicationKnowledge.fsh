// =============================================================================
// ZM-Core MedicationKnowledge Profile
// =============================================================================
//
// The Product Catalogue publishes a product twice: as Medication, "the product
// as prescribed and dispensed", and as MedicationKnowledge, "the product as
// regulated and supplied". ZM-Core profiled the first and not the second, so
// half of every catalogue entry travelled unprofiled.
//
// The Product Catalogue specification's worked example places intendedRoute at
// the root and carries a `property` array. Neither exists in R5:
// intendedRoute moved under `definitional`, and `property` was removed. The
// mapping used here puts each value where R5 keeps it:
//
//   pack size ("10x10 blister")  -> definitional.drugCharacteristic, valueString
//   shelf life (24 months)       -> storageGuideline.stabilityDuration
//   WHO essential medicine       -> medicineClassification
//   route of administration      -> definitional.intendedRoute
//
// Pack size stays a string rather than becoming a Quantity for the reason the
// catalogue gives: real pack sizes are free text, and a Quantity with no
// number in it is a worse record than the text it replaced.

Profile: ZMCoreMedicationKnowledge
Parent: MedicationKnowledge
Id: zm-core-medication-knowledge
Title: "ZM-Core Medication Knowledge Profile"
Description: """
A product as regulated and supplied: its regulatory status, storage and
handling, classification and pack presentation. Its clinical counterpart is
ZMCoreMedication, and the two carry the same identifiers for the same product.
"""
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-knowledge"
* ^status = #draft
* ^publisher = "Ministry of Health Zambia"
* ^experimental = false
* ^version = "0.2.0"

// ------------------------------------------------------------
// IDENTIFIERS
// ------------------------------------------------------------
//
// The catalogue publishes the same identifier array on both resources, so a
// consumer joining them does not need to know how either was built. The slices
// below therefore mirror ZMCoreMedication.

* identifier 1..* MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Trade, catalogue and regulatory identifiers, as published on the Medication for the same product."
* identifier contains
    gtin 0..1 MS and
    zammsaSKU 1..1 MS and
    zamraRegistration 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* identifier[gtin].system = "https://www.gs1.org/gtin"
* identifier[gtin] ^short = "GTIN; the official product identifier"
* identifier[zammsaSKU].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* identifier[zammsaSKU] ^short = "National catalogue SKU"
* identifier[zamraRegistration].system = "http://hapi.moh.gov.zm/fhir/sid/zamra-registration"
* identifier[zamraRegistration] ^short = "ZAMRA registration number; asserted by the regulator"

// ------------------------------------------------------------
// CODE AND STATUS
// ------------------------------------------------------------

* code 0..1 MS
* code ^short = "ATC classification, as on the Medication"
* status 1..1 MS
* status ^short = "active while the product is current; a withdrawn product is inactive, never deleted"

// ------------------------------------------------------------
// DEFINITIONAL – dose form, route, ingredients, pack presentation
// ------------------------------------------------------------

* definitional 0..1 MS
* definitional.doseForm 0..1 MS
* definitional.doseForm ^short = "EDQM Standard Terms dose form; text alone where no code is mapped"
* definitional.intendedRoute 0..* MS
* definitional.intendedRoute ^short = "EDQM Standard Terms route of administration"
* definitional.ingredient 0..* MS
* definitional.drugCharacteristic 0..* MS
* definitional.drugCharacteristic.type 1..1 MS
* definitional.drugCharacteristic.value[x] 1..1 MS
* definitional.drugCharacteristic ^short = "Pack size and other presentation characteristics; pack size is a string"

// ------------------------------------------------------------
// REGULATORY – who authorised it, and under what schedule
// ------------------------------------------------------------

* regulatory 0..* MS
* regulatory.regulatoryAuthority 1..1 MS
* regulatory.regulatoryAuthority ^short = "ZAMRA for products registered in Zambia"
* regulatory.schedule 0..* MS
* regulatory.schedule ^short = "Controlled-substance schedule, where one applies"

// ------------------------------------------------------------
// STORAGE AND CLASSIFICATION
// ------------------------------------------------------------

* storageGuideline 0..* MS
* storageGuideline.stabilityDuration 0..1 MS
* storageGuideline.stabilityDuration ^short = "Shelf life; the catalogue records it in months"

* medicineClassification 0..* MS
* medicineClassification.type 1..1 MS
* medicineClassification ^short = "Programme classifications: WHO and Zambia essential medicine lists, EML category and section"

// ------------------------------------------------------------
// PACKAGING AND COST
// ------------------------------------------------------------

* packaging 0..* MS
* cost 0..* MS
