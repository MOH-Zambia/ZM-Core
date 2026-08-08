// ============================================================================
// Unified Health Communication Hub profiles
// ============================================================================

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

Profile: ZMCoreSubscription
Parent: Subscription
Id: zm-core-subscription
Title: "ZM-Core Communication Subscription Profile"
Description: "A secure R5 Subscription that activates a communication workflow when a governed communication topic matches."
* identifier 1..* MS
* name 1..1 MS
* status MS
* topic MS
* managingEntity 1..1 MS
* managingEntity only Reference(ZMCoreOrganization)
* reason 1..1 MS
* filterBy MS
* channelType MS
* endpoint 1..1 MS
* heartbeatPeriod MS
* timeout MS
* contentType 1..1 MS
* content 1..1 MS
* content = #id-only
* maxCount MS

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

Profile: ZMCoreCommunicationTask
Parent: Task
Id: zm-core-communication-task
Title: "ZM-Core Communication Task Profile"
Description: "An acknowledgement, required action, recipient-resolution, or escalation task linked to a hub communication workflow."
* extension contains ZMCommunicationDataClassification named dataClassification 1..1 MS
* identifier 1..* MS
* basedOn 1..* MS
* basedOn only Reference(ZMCoreCommunicationRequest)
* status MS
* statusReason MS
* businessStatus MS
* intent MS
* priority 1..1 MS
* code 1..1 MS
* code from ZMCommunicationTaskCodeVS (required)
* description MS
* focus 1..1 MS
* focus only Reference(ZMCoreCommunicationRequest or ZMCoreCommunication)
* for MS
* requestedPeriod 1..1 MS
* authoredOn 1..1 MS
* lastModified MS
* requester 1..1 MS
* requestedPerformer MS
* owner MS
* performer MS
* location MS
* reason MS
* note MS
* relevantHistory MS
* restriction MS
* restriction.recipient MS
* output MS

Profile: ZMCoreCommunicationConsent
Parent: Consent
Id: zm-core-communication-consent
Title: "ZM-Core Communication Consent Profile"
Description: "An individual's consent decision governing whether and through which channels the Unified Health Communication Hub may make contact."
* extension contains ZMConsentCommunicationChannel named channel 1..* MS
* identifier 1..* MS
* status MS
* category 1..* MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient)
* date 1..1 MS
* period MS
* grantor MS
* grantee MS
* manager MS
* controller MS
* sourceAttachment MS
* sourceReference MS
* regulatoryBasis MS
* policyBasis MS
* policyText MS
* verification MS
* decision 1..1 MS
* provision 1..* MS
* provision.period MS
* provision.action 1..* MS
* provision.action from ZMCommunicationConsentActionVS (required)
* provision.securityLabel MS
* provision.purpose MS
* provision.dataPeriod MS

Profile: ZMCoreCommunicationAuditEvent
Parent: AuditEvent
Id: zm-core-communication-audit-event
Title: "ZM-Core Communication Audit Event Profile"
Description: "Security and access audit trail for creation, routing, access, delivery, acknowledgement, or escalation of a hub communication."
* category MS
* code MS
* action 1..1 MS
* severity MS
* occurred[x] 1..1 MS
* recorded MS
* outcome MS
* authorization MS
* basedOn MS
* patient MS
* encounter MS
* agent MS
* agent.type MS
* agent.role MS
* agent.who MS
* agent.requestor 1..1 MS
* agent.location MS
* agent.policy MS
* agent.network[x] MS
* source MS
* source.site MS
* source.observer MS
* source.type MS
* entity 1..* MS
* entity.what 1..1 MS
* entity.what only Reference(ZMCoreCommunicationRequest or ZMCoreCommunication or ZMCoreCommunicationTask or ZMCoreCommunicationConsent)
* entity.role MS
* entity.securityLabel MS
* entity.detail MS

