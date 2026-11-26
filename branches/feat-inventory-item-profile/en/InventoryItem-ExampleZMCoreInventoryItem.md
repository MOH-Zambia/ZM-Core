# Example Product Catalogue examination gloves - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Product Catalogue examination gloves**

## Example InventoryItem: Example Product Catalogue examination gloves

Profile: [ZM-Core Inventory Item Profile](StructureDefinition-zm-core-inventory-item.md)

**identifier**: ZAMMSA SKU/SU0123 (use: official, ), GTIN/06001234567897, [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.1.0/NamingSystem-uri.html)/urn:uuid:5b0f6c1e-2d4a-4c6e-9f1a-3b7d8e2c4a10

**status**: Active

**category**: Surgicals, Gloves

**code**: Gloves, examination, latex, powder-free, medium

### Names

| | | | |
| :--- | :--- | :--- | :--- |
| - | **NameType** | **Language** | **Name** |
| * | [InventoryItem Name Type: preferred](http://hl7.org/fhir/R5/codesystem-inventoryitem-nametype.html#inventoryitem-nametype-preferred)(Preferred) | English | Gloves, examination, latex, powder-free, medium |

### ResponsibleOrganizations

| | | |
| :--- | :--- | :--- |
| - | **Role** | **Organization** |
| * | Manufacturer | Example Gloves Ltd |

**baseUnit**: Box

### Characteristics

| | | |
| :--- | :--- | :--- |
| - | **CharacteristicType** | **Value[x]** |
| * | Pack size | Box of 100 |



## Resource Content

```json
{
  "resourceType" : "InventoryItem",
  "id" : "ExampleZMCoreInventoryItem",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-inventory-item"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "text" : "ZAMMSA SKU"
    },
    "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku",
    "value" : "SU0123"
  },
  {
    "type" : {
      "text" : "GTIN"
    },
    "system" : "https://www.gs1.org/gtin",
    "value" : "06001234567897"
  },
  {
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:uuid:5b0f6c1e-2d4a-4c6e-9f1a-3b7d8e2c4a10"
  }],
  "status" : "active",
  "category" : [{
    "text" : "Surgicals"
  },
  {
    "text" : "Gloves"
  }],
  "code" : [{
    "text" : "Gloves, examination, latex, powder-free, medium"
  }],
  "name" : [{
    "nameType" : {
      "system" : "http://hl7.org/fhir/inventoryitem-nametype",
      "code" : "preferred",
      "display" : "Preferred"
    },
    "language" : "en",
    "name" : "Gloves, examination, latex, powder-free, medium"
  }],
  "responsibleOrganization" : [{
    "role" : {
      "text" : "Manufacturer"
    },
    "organization" : {
      "display" : "Example Gloves Ltd"
    }
  }],
  "baseUnit" : {
    "text" : "Box"
  },
  "characteristic" : [{
    "characteristicType" : {
      "text" : "Pack size"
    },
    "valueString" : "Box of 100"
  }]
}

```
