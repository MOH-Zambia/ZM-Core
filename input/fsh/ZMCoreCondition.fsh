// ============================================================================
// Condition Profile
// ============================================================================
Profile: ZMCoreCondition
Parent: Condition
Id: zm-core-condition
Title: "ZM-Core Condition Profile"
Description: "Zambia diagnosis/condition profile"
* clinicalStatus 1..1 MS
* clinicalStatus only CodeableConcept
* verificationStatus 0..1 MS
* verificationStatus only CodeableConcept
* subject 1..1 MS
* code 1..1 MS
* onsetDateTime MS
* recordedDate MS