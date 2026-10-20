// ==========================================================================
// ZM-Core Related Person Profile
// ==========================================================================

Profile: ZMCoreRelatedPerson
Parent: RelatedPerson
Id: zm-core-related-person
Title: "ZM-Core Related Person Profile"
Description: "Zambia related person profile for next of kin, caregivers, guardians, treatment supporters, and patient-linked contacts."
* identifier MS
* active MS
* patient 1..1 MS
* patient only Reference(ZMCorePatient)
* relationship 1..* MS
* name 1..* MS
* name.family MS
* name.given MS
* telecom MS
* address MS
* gender MS
* birthDate MS
* period MS
* communication MS
