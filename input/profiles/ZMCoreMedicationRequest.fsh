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
* medication[x] 1..1 MS
* dosageInstruction MS
