Instance: ExampleZMCoreImmunization
InstanceOf: ZMCoreImmunization
Title: "Example ZM-Core Immunization"
Description: "An administered vaccine corresponding to a SmartCare Pro ImmunizationRecord."
* status = #completed
* vaccineCode.text = "BCG vaccine"
* patient = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* occurrenceDateTime = "2026-08-08T10:00:00+02:00"
* primarySource = true
* location = Reference(ExampleZMCoreLocation)
* lotNumber = "BCG-LOT-001"
* route.text = "Intradermal route"
* doseQuantity.value = 0.05
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL
* performer.actor = Reference(ExampleZMCorePractitioner)
* protocolApplied.doseNumber = "1"
