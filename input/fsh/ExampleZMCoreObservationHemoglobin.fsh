// ==========================================================================
// Example ZM-Core Hemoglobin Observation
// ==========================================================================

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
