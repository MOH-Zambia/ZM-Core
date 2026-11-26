# ZM-Core Inventory Item Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Inventory Item Profile**

## Resource Profile: ZM-Core Inventory Item Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-inventory-item | *Version*:0.3.0 |
| Draft as of 2026-11-26 | *Computable Name*:ZMCoreInventoryItem |

 
A product in the national Product Catalogue that is not a medicine: a surgical, laboratory supply, test kit or piece of equipment. It describes the product as catalogued, not a quantity in stock. Medicines are ZMCoreMedication and ZMCoreMedicationKnowledge instead; a product is never both. 

**Usages:**

* Examples for this Profile: [InventoryItem/ExampleZMCoreInventoryItem](InventoryItem-ExampleZMCoreInventoryItem.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-inventory-item.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-inventory-item.csv), [Excel](../StructureDefinition-zm-core-inventory-item.xlsx), [Schematron](../StructureDefinition-zm-core-inventory-item.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-inventory-item",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-inventory-item",
  "version" : "0.3.0",
  "name" : "ZMCoreInventoryItem",
  "title" : "ZM-Core Inventory Item Profile",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-11-26T07:10:20+00:00",
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
  "description" : "A product in the national Product Catalogue that is not a medicine: a surgical,\nlaboratory supply, test kit or piece of equipment. It describes the product as\ncatalogued, not a quantity in stock. Medicines are ZMCoreMedication and\nZMCoreMedicationKnowledge instead; a product is never both.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "InventoryItem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/InventoryItem",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "InventoryItem",
      "path" : "InventoryItem"
    },
    {
      "id" : "InventoryItem.identifier",
      "path" : "InventoryItem.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Catalogue, trade and regulatory identifiers, with the same systems as the Medication profiles.",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier.system",
      "path" : "InventoryItem.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier.value",
      "path" : "InventoryItem.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier:zammsaSKU",
      "path" : "InventoryItem.identifier",
      "sliceName" : "zammsaSKU",
      "short" : "National catalogue SKU; every product has one",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier:zammsaSKU.system",
      "path" : "InventoryItem.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
    },
    {
      "id" : "InventoryItem.identifier:gtin",
      "path" : "InventoryItem.identifier",
      "sliceName" : "gtin",
      "short" : "GTIN; the trade item's GS1 identifier",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier:gtin.system",
      "path" : "InventoryItem.identifier.system",
      "patternUri" : "https://www.gs1.org/gtin"
    },
    {
      "id" : "InventoryItem.identifier:zamraRegistration",
      "path" : "InventoryItem.identifier",
      "sliceName" : "zamraRegistration",
      "short" : "ZAMRA registration number, for a regulated device or diagnostic",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier:zamraRegistration.system",
      "path" : "InventoryItem.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/zamra-registration"
    },
    {
      "id" : "InventoryItem.identifier:productUuid",
      "path" : "InventoryItem.identifier",
      "sliceName" : "productUuid",
      "short" : "The product's UUID as urn:uuid; also the resource id the catalogue assigns",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.identifier:productUuid.system",
      "path" : "InventoryItem.identifier.system",
      "patternUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "InventoryItem.status",
      "path" : "InventoryItem.status",
      "short" : "active while the product is current; a withdrawn product is inactive, never deleted",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.category",
      "path" : "InventoryItem.category",
      "short" : "Catalogue product family (e.g. Surgicals, Laboratory) and product group",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.code",
      "path" : "InventoryItem.code",
      "short" : "The product; its name as text, with a code where a code system is agreed (GMDN, UNSPSC)",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.name",
      "path" : "InventoryItem.name",
      "short" : "The catalogue name; at least the preferred name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.name.nameType",
      "path" : "InventoryItem.name.nameType",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.name.language",
      "path" : "InventoryItem.name.language",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.name.name",
      "path" : "InventoryItem.name.name",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.responsibleOrganization",
      "path" : "InventoryItem.responsibleOrganization",
      "short" : "Manufacturer or supplier; a display name is enough where the organization is not registered",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.responsibleOrganization.role",
      "path" : "InventoryItem.responsibleOrganization.role",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.responsibleOrganization.organization",
      "path" : "InventoryItem.responsibleOrganization.organization",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.description",
      "path" : "InventoryItem.description",
      "short" : "Long description of the product, where the catalogue has one",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.inventoryStatus",
      "path" : "InventoryItem.inventoryStatus",
      "short" : "Not used: availability is a property of a facility's stock",
      "max" : "0"
    },
    {
      "id" : "InventoryItem.baseUnit",
      "path" : "InventoryItem.baseUnit",
      "short" : "The unit the product is issued in (each, box, kit)",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.netContent",
      "path" : "InventoryItem.netContent",
      "short" : "Contents of one unit, where it is a measured quantity (e.g. 500 mL)",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.characteristic",
      "path" : "InventoryItem.characteristic",
      "short" : "Pack size and other characteristics; pack size is a string",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.characteristic.characteristicType",
      "path" : "InventoryItem.characteristic.characteristicType",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.characteristic.value[x]",
      "path" : "InventoryItem.characteristic.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "InventoryItem.instance",
      "path" : "InventoryItem.instance",
      "short" : "Not used: a lot, serial number or expiry belongs to stock, not to the catalogue",
      "max" : "0"
    }]
  }
}

```
