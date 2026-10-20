// ==========================================================================
// ZM-Core Communication Request Profile
// ==========================================================================

Profile: ZMCoreCommunicationRequest
Parent: CommunicationRequest
Id: zm-core-communication-request
Title: "ZM-Core Communication Request Profile"
Description: "A governed request from a Ministry health system to the Unified Health Communication Hub to route and deliver information."
* extension contains
    ZMCommunicationDataClassification named dataClassification 1..1 MS and
    ZMCommunicationFallbackChannel named fallbackChannel 0..* MS and
    ZMCommunicationTemplate named approvedTemplate 1..1 MS and
    ZMCommunicationMessageLanguage named messageLanguage 1..1 MS and
    ZMCommunicationAcknowledgementRequired named acknowledgementRequired 1..1 MS and
    ZMCommunicationExpiry named expiry 1..1 MS and
    ZMCommunicationRequestingSystem named requestingSystem 1..1 MS
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status MS
* statusReason MS
* intent MS
* category 1..* MS
* category from ZMCommunicationLaneVS (required)
* priority 1..1 MS
* medium 1..1 MS
* medium from ZMCommunicationChannelVS (required)
* subject MS
* about MS
* encounter MS
* payload 1..* MS
* payload.content[x] MS
* occurrence[x] 1..1 MS
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization)
* recipient 1..* MS
* recipient only Reference(ZMCorePatient or ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or ZMCoreGroup or ZMCoreHealthcareService or CareTeam or RelatedPerson)
* informationProvider MS
* reason 1..* MS
* note MS
