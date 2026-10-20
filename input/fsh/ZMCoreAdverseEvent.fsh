// ==========================================================================
// ZM-Core Adverse Event Profile
// ==========================================================================

Profile: ZMCoreAdverseEvent
Parent: AdverseEvent
Id: zm-core-adverse-event
Title: "ZM-Core Adverse Event Profile"
Description: "Zambia adverse event profile, including adverse events following immunization."
* identifier MS
* status MS
* actuality MS
* category 1..* MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup or ZMCorePractitioner or ZMCoreRelatedPerson)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] 1..1 MS
* recordedDate MS
* resultingEffect MS
* location MS
* location only Reference(ZMCoreLocation)
* seriousness MS
* outcome MS
* recorder MS
* suspectEntity 1..* MS
* suspectEntity.instance[x] MS
* note MS
