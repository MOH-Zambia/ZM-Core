// ============================================================================
// Patient Profile
// ============================================================================
Profile: ZMCorePatient
Parent: Patient
Id: zm-core-patient
Title: "ZM-Core Patient Profile"
Description: "Zambia patient profile for use in health systems"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS
* birthDate 0..1 MS
* gender MS
* contact MS
* address MS