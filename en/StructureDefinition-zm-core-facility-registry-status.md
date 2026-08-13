# ZM-Core Facility Registry Status - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Facility Registry Status**

## Extension: ZM-Core Facility Registry Status 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-registry-status | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreFacilityRegistryStatus |

The combined operational, licensing, registration, or record-quality status assigned to a facility by the Zambia Master Facility List. This is distinct from Organization.active, which indicates whether the FHIR record is in active use.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [ZM-Core Organization Profile](StructureDefinition-zm-core-organization.md)
* Examples for this Extension: [Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md) and [Chilenje First Level Hospital](Organization-zm-core-organization-example-json.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-facility-registry-status.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-facility-registry-status.csv), [Excel](../StructureDefinition-zm-core-facility-registry-status.xlsx), [Schematron](../StructureDefinition-zm-core-facility-registry-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-facility-registry-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-registry-status",
  "version" : "0.1.0",
  "name" : "ZMCoreFacilityRegistryStatus",
  "title" : "ZM-Core Facility Registry Status",
  "status" : "active",
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
  "description" : "The combined operational, licensing, registration, or record-quality status assigned to a facility by the Zambia Master Facility List. This is distinct from Organization.active, which indicates whether the FHIR record is in active use.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Organization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "ZM-Core Facility Registry Status",
      "definition" : "The combined operational, licensing, registration, or record-quality status assigned to a facility by the Zambia Master Facility List. This is distinct from Organization.active, which indicates whether the FHIR record is in active use."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-registry-status"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/facility-registry-status"
      }
    }]
  }
}

```
