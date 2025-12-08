// ZM-Core Example Resources
// Example instances demonstrating ZM-Core profiles

// ============================================================================
// Patient
// ============================================================================
Instance: ExampleZMCorePatient
InstanceOf: ZMCorePatient
Title: "Example ZM-Core Patient"
Description: "Example patient from Lusaka, Zambia"
* identifier
  * system = "http://moh-zambia.github.io/zm-core/sid/nrc"
  * value = "123456/12/1"
* name[0].family = "Mwale"
* name[0].given[0] = "John"
* gender = #male
* birthDate = "1985-05-15"
* address[0].city = "Lusaka"
* address[0].country = "ZM"

// ============================================================================
// Practitioner
// ============================================================================
Instance: ExampleZMCorePractitioner
InstanceOf: ZMCorePractitioner
Title: "Example ZM-Core Practitioner"
Description: "Example medical doctor"
* identifier
  * system = "http://moh-zambia.github.io/zm-core/sid/registration-id"
  * value = "DOC-001"
* name[0].family = "Phiri"
* name[0].given[0] = "Mary"
* gender = #female
* qualification[0].code.coding[0] = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"

// ============================================================================
// Organization
// ============================================================================
Instance: ExampleZMCoreOrganization
InstanceOf: ZMCoreOrganization
Title: "Example ZM-Core Organization"
Description: "Example health facility in Zambia"
* identifier
  * system = "http://moh-zambia.github.io/zm-core/sid/facility-id"
  * value = "HF001"
* name = "University Teaching Hospital"
* type[0].coding[0] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* contact[0].address.city = "Lusaka"
* contact[0].address.country = "ZM"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+260 211 123456"

// ============================================================================
// Encounter
// ============================================================================
Instance: ExampleZMCoreEncounter
InstanceOf: ZMCoreEncounter
Title: "Example ZM-Core Encounter"
Description: "Example outpatient encounter"
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0].coding[0] = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACCTREVIEW "account review"
* subject = Reference(ExampleZMCorePatient)
* serviceProvider = Reference(ExampleZMCoreOrganization)
* actualPeriod.start = "2025-11-15T09:00:00+02:00"
* actualPeriod.end = "2025-11-15T10:30:00+02:00"


// ============================================================================
// Condition
// ============================================================================
Instance: ExampleZMCoreCondition
InstanceOf: ZMCoreCondition
Title: "Example ZM-Core Condition"
Description: "Example diagnosis of hypertension"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem list item"
* code.coding[0] = http://snomed.info/sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(ExampleZMCorePatient)
* recordedDate = "2025-11-15"

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

// ============================================================================
// Medication
// ============================================================================
Instance: ExampleZMCoreMedication
InstanceOf: ZMCoreMedication
Title: "Example ZM-Core Medication"
Description: "Example paracetamol 500mg tablet"
* code.coding[0].system = "http://snomed.info/sct"
* code.coding[0].code = #387106007
* code.coding[0].display = "Paracetamol 500mg tablet"
* doseForm.coding[0] = http://snomed.info/sct#385055001 "Tablet"

// ============================================================================
// MedicationRequest
// ============================================================================
Instance: ExampleZMCoreMedicationRequest
InstanceOf: ZMCoreMedicationRequest
Title: "Example ZM-Core MedicationRequest"
Description: "Example medication prescription"
* status = #active
* intent = #order
* subject = Reference(ExampleZMCorePatient)
* medication.reference = Reference(ExampleZMCoreMedication)
* dosageInstruction[0].text = "Take 500mg twice daily for 5 days"
* dosageInstruction[0].timing.repeat.frequency = 2
* dosageInstruction[0].timing.repeat.period = 1
* dosageInstruction[0].timing.repeat.periodUnit = #d
* dosageInstruction[0].doseAndRate[0].doseQuantity.value = 500
* dosageInstruction[0].doseAndRate[0].doseQuantity.unit = "mg"
* dosageInstruction[0].doseAndRate[0].doseQuantity.system = "http://unitsofmeasure.org"
* dosageInstruction[0].doseAndRate[0].doseQuantity.code = #mg