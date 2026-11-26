// ============================================================================
// Example: a catalogue surgical, as the Product Catalogue publishes it
// ============================================================================

Instance: ExampleZMCoreInventoryItem
InstanceOf: ZMCoreInventoryItem
Title: "Example Product Catalogue examination gloves"
Description: "A non-medicine catalogue product (a surgical) as ZMCoreInventoryItem."
Usage: #example

* identifier[zammsaSKU].use = #official
* identifier[zammsaSKU].system = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* identifier[zammsaSKU].type.text = "ZAMMSA SKU"
* identifier[zammsaSKU].value = "SU0123"
* identifier[gtin].system = "https://www.gs1.org/gtin"
* identifier[gtin].type.text = "GTIN"
* identifier[gtin].value = "06001234567897"
* identifier[productUuid].system = "urn:ietf:rfc:3986"
* identifier[productUuid].value = "urn:uuid:5b0f6c1e-2d4a-4c6e-9f1a-3b7d8e2c4a10"

* status = #active
* code.text = "Gloves, examination, latex, powder-free, medium"
* name.nameType = http://hl7.org/fhir/inventoryitem-nametype#preferred "Preferred"
* name.language = #en
* name.name = "Gloves, examination, latex, powder-free, medium"

* category[+].text = "Surgicals"
* category[+].text = "Gloves"

* baseUnit.text = "Box"
* characteristic.characteristicType.text = "Pack size"
* characteristic.valueString = "Box of 100"

* responsibleOrganization.role.text = "Manufacturer"
* responsibleOrganization.organization.display = "Example Gloves Ltd"
