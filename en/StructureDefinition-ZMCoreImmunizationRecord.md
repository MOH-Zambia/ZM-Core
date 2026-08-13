# Immunization Record - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunization Record**

## Logical Model: Immunization Record 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreImmunizationRecord | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreImmunizationRecord |

 
Immunization record for Zambian health systems 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-ZMCoreImmunizationRecord.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ZMCoreImmunizationRecord.csv), [Excel](../StructureDefinition-ZMCoreImmunizationRecord.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ZMCoreImmunizationRecord",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreImmunizationRecord",
  "version" : "0.1.0",
  "name" : "ZMCoreImmunizationRecord",
  "title" : "Immunization Record",
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
  "description" : "Immunization record for Zambian health systems",
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
  "type" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreImmunizationRecord",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ZMCoreImmunizationRecord",
      "path" : "ZMCoreImmunizationRecord",
      "short" : "Immunization Record",
      "definition" : "Immunization record for Zambian health systems"
    },
    {
      "id" : "ZMCoreImmunizationRecord.patient",
      "path" : "ZMCoreImmunizationRecord.patient",
      "short" : "Patient",
      "definition" : "Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.vaccine",
      "path" : "ZMCoreImmunizationRecord.vaccine",
      "short" : "Vaccine Administered",
      "definition" : "Vaccine Administered",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.doseNumber",
      "path" : "ZMCoreImmunizationRecord.doseNumber",
      "short" : "Dose Number",
      "definition" : "Dose Number",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.dateAdministered",
      "path" : "ZMCoreImmunizationRecord.dateAdministered",
      "short" : "Date of Administration",
      "definition" : "Date of Administration",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.provider",
      "path" : "ZMCoreImmunizationRecord.provider",
      "short" : "Healthcare Provider",
      "definition" : "Healthcare Provider",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.facility",
      "path" : "ZMCoreImmunizationRecord.facility",
      "short" : "Health Facility",
      "definition" : "Health Facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.nextDueDate",
      "path" : "ZMCoreImmunizationRecord.nextDueDate",
      "short" : "Next Scheduled Dose",
      "definition" : "Next Scheduled Dose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "ZMCoreImmunizationRecord.notes",
      "path" : "ZMCoreImmunizationRecord.notes",
      "short" : "Notes",
      "definition" : "Notes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
