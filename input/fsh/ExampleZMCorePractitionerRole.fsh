// ==========================================================================
// Example ZM-Core Practitioner Role
// ==========================================================================

Instance: ExampleZMCorePractitionerRole
InstanceOf: ZMCorePractitionerRole
Title: "Example ZM-Core Practitioner Role"
Description: "Example current District Health Information Officer role resolved from the provider directory."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/practitioner-role-id"
* identifier.value = "DHO-LSK-DHIO-001"
* active = true
* practitioner = Reference(ExampleZMCorePractitioner)
* organization = Reference(ExampleZMCoreOrganization)
* code.text = "District Health Information Officer"
* location = Reference(ExampleZMCoreLocation)
* healthcareService = Reference(ExampleZMCoreHealthcareService)
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "dhio.lusaka@example.org"
* contact[0].telecom[1].system = #phone
* contact[0].telecom[1].value = "+260-97-111-2233"
* communication = urn:ietf:bcp:47#en "English"
