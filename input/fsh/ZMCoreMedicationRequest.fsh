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
* medication 1..1 MS
* medication only CodeableReference(ZMCoreMedication)
* dosageInstruction 0..* MS