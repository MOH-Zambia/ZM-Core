# Example ZM-Core Immunization - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Immunization**

## Example Immunization: Example ZM-Core Immunization

Profile: [ZM-Core Immunization Profile](StructureDefinition-zm-core-immunization.md)

**status**: Completed

**vaccineCode**: BCG vaccine

**lotNumber**: BCG-LOT-001

**patient**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**encounter**: [Encounter: status = completed; class = ambulatory; type = ; actualPeriod = 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200](Encounter-ExampleZMCoreEncounter.md)

**occurrence**: 2026-08-08 10:00:00+0200

**primarySource**: true

**location**: [Location University Teaching Hospital](Location-ExampleZMCoreLocation.md)

**route**: Intradermal route

**doseQuantity**: 0.05 mL (Details: UCUM codemL = 'mL')

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md) |

### ProtocolApplieds

| | |
| :--- | :--- |
| - | **DoseNumber** |
| * | 1 |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "ExampleZMCoreImmunization",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-immunization"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "text" : "BCG vaccine"
  },
  "lotNumber" : "BCG-LOT-001",
  "patient" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "occurrenceDateTime" : "2026-08-08T10:00:00+02:00",
  "primarySource" : true,
  "location" : {
    "reference" : "Location/ExampleZMCoreLocation"
  },
  "route" : {
    "text" : "Intradermal route"
  },
  "doseQuantity" : {
    "value" : 0.05,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/ExampleZMCorePractitioner"
    }
  }],
  "protocolApplied" : [{
    "doseNumber" : "1"
  }]
}

```
