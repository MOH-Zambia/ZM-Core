// ==========================================================================
// Example ZM-Core Location
// ==========================================================================

Instance: ExampleZMCoreLocation
InstanceOf: ZMCoreLocation
Title: "Example ZM-Core Location"
Description: "Example physical facility location used by recipient resolution."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/facility-id"
* identifier.value = "HF001"
* status = #active
* name = "University Teaching Hospital"
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* address.city = "Lusaka"
* address.country = "ZM"
* managingOrganization = Reference(ExampleZMCoreOrganization)
