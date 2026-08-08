// ============================================================================
// SmartCare-aligned laboratory workflow example
// ============================================================================

Instance: ExampleZMCoreLaboratoryServiceRequest
InstanceOf: ZMCoreServiceRequest
Title: "Example ZM-Core Laboratory Service Request"
Description: "A laboratory order corresponding to a SmartCare Pro Investigation."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/laboratory-order-number"
* identifier.value = "LAB-REQ-2026-000001"
* requisition.system = "http://hapi.moh.gov.zm/fhir/sid/laboratory-requisition-number"
* requisition.value = "LAB-BATCH-2026-000001"
* status = #completed
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure"
* priority = #routine
* code.concept = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* authoredOn = "2026-08-08T08:45:00+02:00"
* requester = Reference(ExampleZMCorePractitioner)
* performer = Reference(ExampleZMCoreOrganization)
* specimen = Reference(ExampleZMCoreSpecimenBlood)
* note.text = "Routine full blood count sample."

Instance: ExampleZMCoreSpecimenBlood
InstanceOf: ZMCoreSpecimen
Title: "Example ZM-Core Blood Specimen"
Description: "A blood specimen corresponding to SmartCare Pro identified sample collection data."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/specimen-id"
* identifier.value = "SPM-2026-000001"
* accessionIdentifier.system = "http://hapi.moh.gov.zm/fhir/sid/laboratory-accession-number"
* accessionIdentifier.value = "ACC-2026-000001"
* status = #available
* type = http://snomed.info/sct#119297000 "Blood specimen"
* subject = Reference(ExampleZMCorePatient)
* request = Reference(ExampleZMCoreLaboratoryServiceRequest)
* collection.collector = Reference(ExampleZMCorePractitioner)
* collection.collectedDateTime = "2026-08-08T09:00:00+02:00"
* collection.quantity.value = 4
* collection.quantity.unit = "mL"
* collection.quantity.system = "http://unitsofmeasure.org"
* collection.quantity.code = #mL
* receivedTime = "2026-08-08T09:20:00+02:00"

Instance: ExampleZMCoreAllergyIntolerance
InstanceOf: ZMCoreAllergyIntolerance
Title: "Example ZM-Core Allergy Intolerance"
Description: "An allergy corresponding to a SmartCare Pro IdentifiedAllergy."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #medication
* criticality = #high
* code.text = "Penicillin"
* patient = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* recordedDate = "2026-08-08T08:30:00+02:00"
* reaction.manifestation.concept.text = "Generalized urticaria"
* reaction.severity = #severe

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

Instance: ExampleZMCoreAdverseEventFollowingImmunization
InstanceOf: ZMCoreAdverseEvent
Title: "Example ZM-Core Adverse Event Following Immunization"
Description: "An AEFI corresponding to SmartCare Pro AdverseEvent data."
* status = #completed
* actuality = #actual
* category.text = "Adverse event following immunization"
* code.text = "Fever following immunization"
* subject = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* occurrenceDateTime = "2026-08-08T18:00:00+02:00"
* recordedDate = "2026-08-09T08:00:00+02:00"
* recorder = Reference(ExampleZMCorePractitioner)
* suspectEntity.instanceReference = Reference(ExampleZMCoreImmunization)
* note.text = "Caregiver reported fever after vaccination."
