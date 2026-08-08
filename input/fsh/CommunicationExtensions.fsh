// ============================================================================
// Unified Health Communication Hub extensions
// ============================================================================

Extension: ZMCommunicationDataClassification
Id: zm-communication-data-classification
Title: "Communication Data Classification"
Description: "The governance classification used to determine permitted channels and payload disclosure."
Context: CommunicationRequest, Communication, Task
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ZMCommunicationDataClassificationVS (required)

Extension: ZMCommunicationFallbackChannel
Id: zm-communication-fallback-channel
Title: "Communication Fallback Channel"
Description: "An approved alternative channel to try if the preferred channel cannot deliver the message. Repetition order expresses routing order."
Context: CommunicationRequest
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ZMCommunicationChannelVS (required)

Extension: ZMCommunicationTemplate
Id: zm-communication-template
Title: "Approved Communication Template"
Description: "Identifier of the approved message template used to render the communication."
Context: CommunicationRequest, Communication
* value[x] only Identifier
* valueIdentifier 1..1
* valueIdentifier.system 1..1
* valueIdentifier.value 1..1

Extension: ZMCommunicationMessageLanguage
Id: zm-communication-message-language
Title: "Communication Message Language"
Description: "BCP-47 language code in which the recipient-facing message is rendered."
Context: CommunicationRequest, Communication
* value[x] only code
* valueCode 1..1
* valueCode from http://hl7.org/fhir/ValueSet/all-languages (required)

Extension: ZMCommunicationAcknowledgementRequired
Id: zm-communication-acknowledgement-required
Title: "Communication Acknowledgement Required"
Description: "Whether the workflow must create and track an acknowledgement or completion Task."
Context: CommunicationRequest
* value[x] only boolean
* valueBoolean 1..1

Extension: ZMCommunicationExpiry
Id: zm-communication-expiry
Title: "Communication Expiry"
Description: "The instant after which the request must not be delivered and should be completed, revoked, or escalated according to policy."
Context: CommunicationRequest
* value[x] only instant
* valueInstant 1..1

Extension: ZMCommunicationRequestingSystem
Id: zm-communication-requesting-system
Title: "Communication Requesting System"
Description: "The authoritative source system that submitted the communication request to the HIE."
Context: CommunicationRequest
* value[x] only Reference
* valueReference 1..1
* valueReference only Reference(Organization or Device)

Extension: ZMConsentCommunicationChannel
Id: zm-consent-communication-channel
Title: "Consent Communication Channel"
Description: "A channel for which the individual's contact consent decision applies."
Context: Consent
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from ZMCommunicationChannelVS (required)
