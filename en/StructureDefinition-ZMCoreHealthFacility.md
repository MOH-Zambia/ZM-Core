# Health Facility - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Health Facility**

## Logical Model: Health Facility 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreHealthFacility | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreHealthFacility |

 
Health facility structure for Zambian health systems 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-ZMCoreHealthFacility.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ZMCoreHealthFacility.csv), [Excel](../StructureDefinition-ZMCoreHealthFacility.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ZMCoreHealthFacility",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreHealthFacility",
  "version" : "0.1.0",
  "name" : "ZMCoreHealthFacility",
  "title" : "Health Facility",
  "status" : "active",
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
  "description" : "Health facility structure for Zambian health systems",
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
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreHealthFacility",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ZMCoreHealthFacility",
      "path" : "ZMCoreHealthFacility",
      "short" : "Health Facility",
      "definition" : "Health facility structure for Zambian health systems"
    },
    {
      "id" : "ZMCoreHealthFacility.identifier",
      "path" : "ZMCoreHealthFacility.identifier",
      "short" : "Facility Identifier",
      "definition" : "Facility Identifier",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.facilityName",
      "path" : "ZMCoreHealthFacility.facilityName",
      "short" : "Facility Name",
      "definition" : "Facility Name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.facilityType",
      "path" : "ZMCoreHealthFacility.facilityType",
      "short" : "Type of Facility",
      "definition" : "Type of Facility",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.level",
      "path" : "ZMCoreHealthFacility.level",
      "short" : "Facility Level (Primary, Secondary, Tertiary)",
      "definition" : "Facility Level (Primary, Secondary, Tertiary)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.province",
      "path" : "ZMCoreHealthFacility.province",
      "short" : "Province",
      "definition" : "Province",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.district",
      "path" : "ZMCoreHealthFacility.district",
      "short" : "District",
      "definition" : "District",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.address",
      "path" : "ZMCoreHealthFacility.address",
      "short" : "Facility Address",
      "definition" : "Facility Address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.coordinates",
      "path" : "ZMCoreHealthFacility.coordinates",
      "short" : "GPS Coordinates",
      "definition" : "GPS Coordinates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.telecom",
      "path" : "ZMCoreHealthFacility.telecom",
      "short" : "Contact Information",
      "definition" : "Contact Information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.operatingHours",
      "path" : "ZMCoreHealthFacility.operatingHours",
      "short" : "Operating Hours",
      "definition" : "Operating Hours",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.services",
      "path" : "ZMCoreHealthFacility.services",
      "short" : "Services Offered",
      "definition" : "Services Offered",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.staffCount",
      "path" : "ZMCoreHealthFacility.staffCount",
      "short" : "Number of Staff",
      "definition" : "Number of Staff",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.isActive",
      "path" : "ZMCoreHealthFacility.isActive",
      "short" : "Is Facility Active",
      "definition" : "Is Facility Active",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.parentFacility",
      "path" : "ZMCoreHealthFacility.parentFacility",
      "short" : "Parent Facility (for referrals)",
      "definition" : "Parent Facility (for referrals)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreHealthFacility.dateEstablished",
      "path" : "ZMCoreHealthFacility.dateEstablished",
      "short" : "Date Facility Established",
      "definition" : "Date Facility Established",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
