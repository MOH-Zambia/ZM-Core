# Patient Demographics - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Demographics**

## Logical Model: Patient Demographics 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCorePatientDemographics | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCorePatientDemographics |

 
Core patient demographic information for Zambian health systems 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-ZMCorePatientDemographics.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-ZMCorePatientDemographics.csv), [Excel](../StructureDefinition-ZMCorePatientDemographics.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ZMCorePatientDemographics",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCorePatientDemographics",
  "version" : "0.1.0",
  "name" : "ZMCorePatientDemographics",
  "title" : "Patient Demographics",
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
  "description" : "Core patient demographic information for Zambian health systems",
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
  "type" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/ZMCorePatientDemographics",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ZMCorePatientDemographics",
      "path" : "ZMCorePatientDemographics",
      "short" : "Patient Demographics",
      "definition" : "Core patient demographic information for Zambian health systems"
    },
    {
      "id" : "ZMCorePatientDemographics.identifier",
      "path" : "ZMCorePatientDemographics.identifier",
      "short" : "Patient Identifier",
      "definition" : "Patient Identifier",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.fullName",
      "path" : "ZMCorePatientDemographics.fullName",
      "short" : "Patient Full Name",
      "definition" : "Patient Full Name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.firstName",
      "path" : "ZMCorePatientDemographics.firstName",
      "short" : "Patient First Name",
      "definition" : "Patient First Name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.lastName",
      "path" : "ZMCorePatientDemographics.lastName",
      "short" : "Patient Last Name",
      "definition" : "Patient Last Name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.birthDate",
      "path" : "ZMCorePatientDemographics.birthDate",
      "short" : "Date of Birth",
      "definition" : "Date of Birth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.gender",
      "path" : "ZMCorePatientDemographics.gender",
      "short" : "Gender",
      "definition" : "Gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.maritalStatus",
      "path" : "ZMCorePatientDemographics.maritalStatus",
      "short" : "Marital Status",
      "definition" : "Marital Status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.ethnicity",
      "path" : "ZMCorePatientDemographics.ethnicity",
      "short" : "Ethnicity",
      "definition" : "Ethnicity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.language",
      "path" : "ZMCorePatientDemographics.language",
      "short" : "Languages Spoken",
      "definition" : "Languages Spoken",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.address",
      "path" : "ZMCorePatientDemographics.address",
      "short" : "Patient Address",
      "definition" : "Patient Address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.contact",
      "path" : "ZMCorePatientDemographics.contact",
      "short" : "Contact Information",
      "definition" : "Contact Information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.nextOfKin",
      "path" : "ZMCorePatientDemographics.nextOfKin",
      "short" : "Next of Kin",
      "definition" : "Next of Kin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.dateCreated",
      "path" : "ZMCorePatientDemographics.dateCreated",
      "short" : "Record Creation Date",
      "definition" : "Record Creation Date",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "ZMCorePatientDemographics.dateModified",
      "path" : "ZMCorePatientDemographics.dateModified",
      "short" : "Record Last Modified Date",
      "definition" : "Record Last Modified Date",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
