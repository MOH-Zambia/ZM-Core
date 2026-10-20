// ==========================================================================
// ZM-Core Healthcare Service Profile
// ==========================================================================

Profile: ZMCoreHealthcareService
Parent: HealthcareService
Id: zm-core-healthcare-service
Title: "ZM-Core Healthcare Service Profile"
Description: "A service directory entry used to resolve facilities, responsible teams, service coverage, and communication contacts."
* identifier 1..* MS
* active 1..1 MS
* providedBy 1..1 MS
* providedBy only Reference(ZMCoreOrganization)
* offeredIn MS
* category MS
* type 1..* MS
* specialty MS
* location 1..* MS
* location only Reference(ZMCoreLocation)
* name 1..1 MS
* contact 1..* MS
* coverageArea MS
* program MS
* characteristic MS
* communication MS
* availability MS
* endpoint MS
