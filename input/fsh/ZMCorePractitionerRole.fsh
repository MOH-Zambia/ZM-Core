// ==========================================================================
// ZM-Core Practitioner Role Profile
// ==========================================================================

Profile: ZMCorePractitionerRole
Parent: PractitionerRole
Id: zm-core-practitioner-role
Title: "ZM-Core Practitioner Role Profile"
Description: "A current health-worker role used to route communications by responsibility rather than by hard-coded contact details."
* identifier 1..* MS
* active 1..1 MS
* period MS
* practitioner 1..1 MS
* practitioner only Reference(ZMCorePractitioner)
* organization 1..1 MS
* organization only Reference(ZMCoreOrganization)
* code 1..* MS
* specialty MS
* location 1..* MS
* location only Reference(ZMCoreLocation)
* healthcareService MS
* healthcareService only Reference(ZMCoreHealthcareService)
* contact 1..* MS
* communication MS
* availability MS
* endpoint MS
