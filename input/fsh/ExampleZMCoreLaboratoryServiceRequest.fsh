// ==========================================================================
// Example ZM-Core Laboratory Service Request
// ==========================================================================

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
