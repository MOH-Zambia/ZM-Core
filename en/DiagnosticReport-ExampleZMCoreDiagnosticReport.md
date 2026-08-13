# Example ZM-Core Diagnostic Report - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Diagnostic Report**

## Example DiagnosticReport: Example ZM-Core Diagnostic Report

Profile: [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md)

## Laboratory report (Laboratory) 

| | |
| :--- | :--- |
| Subject | John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1) |
| Relevant Time | 2026-08-08 09:30:00+0200 |
| Reported | 2026-08-08 11:00:00+0200 |
| Performer | [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md) |
| Identifier | `http://hapi.moh.gov.zm/fhir/sid/diagnostic-report-id`/LAB-2026-000001 |

**Report Details**

* **Code**: [Hemoglobin [Mass/volume] in Blood](Observation-ExampleZMCoreObservationHemoglobin.md)
  * **Value**: 13.2 g/dL (Details: UCUM codeg/dL = 'g/dL')
  * **Flags**: Final

Hemoglobin result is within the expected reference range.

**Coded Conclusions:**

* Hemoglobin within expected reference range



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "ExampleZMCoreDiagnosticReport",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-diagnostic-report"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/diagnostic-report-id",
    "value" : "LAB-2026-000001"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/ExampleZMCoreLaboratoryServiceRequest"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
      "code" : "LAB",
      "display" : "Laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11502-2",
      "display" : "Laboratory report"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "effectiveDateTime" : "2026-08-08T09:30:00+02:00",
  "issued" : "2026-08-08T11:00:00+02:00",
  "performer" : [{
    "reference" : "Organization/ExampleZMCoreOrganization"
  }],
  "resultsInterpreter" : [{
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  }],
  "specimen" : [{
    "reference" : "Specimen/ExampleZMCoreSpecimenBlood"
  }],
  "result" : [{
    "reference" : "Observation/ExampleZMCoreObservationHemoglobin"
  }],
  "conclusion" : "Hemoglobin result is within the expected reference range.",
  "conclusionCode" : [{
    "text" : "Hemoglobin within expected reference range"
  }]
}

```
