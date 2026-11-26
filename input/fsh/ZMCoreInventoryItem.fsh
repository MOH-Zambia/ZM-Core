// =============================================================================
// ZM-Core InventoryItem Profile
// =============================================================================
//
// The Product Catalogue publishes a medicine as ZMCoreMedication and
// ZMCoreMedicationKnowledge. Everything else it holds — surgicals, laboratory
// supplies, test kits, equipment — is not a medicine, and calling a suture a
// Medication would misstate it. R5 has a resource for a product that is
// stocked, ordered and supplied without being a medicine: InventoryItem.
// Until this profile, those products (2,285 on the national server on
// 2026-11-26) travelled unprofiled.
//
// The profile describes the catalogue entry, the definition of a product. It
// is not a stock record: `instance` (a lot, a serial number, an expiry date)
// and `inventoryStatus` belong to a facility's stock, not to the catalogue.
//
// How the catalogue maps onto it:
//
//   SKU, GTIN, ZAMRA number       -> identifier, the same slices as Medication
//   product name                  -> name (preferred, en) and code.text
//   product family, product group -> category
//   dispensing unit               -> baseUnit
//   pack size ("Box of 100")      -> characteristic, valueString
//   manufacturer                  -> responsibleOrganization, role Manufacturer
//
// Pack size stays a string for the reason the catalogue gives for medicines:
// real pack sizes are free text.

Profile: ZMCoreInventoryItem
Parent: InventoryItem
Id: zm-core-inventory-item
Title: "ZM-Core Inventory Item Profile"
Description: """
A product in the national Product Catalogue that is not a medicine: a surgical,
laboratory supply, test kit or piece of equipment. It describes the product as
catalogued, not a quantity in stock. Medicines are ZMCoreMedication and
ZMCoreMedicationKnowledge instead; a product is never both.
"""
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-inventory-item"
* ^status = #draft
* ^publisher = "Ministry of Health Zambia"
* ^experimental = false
* ^version = "0.3.0"

// ------------------------------------------------------------
// IDENTIFIERS
// ------------------------------------------------------------
//
// The same slices as ZMCoreMedication, so a consumer finds any catalogue
// product by its SKU without first knowing whether it is a medicine. The SKU
// system carries "medication" in its name for historical reasons; it is the
// catalogue's SKU system for every product.

* identifier 1..* MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Catalogue, trade and regulatory identifiers, with the same systems as the Medication profiles."
* identifier contains
    zammsaSKU 1..1 MS and
    gtin 0..1 MS and
    zamraRegistration 0..1 MS and
    productUuid 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS

* identifier[zammsaSKU].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* identifier[zammsaSKU] ^short = "National catalogue SKU; every product has one"
* identifier[gtin].system = "https://www.gs1.org/gtin"
* identifier[gtin] ^short = "GTIN; the trade item's GS1 identifier"
* identifier[zamraRegistration].system = "http://hapi.moh.gov.zm/fhir/sid/zamra-registration"
* identifier[zamraRegistration] ^short = "ZAMRA registration number, for a regulated device or diagnostic"
* identifier[productUuid].system = "urn:ietf:rfc:3986"
* identifier[productUuid] ^short = "The product's UUID as urn:uuid; also the resource id the catalogue assigns"

// ------------------------------------------------------------
// STATUS
// ------------------------------------------------------------

* status MS
* status ^short = "active while the product is current; a withdrawn product is inactive, never deleted"

// ------------------------------------------------------------
// WHAT THE PRODUCT IS
// ------------------------------------------------------------

* code 0..* MS
* code ^short = "The product; its name as text, with a code where a code system is agreed (GMDN, UNSPSC)"

* name 1..* MS
* name ^short = "The catalogue name; at least the preferred name"
* name.nameType MS
* name.language MS
* name.name MS

* category 0..* MS
* category ^short = "Catalogue product family (e.g. Surgicals, Laboratory) and product group"

* description 0..1 MS
* description ^short = "Long description of the product, where the catalogue has one"

// ------------------------------------------------------------
// HOW IT IS COUNTED AND PACKED
// ------------------------------------------------------------

* baseUnit 0..1 MS
* baseUnit ^short = "The unit the product is issued in (each, box, kit)"

* netContent 0..1 MS
* netContent ^short = "Contents of one unit, where it is a measured quantity (e.g. 500 mL)"

* characteristic 0..* MS
* characteristic.characteristicType MS
* characteristic.value[x] MS
* characteristic ^short = "Pack size and other characteristics; pack size is a string"

// ------------------------------------------------------------
// WHO MAKES OR SUPPLIES IT
// ------------------------------------------------------------

* responsibleOrganization 0..* MS
* responsibleOrganization.role MS
* responsibleOrganization.organization MS
* responsibleOrganization ^short = "Manufacturer or supplier; a display name is enough where the organization is not registered"

// ------------------------------------------------------------
// NOT PART OF A CATALOGUE ENTRY
// ------------------------------------------------------------

* instance 0..0
* instance ^short = "Not used: a lot, serial number or expiry belongs to stock, not to the catalogue"
* inventoryStatus 0..0
* inventoryStatus ^short = "Not used: availability is a property of a facility's stock"
