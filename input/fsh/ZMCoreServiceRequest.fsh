// ==========================================================================
// ZM-Core Service Request Profile
// ==========================================================================

Profile: ZMCoreServiceRequest
Parent: ServiceRequest
Id: zm-core-service-request
Title: "ZM-Core Service Request Profile"
Description: "Zambia request profile for laboratory, imaging, procedure, and referral services."
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* requisition MS
* status MS
* intent MS
* category 1..* MS
* priority MS
* code 1..1 MS
* orderDetail MS
* quantity[x] MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] MS
* authoredOn MS
* requester 1..1 MS
* requester only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or ZMCorePatient or ZMCoreRelatedPerson)
* performer MS
* performer only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or ZMCoreHealthcareService or CareTeam or Device)
* location MS
* location only CodeableReference(ZMCoreLocation)
* reason MS
* supportingInfo MS
* specimen MS
* specimen only Reference(ZMCoreSpecimen)
* note MS
