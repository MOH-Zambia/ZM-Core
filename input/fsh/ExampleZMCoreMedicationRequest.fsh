Instance: ExampleZMCoreMedicationRequest
InstanceOf: ZMCoreMedicationRequest
Title: "Example ZM-Core MedicationRequest"
Description: "Example medication prescription"
* status = #active
* intent = #order
* subject = Reference(ExampleZMCorePatient)
* medication.reference = Reference(ExampleZMCoreMedication)
* encounter = Reference(ExampleZMCoreEncounter)
* authoredOn = "2025-11-15T09:45:00+02:00"
* requester = Reference(ExampleZMCorePractitioner)
* dosageInstruction[0].text = "Take 500mg twice daily for 5 days"
* dosageInstruction[0].timing.repeat.frequency = 2
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 500
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #mg
