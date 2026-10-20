// ==========================================================================
// Example ZM-Core Blood Specimen
// ==========================================================================

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
