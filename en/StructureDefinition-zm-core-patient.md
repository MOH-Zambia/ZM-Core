# ZM-Core Patient Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Patient Profile**

## Resource Profile: ZM-Core Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCorePatient |

 
Zambia patient profile for use in health systems 

**Usages:**

* Refer to this Profile: [ZM-Core Adverse Event Profile](StructureDefinition-zm-core-adverse-event.md), [ZM-Core Allergy Intolerance Profile](StructureDefinition-zm-core-allergy-intolerance.md), [ZM-Core Appointment Profile](StructureDefinition-zm-core-appointment.md), [ZM-Core Care Plan Profile](StructureDefinition-zm-core-care-plan.md)... Show 13 more, [ZM-Core Communication Consent Profile](StructureDefinition-zm-core-communication-consent.md), [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md), [ZM-Core Condition Profile](StructureDefinition-zm-core-condition.md), [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Encounter Profile](StructureDefinition-zm-core-encounter.md), [ZM-Core Immunization Profile](StructureDefinition-zm-core-immunization.md), [ZM-Core Medication Dispense Profile](StructureDefinition-zm-core-medication-dispense.md), [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md), [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md), [ZM-Core Procedure Profile](StructureDefinition-zm-core-procedure.md), [ZM-Core Related Person Profile](StructureDefinition-zm-core-related-person.md), [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md) and [ZM-Core Specimen Profile](StructureDefinition-zm-core-specimen.md)
* Examples for this Profile: [Patient/ExampleZMCorePatient](Patient-ExampleZMCorePatient.md) and [Patient/zm-core-patient-example-json](Patient-zm-core-patient-example-json.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-patient.csv), [Excel](../StructureDefinition-zm-core-patient.xlsx), [Schematron](../StructureDefinition-zm-core-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-patient",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
  "version" : "0.1.0",
  "name" : "ZMCorePatient",
  "title" : "ZM-Core Patient Profile",
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
  "description" : "Zambia patient profile for use in health systems",
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
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "National and programme identifiers evidenced in SmartCare Pro.",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nrc",
      "path" : "Patient.identifier",
      "sliceName" : "nrc",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nrc.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/nrc"
    },
    {
      "id" : "Patient.identifier:nupn",
      "path" : "Patient.identifier",
      "sliceName" : "nupn",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:nupn.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/nupn"
    },
    {
      "id" : "Patient.identifier:napsa",
      "path" : "Patient.identifier",
      "sliceName" : "napsa",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:napsa.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/napsa-number"
    },
    {
      "id" : "Patient.identifier:underFiveCard",
      "path" : "Patient.identifier",
      "sliceName" : "underFiveCard",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:underFiveCard.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/under-five-card-number"
    },
    {
      "id" : "Patient.identifier:artNumber",
      "path" : "Patient.identifier",
      "sliceName" : "artNumber",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:artNumber.system",
      "path" : "Patient.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/art-number"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "mustSupport" : true
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "mustSupport" : true
    }]
  }
}

```
