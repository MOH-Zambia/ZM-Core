# ZM-Core Practitioner Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Practitioner Profile**

## Resource Profile: ZM-Core Practitioner Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCorePractitioner |

 
Zambia health workforce practitioner profile 

**Usages:**

* Refer to this Profile: [ZM-Core Adverse Event Profile](StructureDefinition-zm-core-adverse-event.md), [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md), [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md)... Show 3 more, [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md), [ZM-Core Practitioner Role Profile](StructureDefinition-zm-core-practitioner-role.md) and [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md)
* Examples for this Profile: [Practitioner/ExampleZMCorePractitioner](Practitioner-ExampleZMCorePractitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-practitioner.csv), [Excel](../StructureDefinition-zm-core-practitioner.xlsx), [Schematron](../StructureDefinition-zm-core-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-practitioner",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
  "version" : "0.1.0",
  "name" : "ZMCorePractitioner",
  "title" : "ZM-Core Practitioner Profile",
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
  "description" : "Zambia health workforce practitioner profile",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Different identifiers captured for an employee/practitioner in HRMS.",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:nrc",
      "path" : "Practitioner.identifier",
      "sliceName" : "nrc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:nrc.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/nrc",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:nrc.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "constraint" : [{
        "key" : "zm-nrc",
        "severity" : "error",
        "human" : "NRC must match the Zambian NRC format: 6 digits / 2 digits / 1 digit (e.g., 123456/78/1).",
        "expression" : "matches('^[0-9]{6}/[0-9]{2}/[0-9]{1}$')",
        "source" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:employeeNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "employeeNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:employeeNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/employee-number",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:employeeNumber.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:institutionFileNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "institutionFileNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:institutionFileNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/institution-file-number",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:institutionFileNumber.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:psmdFileNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "psmdFileNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:psmdFileNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/psmd-file-number",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:psmdFileNumber.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:pspfMemberNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "pspfMemberNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:pspfMemberNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/pspf-member-number",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:pspfMemberNumber.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:aeNumber",
      "path" : "Practitioner.identifier",
      "sliceName" : "aeNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:aeNumber.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/ae-number",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:aeNumber.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:professionalRegistration",
      "path" : "Practitioner.identifier",
      "sliceName" : "professionalRegistration",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:professionalRegistration.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/registration-id",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:professionalRegistration.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "use"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name:official",
      "path" : "Practitioner.name",
      "sliceName" : "official",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name:official.use",
      "path" : "Practitioner.name.use",
      "min" : 1,
      "patternCode" : "official"
    },
    {
      "id" : "Practitioner.name:official.family",
      "path" : "Practitioner.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name:official.given",
      "path" : "Practitioner.name.given",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name:maiden",
      "path" : "Practitioner.name",
      "sliceName" : "maiden",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name:maiden.use",
      "path" : "Practitioner.name.use",
      "min" : 1,
      "patternCode" : "maiden"
    },
    {
      "id" : "Practitioner.name:maiden.family",
      "path" : "Practitioner.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.gender",
      "path" : "Practitioner.gender",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.birthDate",
      "path" : "Practitioner.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.code",
      "path" : "Practitioner.qualification.code",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.period",
      "path" : "Practitioner.qualification.period",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "mustSupport" : true
    }]
  }
}

```
