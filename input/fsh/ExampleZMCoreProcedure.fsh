Instance: ExampleZMCoreProcedure
InstanceOf: ZMCoreProcedure
Title: "Example ZM-Core Procedure"
Description: "A completed outpatient counselling procedure linked to the patient's hypertension diagnosis."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/procedure-id"
* identifier.value = "PROC-2025-000001"
* status = #completed
* code.text = "Lifestyle counselling for hypertension"
* subject = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* occurrencePeriod.start = "2025-11-15T10:00:00+02:00"
* occurrencePeriod.end = "2025-11-15T10:20:00+02:00"
* recorded = "2025-11-15T10:25:00+02:00"
* recorder = Reference(ExampleZMCorePractitioner)
* performer.actor = Reference(ExampleZMCorePractitioner)
* reason.reference = Reference(ExampleZMCoreCondition)
* note.text = "Counselling completed during the outpatient encounter."
