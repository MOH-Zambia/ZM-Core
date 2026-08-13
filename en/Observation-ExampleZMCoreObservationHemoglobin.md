# Example ZM-Core Hemoglobin Observation - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Hemoglobin Observation**

## Example Observation: Example ZM-Core Hemoglobin Observation

Profile: [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobin [Mass/volume] in Blood

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**effective**: 2026-08-08 09:30:00+0200

**performer**: [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md)

**value**: 13.2 g/dL (Details: UCUM codeg/dL = 'g/dL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleZMCoreObservationHemoglobin",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-observation"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "718-7",
      "display" : "Hemoglobin [Mass/volume] in Blood"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "effectiveDateTime" : "2026-08-08T09:30:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  }],
  "valueQuantity" : {
    "value" : 13.2,
    "unit" : "g/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "g/dL"
  }
}

```
