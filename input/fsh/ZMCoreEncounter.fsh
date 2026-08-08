// ============================================================================
// Encounter Profile
// ============================================================================
Profile: ZMCoreEncounter
Parent: Encounter
Id: zm-core-encounter
Title: "ZM-Core Encounter Profile"
Description: "Zambia health encounter profile"
* identifier MS
* status MS
* class MS
* type MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* participant MS
* participant.actor MS
* serviceProvider 0..1 MS
* serviceProvider only Reference(ZMCoreOrganization)
* location MS
* location.location only Reference(ZMCoreLocation)
* actualPeriod.start MS
* actualPeriod.end MS
* reason MS
* diagnosis MS
* admission MS
