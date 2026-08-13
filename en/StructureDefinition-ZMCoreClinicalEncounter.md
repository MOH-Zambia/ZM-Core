# Clinical Encounter - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical Encounter**

## Logical Model: Clinical Encounter 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreClinicalEncounter | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreClinicalEncounter |

 
Clinical encounter structure for Zambian health systems 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-ZMCoreClinicalEncounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ZMCoreClinicalEncounter.csv), [Excel](../StructureDefinition-ZMCoreClinicalEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ZMCoreClinicalEncounter",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreClinicalEncounter",
  "version" : "0.1.0",
  "name" : "ZMCoreClinicalEncounter",
  "title" : "Clinical Encounter",
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
  "description" : "Clinical encounter structure for Zambian health systems",
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
  "type" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCoreClinicalEncounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ZMCoreClinicalEncounter",
      "path" : "ZMCoreClinicalEncounter",
      "short" : "Clinical Encounter",
      "definition" : "Clinical encounter structure for Zambian health systems"
    },
    {
      "id" : "ZMCoreClinicalEncounter.encounterId",
      "path" : "ZMCoreClinicalEncounter.encounterId",
      "short" : "Encounter Identifier",
      "definition" : "Encounter Identifier",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.patient",
      "path" : "ZMCoreClinicalEncounter.patient",
      "short" : "Patient Reference",
      "definition" : "Patient Reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.facility",
      "path" : "ZMCoreClinicalEncounter.facility",
      "short" : "Health Facility Reference",
      "definition" : "Health Facility Reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.provider",
      "path" : "ZMCoreClinicalEncounter.provider",
      "short" : "Healthcare Provider",
      "definition" : "Healthcare Provider",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.encounterDate",
      "path" : "ZMCoreClinicalEncounter.encounterDate",
      "short" : "Date/Time of Encounter",
      "definition" : "Date/Time of Encounter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.encounterType",
      "path" : "ZMCoreClinicalEncounter.encounterType",
      "short" : "Type of Encounter (consultation, inpatient, etc.)",
      "definition" : "Type of Encounter (consultation, inpatient, etc.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.chiefComplaint",
      "path" : "ZMCoreClinicalEncounter.chiefComplaint",
      "short" : "Chief Complaint",
      "definition" : "Chief Complaint",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.findings",
      "path" : "ZMCoreClinicalEncounter.findings",
      "short" : "Clinical Findings",
      "definition" : "Clinical Findings",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.diagnoses",
      "path" : "ZMCoreClinicalEncounter.diagnoses",
      "short" : "Diagnoses",
      "definition" : "Diagnoses",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.treatments",
      "path" : "ZMCoreClinicalEncounter.treatments",
      "short" : "Treatments/Plans",
      "definition" : "Treatments/Plans",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.vitals",
      "path" : "ZMCoreClinicalEncounter.vitals",
      "short" : "Vital Signs",
      "definition" : "Vital Signs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.notes",
      "path" : "ZMCoreClinicalEncounter.notes",
      "short" : "Clinical Notes",
      "definition" : "Clinical Notes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.referral",
      "path" : "ZMCoreClinicalEncounter.referral",
      "short" : "Referral (if applicable)",
      "definition" : "Referral (if applicable)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCoreClinicalEncounter.status",
      "path" : "ZMCoreClinicalEncounter.status",
      "short" : "Encounter Status (planned, in-progress, completed)",
      "definition" : "Encounter Status (planned, in-progress, completed)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
