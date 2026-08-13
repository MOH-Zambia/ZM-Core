# Example ZM-Core Allergy Intolerance - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Allergy Intolerance**

## Example AllergyIntolerance: Example ZM-Core Allergy Intolerance

Profile: [ZM-Core Allergy Intolerance Profile](StructureDefinition-zm-core-allergy-intolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**type**: allergy

**category**: Medication

**criticality**: High Risk

**code**: Penicillin

**patient**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**encounter**: [Encounter: status = completed; class = ambulatory; type = ; actualPeriod = 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200](Encounter-ExampleZMCoreEncounter.md)

**recordedDate**: 2026-08-08 08:30:00+0200

> **reaction**

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Generalized urticaria |

**severity**: Severe



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "ExampleZMCoreAllergyIntolerance",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-allergy-intolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "type" : {
    "coding" : [{
      "code" : "allergy"
    }]
  },
  "category" : ["medication"],
  "criticality" : "high",
  "code" : {
    "text" : "Penicillin"
  },
  "patient" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "recordedDate" : "2026-08-08T08:30:00+02:00",
  "reaction" : [{
    "manifestation" : [{
      "concept" : {
        "text" : "Generalized urticaria"
      }
    }],
    "severity" : "severe"
  }]
}

```
