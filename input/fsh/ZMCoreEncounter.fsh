// ============================================================================
// Encounter Profile
// ============================================================================
Profile: ZMCoreEncounter
Parent: Encounter
Id: zm-core-encounter
Title: "ZM-Core Encounter Profile"
Description: "Zambia health encounter profile"
* status MS
* class MS
* type MS
* subject 1..1 MS
* serviceProvider 0..1 MS
* serviceProvider only Reference(Organization)
* actualPeriod.start MS
* actualPeriod.end MS