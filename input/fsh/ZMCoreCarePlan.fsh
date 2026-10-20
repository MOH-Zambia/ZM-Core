// ==========================================================================
// ZM-Core Care Plan Profile
// ==========================================================================

Profile: ZMCoreCarePlan
Parent: CarePlan
Id: zm-core-care-plan
Title: "ZM-Core Care Plan Profile"
Description: "Zambia care plan profile for treatment, nursing, and multidisciplinary plans."
* identifier MS
* status MS
* intent MS
* category MS
* title MS
* description MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* period MS
* created MS
* custodian MS
* contributor MS
* careTeam MS
* addresses MS
* supportingInfo MS
* goal MS
* activity MS
* note MS
