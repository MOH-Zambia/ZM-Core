// ============================================================================
// DiagnosticReport example with a linked laboratory Observation
// ============================================================================

Instance: ExampleZMCoreObservationHemoglobin
InstanceOf: ZMCoreObservation
Title: "Example ZM-Core Hemoglobin Observation"
Description: "Example laboratory result referenced by a ZM-Core DiagnosticReport."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(ExampleZMCorePatient)
* effectiveDateTime = "2026-08-08T09:30:00+02:00"
* performer = Reference(ExampleZMCorePractitioner)
* valueQuantity.value = 13.2
* valueQuantity.unit = "g/dL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #g/dL

Instance: ExampleZMCoreDiagnosticReport
InstanceOf: ZMCoreDiagnosticReport
Title: "Example ZM-Core Diagnostic Report"
Description: "Example final laboratory report with a linked hemoglobin result."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/diagnostic-report-id"
* identifier.value = "LAB-2026-000001"
* basedOn = Reference(ExampleZMCoreLaboratoryServiceRequest)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code = http://loinc.org#11502-2 "Laboratory report"
* subject = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* effectiveDateTime = "2026-08-08T09:30:00+02:00"
* issued = "2026-08-08T11:00:00+02:00"
* performer = Reference(ExampleZMCoreOrganization)
* resultsInterpreter = Reference(ExampleZMCorePractitioner)
* specimen = Reference(ExampleZMCoreSpecimenBlood)
* result = Reference(ExampleZMCoreObservationHemoglobin)
* conclusion = "Hemoglobin result is within the expected reference range."
* conclusionCode.text = "Hemoglobin within expected reference range"
