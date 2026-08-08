// ============================================================================
// MedicationRequest Profile
// ============================================================================
Profile: ZMCoreMedicationRequest
Parent: MedicationRequest
Id: zm-core-medication-request
Title: "ZM-Core MedicationRequest Profile"
Description: "Zambia medication request profile"
* status MS
* intent MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* medication 1..1 MS
* medication only CodeableReference(ZMCoreMedication)
* authoredOn MS
* requester 1..1 MS
* requester only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or ZMCorePatient or ZMCoreRelatedPerson)
* reason MS
* dosageInstruction 0..* MS
* dispenseRequest MS
* dispenseRequest.quantity MS
* dispenseRequest.expectedSupplyDuration MS
