# Example ZM-Core Adverse Event Following Immunization - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Adverse Event Following Immunization**

## Example AdverseEvent: Example ZM-Core Adverse Event Following Immunization

Profile: [ZM-Core Adverse Event Profile](StructureDefinition-zm-core-adverse-event.md)

**status**: Completed

**actuality**: Adverse Event

**category**: Adverse event following immunization

**code**: Fever following immunization

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**encounter**: [Encounter: status = completed; class = ambulatory; type = ; actualPeriod = 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200](Encounter-ExampleZMCoreEncounter.md)

**occurrence**: 2026-08-08 18:00:00+0200

**recordedDate**: 2026-08-09 08:00:00+0200

**recorder**: [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md)

### SuspectEntities

| | |
| :--- | :--- |
| - | **Instance[x]** |
| * | [Immunization: status = completed; vaccineCode = ; lotNumber = BCG-LOT-001; occurrence[x] = 2026-08-08 10:00:00+0200; primarySource = true; route = ; doseQuantity = 0.05 mL](Immunization-ExampleZMCoreImmunization.md) |

**note**: 

> 

Caregiver reported fever after vaccination.




## Resource Content

```json
{
  "resourceType" : "AdverseEvent",
  "id" : "ExampleZMCoreAdverseEventFollowingImmunization",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-adverse-event"]
  },
  "status" : "completed",
  "actuality" : "actual",
  "category" : [{
    "text" : "Adverse event following immunization"
  }],
  "code" : {
    "text" : "Fever following immunization"
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "occurrenceDateTime" : "2026-08-08T18:00:00+02:00",
  "recordedDate" : "2026-08-09T08:00:00+02:00",
  "recorder" : {
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  },
  "suspectEntity" : [{
    "instanceReference" : {
      "reference" : "Immunization/ExampleZMCoreImmunization"
    }
  }],
  "note" : [{
    "text" : "Caregiver reported fever after vaccination."
  }]
}

```