Profile: ZMCoreCommunicationProvenance
Parent: Provenance
Id: zm-core-communication-provenance
Title: "ZM-Core Communication Provenance Profile"
Description: "Record of who initiated or changed a communication workflow resource, when, and on whose behalf."
* target MS
* target only Reference(ZMCoreCommunicationRequest or ZMCoreCommunication or ZMCoreCommunicationTask or ZMCoreCommunicationConsent)
* occurred[x] MS
* recorded 1..1 MS
* policy MS
* location MS
* authorization MS
* activity 1..1 MS
* basedOn MS
* patient MS
* encounter MS
* agent MS
* agent.type MS
* agent.role MS
* agent.who MS
* agent.onBehalfOf MS
* entity MS
* signature MS

// ============================================================================
// Authoritative directory and recipient-resolution profiles
// ============================================================================

Profile: ZMCorePractitionerRole
Parent: PractitionerRole
Id: zm-core-practitioner-role
Title: "ZM-Core Practitioner Role Profile"
Description: "A current health-worker role used to route communications by responsibility rather than by hard-coded contact details."
* identifier 1..* MS
* active 1..1 MS
* period MS
* practitioner 1..1 MS
* practitioner only Reference(ZMCorePractitioner)
* organization 1..1 MS
* organization only Reference(ZMCoreOrganization)
* code 1..* MS
* specialty MS
* location 1..* MS
* location only Reference(ZMCoreLocation)
* healthcareService MS
* healthcareService only Reference(ZMCoreHealthcareService)
* contact 1..* MS
* communication MS
* availability MS
* endpoint MS

Profile: ZMCoreHealthcareService
Parent: HealthcareService
Id: zm-core-healthcare-service
Title: "ZM-Core Healthcare Service Profile"
Description: "A service directory entry used to resolve facilities, responsible teams, service coverage, and communication contacts."
* identifier 1..* MS
* active 1..1 MS
* providedBy 1..1 MS
* providedBy only Reference(ZMCoreOrganization)
* offeredIn MS
* category MS
* type 1..* MS
* specialty MS
* location 1..* MS
* location only Reference(ZMCoreLocation)
* name 1..1 MS
* contact 1..* MS
* coverageArea MS
* program MS
* characteristic MS
* communication MS
* availability MS
* endpoint MS

Profile: ZMCoreGroup
Parent: Group
Id: zm-core-group
Title: "ZM-Core Recipient Group Profile"
Description: "A governed national, provincial, district, facility, patient, or workforce distribution group used for recipient resolution."
* identifier 1..* MS
* active 1..1 MS
* type MS
* membership MS
* code 1..1 MS
* name 1..1 MS
* description MS
* managingEntity 1..1 MS
* managingEntity only Reference(ZMCoreOrganization or ZMCorePractitionerRole)
* characteristic MS
* member MS
* member.entity MS
* member.period MS
* member.inactive MS

Profile: ZMCoreLocation
Parent: Location
Id: zm-core-location
Title: "ZM-Core Location Profile"
Description: "A physical or administrative place from the Zambia Health Facility Registry used in facility and reporting-hierarchy routing."
* identifier 1..* MS
* status 1..1 MS
* name 1..1 MS
* alias MS
* description MS
* mode 1..1 MS
* type 1..* MS
* contact MS
* address 1..1 MS
* form MS
* position MS
* managingOrganization 1..1 MS
* managingOrganization only Reference(ZMCoreOrganization)
* partOf MS
* partOf only Reference(ZMCoreLocation)
* characteristic MS
* hoursOfOperation MS
* endpoint MS

Profile: ZMCoreCommunicationSubscriptionTopic
Parent: SubscriptionTopic
Id: zm-core-communication-subscription-topic
Title: "ZM-Core Communication Subscription Topic Profile"
Description: "A governed R5 subscription topic that describes which communication events may activate hub workflows and what may be filtered or returned."
* url MS
* version MS
* name 1..1 MS
* title 1..1 MS
* status MS
* experimental MS
* date MS
* publisher MS
* description 1..1 MS
* jurisdiction MS
* purpose MS
* resourceTrigger 1..* MS
* resourceTrigger.resource MS
* resourceTrigger.supportedInteraction 1..* MS
* resourceTrigger.queryCriteria MS
* resourceTrigger.fhirPathCriteria MS
* canFilterBy MS
* notificationShape MS
