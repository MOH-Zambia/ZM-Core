// ==========================================================================
// ZM-Core Procedure Profile
// ==========================================================================

Profile: ZMCoreProcedure
Parent: Procedure
Id: zm-core-procedure
Title: "ZM-Core Procedure Profile"
Description: "Zambia procedure profile for surgical, diagnostic, therapeutic, and programme procedures."
* identifier MS
* status MS
* statusReason MS
* category MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] 1..1 MS
* recorded MS
* recorder MS
* performer 1..* MS
* performer.actor 1..1 MS
* location MS
* location only Reference(ZMCoreLocation)
* reason MS
* outcome MS
* report MS
* complication MS
* followUp MS
* note MS
