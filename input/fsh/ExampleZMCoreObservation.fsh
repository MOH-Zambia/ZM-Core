// ============================================================================
// Observation (Blood Pressure)
// ============================================================================
Instance: ExampleZMCoreObservationBP
InstanceOf: ZMCoreObservation
Title: "Example ZM-Core Observation - Blood Pressure"
Description: "Example blood pressure reading"
* status = #final
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding[0] = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(ExampleZMCorePatient)
* effectiveDateTime = "2025-11-15T09:15:00+02:00"
* performer = Reference(ExampleZMCorePractitioner)
* component[0].code.coding[0] = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 140
* component[0].valueQuantity.unit = "mm[Hg]"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #mm[Hg]
* component[1].code.coding[0] = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 90
* component[1].valueQuantity.unit = "mm[Hg]"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #mm[Hg]
