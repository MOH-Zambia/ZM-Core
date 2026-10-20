// ==========================================================================
// Example ZM-Core Healthcare Service
// ==========================================================================

Instance: ExampleZMCoreHealthcareService
InstanceOf: ZMCoreHealthcareService
Title: "Example ZM-Core Healthcare Service"
Description: "Example facility reporting service used by the DHIS2 reminder pilot."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/healthcare-service-id"
* identifier.value = "HF001-DHIS2"
* active = true
* providedBy = Reference(ExampleZMCoreOrganization)
* type.text = "Routine health information reporting"
* location = Reference(ExampleZMCoreLocation)
* name = "DHIS2 Reporting Service"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "dhis2.reporting@example.org"
