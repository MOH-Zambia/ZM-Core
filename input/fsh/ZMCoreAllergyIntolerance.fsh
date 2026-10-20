// ==========================================================================
// ZM-Core Allergy Intolerance Profile
// ==========================================================================

Profile: ZMCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: zm-core-allergy-intolerance
Title: "ZM-Core Allergy Intolerance Profile"
Description: "Zambia allergy and intolerance profile for allergy substances, medicinal products, severity, and reactions."
* identifier MS
* clinicalStatus 1..1 MS
* verificationStatus MS
* type MS
* category MS
* criticality MS
* code 1..1 MS
* patient 1..1 MS
* patient only Reference(ZMCorePatient)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* recordedDate MS
* participant MS
* reaction MS
* reaction.manifestation 1..* MS
* reaction.severity MS
