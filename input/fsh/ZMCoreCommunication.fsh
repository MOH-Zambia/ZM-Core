// ==========================================================================
// ZM-Core Communication Profile
// ==========================================================================

Profile: ZMCoreCommunication
Parent: Communication
Id: zm-core-communication
Title: "ZM-Core Communication Profile"
Description: "The immutable delivery or receipt record produced for a communication request, including channel and delivery outcome."
* extension contains
    ZMCommunicationDataClassification named dataClassification 1..1 MS and
    ZMCommunicationTemplate named approvedTemplate 1..1 MS and
    ZMCommunicationMessageLanguage named messageLanguage 1..1 MS
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* basedOn 1..* MS
* basedOn only Reference(ZMCoreCommunicationRequest)
* inResponseTo MS
* status MS
* statusReason MS
* category 1..* MS
* category from ZMCommunicationLaneVS (required)
* priority MS
* medium 1..1 MS
* medium from ZMCommunicationChannelVS (required)
* subject MS
* topic MS
* about MS
* sent 1..1 MS
* received MS
* recipient 1..* MS
* sender 1..1 MS
* reason MS
* payload 1..* MS
* payload.content[x] MS
* note MS
