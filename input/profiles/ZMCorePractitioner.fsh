// ============================================================================
// Practitioner Profile
// ============================================================================
Profile: ZMCorePractitioner
Parent: Practitioner
Id: zm-core-practitioner
Title: "ZM-Core Practitioner Profile"
Description: "Zambia healthcare practitioner profile"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS
* qualification MS
* qualification.code MS
* telecom MS