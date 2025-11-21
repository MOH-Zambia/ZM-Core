// ZM-Core Example Resources
// Example instances demonstrating ZM-Core profiles

Instance: ExampleZMCorePatient
InstanceOf: ZMCorePatient
Id: zm-core-patient-example
Title: "Example ZM-Core Patient"
Description: "Example patient from Lusaka, Zambia"
* identifier
  * system = "http://moh-zambia.github.io/zm-core/sid/nrc"
  * value = "123456/12/1"
* name
  * family = "Mwale"
  * given = "John"
* gender = #male
* birthDate = "1985-05-15"
* address
  * city = "Lusaka"
  * country = "Zambia"


Instance: ExampleZMCoreOrganization
InstanceOf: ZMCoreOrganization
Id: zm-core-organization-example
Title: "Example ZM-Core Organization"
Description: "Example health facility in Zambia"
* identifier
  * system = "http://moh-zambia.github.io/zm-core/sid/facility-id"
  * value = "HF001"
* name = "University Teaching Hospital"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* address
  * city = "Lusaka"
  * country = "Zambia"
* telecom
  * system = #phone
  * value = "+260 211 123456"


Instance: ExampleZMCorePractitioner
InstanceOf: ZMCorePractitioner
Id: zm-core-practitioner-example
Title: "Example ZM-Core Practitioner"
Description: "Example healthcare provider in Zambia"
* identifier
  * system = "http://moh-zambia.github.io/zm-core/sid/provider-id"
  * value = "DOC001"
* name
  * family = "Banda"
  * given = "Mary"
* qualification
  * code = http://terminology.hl7.org/CodeSystem/v2-0360#MD


Instance: ExampleZMCoreEncounter
InstanceOf: ZMCoreEncounter
Id: zm-core-encounter-example
Title: "Example ZM-Core Encounter"
Description: "Example health facility visit"
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#ACCTREVIEW
* subject = Reference(ExampleZMCorePatient)
* serviceProvider = Reference(ExampleZMCoreOrganization)
* period
  * start = "2025-11-15T09:00:00Z"
  * end = "2025-11-15T10:30:00Z"


Instance: ExampleZMCoreCondition
InstanceOf: ZMCoreCondition
Id: zm-core-condition-example
Title: "Example ZM-Core Condition"
Description: "Example patient diagnosis"
* subject = Reference(ExampleZMCorePatient)
* code = http://snomed.info/sct#6142004 "Influenza"
* onsetDateTime = "2025-11-10T00:00:00Z"
* recordedDate = "2025-11-15"


Instance: ExampleZMCoreObservation
InstanceOf: ZMCoreObservation
Id: zm-core-observation-example
Title: "Example ZM-Core Observation"
Description: "Example vital sign measurement"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8480-6 "Systolic Blood Pressure"
* subject = Reference(ExampleZMCorePatient)
* effectiveDateTime = "2025-11-15T09:30:00Z"
* valueQuantity
  * value = 140
  * unit = "mm[Hg]"
  * system = "http://unitsofmeasure.org"
  * code = #mm[Hg]


Instance: ExampleZMCoreMedication
InstanceOf: ZMCoreMedication
Id: zm-core-medication-example
Title: "Example ZM-Core Medication"
Description: "Example medication from Zambian formulary"
* code = http://snomed.info/sct#387106007 "Paracetamol"
* form = http://snomed.info/sct#385055001 "Tablet"


Instance: ExampleZMCoreMedicationRequest
InstanceOf: ZMCoreMedicationRequest
Id: zm-core-medication-request-example
Title: "Example ZM-Core MedicationRequest"
Description: "Example medication prescription"
* status = #active
* intent = #order
* subject = Reference(ExampleZMCorePatient)
* medicationReference = Reference(ExampleZMCoreMedication)
* dosageInstruction
  * text = "Take 500mg twice daily for 5 days"
  * timing
    * repeat
      * frequency = 2
      * period = 1
      * periodUnit = #d
  * doseAndRate
    * doseQuantity
      * value = 500
      * unit = "mg"
      * system = "http://unitsofmeasure.org"
      * code = #mg
