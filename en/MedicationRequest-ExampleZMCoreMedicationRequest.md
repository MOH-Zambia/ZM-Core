# Example ZM-Core MedicationRequest - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core MedicationRequest**

## Example MedicationRequest: Example ZM-Core MedicationRequest

Profile: [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md)

**status**: Active

**intent**: Order

### Medications

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Medication Betamethasone 0.1% w/w cream /ointment tube](Medication-ExampleZMCoreMedication.md) |

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**encounter**: [Encounter: status = completed; class = ambulatory; type = ; actualPeriod = 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200](Encounter-ExampleZMCoreEncounter.md)

**authoredOn**: 2025-11-15 09:45:00+0200

**requester**: [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md)

> **dosageInstruction****text**: Take 500mg twice daily for 5 days**timing**: 2 per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 500 mg (Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "ExampleZMCoreMedicationRequest",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-request"]
  },
  "status" : "active",
  "intent" : "order",
  "medication" : {
    "reference" : {
      "reference" : "Medication/ExampleZMCoreMedication"
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "authoredOn" : "2025-11-15T09:45:00+02:00",
  "requester" : {
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  },
  "dosageInstruction" : [{
    "text" : "Take 500mg twice daily for 5 days",
    "timing" : {
      "repeat" : {
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 500,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
