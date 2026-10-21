# Example ZM-Core Procedure - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Procedure**

## Example Procedure: Example ZM-Core Procedure

Profile: [ZM-Core Procedure Profile](StructureDefinition-zm-core-procedure.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/procedure-id`/PROC-2025-000001

**status**: Completed

**code**: Lifestyle counselling for hypertension

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**encounter**: [Encounter: status = completed; class = ambulatory; type = ; actualPeriod = 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200](Encounter-ExampleZMCoreEncounter.md)

**occurrence**: 2025-11-15 10:00:00+0200 --> 2025-11-15 10:20:00+0200

**recorded**: 2025-11-15 10:25:00+0200

**recorder**: [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md) |

### Reasons

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Condition Hypertensive disorder, systemic arterial (disorder)](Condition-ExampleZMCoreCondition.md) |

**note**: 

> 

Counselling completed during the outpatient encounter.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ExampleZMCoreProcedure",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-procedure"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/procedure-id",
    "value" : "PROC-2025-000001"
  }],
  "status" : "completed",
  "code" : {
    "text" : "Lifestyle counselling for hypertension"
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "occurrencePeriod" : {
    "start" : "2025-11-15T10:00:00+02:00",
    "end" : "2025-11-15T10:20:00+02:00"
  },
  "recorded" : "2025-11-15T10:25:00+02:00",
  "recorder" : {
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/ExampleZMCorePractitioner"
    }
  }],
  "reason" : [{
    "reference" : {
      "reference" : "Condition/ExampleZMCoreCondition"
    }
  }],
  "note" : [{
    "text" : "Counselling completed during the outpatient encounter."
  }]
}

```
