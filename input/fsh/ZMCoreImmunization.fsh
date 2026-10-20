// ==========================================================================
// ZM-Core Immunization Profile
// ==========================================================================

Profile: ZMCoreImmunization
Parent: Immunization
Id: zm-core-immunization
Title: "ZM-Core Immunization Profile"
Description: "Zambia immunization profile for vaccines administered to a patient."
* identifier MS
* status MS
* statusReason MS
* vaccineCode MS
* administeredProduct MS
* patient 1..1 MS
* patient only Reference(ZMCorePatient)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] 1..1 MS
* primarySource MS
* location MS
* location only Reference(ZMCoreLocation)
* lotNumber MS
* expirationDate MS
* site MS
* route MS
* doseQuantity MS
* performer MS
* reason MS
* reaction MS
* reaction.date MS
* reaction.manifestation MS
* protocolApplied MS
* protocolApplied.doseNumber MS
