// ============================================================================
// DHIS2 reporting-reminder pilot examples
// ============================================================================

Instance: ExampleZMCoreLocation
InstanceOf: ZMCoreLocation
Title: "Example ZM-Core Location"
Description: "Example physical facility location used by recipient resolution."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/facility-id"
* identifier.value = "HF001"
* status = #active
* name = "University Teaching Hospital"
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* address.city = "Lusaka"
* address.country = "ZM"
* managingOrganization = Reference(ExampleZMCoreOrganization)

Instance: ExampleZMCoreHealthcareService
InstanceOf: ZMCoreHealthcareService
Title: "Example ZM-Core Healthcare Service"
Description: "Example facility reporting service used by the DHIS2 reminder pilot."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/healthcare-service-id"
* identifier.value = "HF001-DHIS2"
* active = true
* providedBy = Reference(ExampleZMCoreOrganization)
* type.text = "Routine health information reporting"
* location = Reference(ExampleZMCoreLocation)
* name = "DHIS2 Reporting Service"
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "dhis2.reporting@example.org"

Instance: ExampleZMCorePractitionerRole
InstanceOf: ZMCorePractitionerRole
Title: "Example ZM-Core Practitioner Role"
Description: "Example current District Health Information Officer role resolved from the provider directory."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/practitioner-role-id"
* identifier.value = "DHO-LSK-DHIO-001"
* active = true
* practitioner = Reference(ExampleZMCorePractitioner)
* organization = Reference(ExampleZMCoreOrganization)
* code.text = "District Health Information Officer"
* location = Reference(ExampleZMCoreLocation)
* healthcareService = Reference(ExampleZMCoreHealthcareService)
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "dhio.lusaka@example.org"
* contact[0].telecom[1].system = #phone
* contact[0].telecom[1].value = "+260-97-111-2233"
* communication = urn:ietf:bcp:47#en "English"

Instance: ZMCommunicationRequestActiveTopic
InstanceOf: ZMCoreCommunicationSubscriptionTopic
Title: "Active Communication Request Topic"
Description: "R5 SubscriptionTopic for communication requests that are ready for processing by the hub."
Usage: #definition
* url = "http://hapi.moh.gov.zm/fhir/SubscriptionTopic/communication-request-active"
* version = "0.1.0"
* name = "ZMCommunicationRequestActiveTopic"
* title = "Active Communication Request Topic"
* status = #draft
* experimental = false
* date = "2026-08-08"
* publisher = "Ministry of Health - Zambia"
* description = "Notifies the Unified Health Communication Hub when a CommunicationRequest enters the active state."
* jurisdiction = urn:iso:std:iso:3166#ZM "Zambia"
* purpose = "Activate governed recipient resolution, routing, delivery, acknowledgement, and escalation workflows."
* resourceTrigger[0].description = "A communication request is created or updated to active."
* resourceTrigger[0].resource = "http://hl7.org/fhir/StructureDefinition/CommunicationRequest"
* resourceTrigger[0].supportedInteraction[0] = #create
* resourceTrigger[0].supportedInteraction[1] = #update
* resourceTrigger[0].fhirPathCriteria = "%current.status = 'active' and (%previous.empty() or %previous.status != 'active')"
* canFilterBy[0].description = "Filter workflows by communication governance lane."
* canFilterBy[0].resource = "CommunicationRequest"
* canFilterBy[0].filterParameter = "category"
* canFilterBy[0].comparator = #eq
* canFilterBy[1].description = "Filter workflows by request priority."
* canFilterBy[1].resource = "CommunicationRequest"
* canFilterBy[1].filterParameter = "priority"
* canFilterBy[1].comparator = #eq
* notificationShape.resource = "CommunicationRequest"
* notificationShape.include = "CommunicationRequest:requester"

Instance: ExampleZMCoreSubscription
InstanceOf: ZMCoreSubscription
Title: "Example Communication Hub Subscription"
Description: "Example secure REST-hook subscription for the DHIS2 reporting-reminder workflow."
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/subscription-id"
* identifier.value = "dhis2-reporting-reminders"
* name = "DHIS2 Reporting Reminder Workflow"
* status = #active
* topic = Canonical(ZMCommunicationRequestActiveTopic)
* managingEntity = Reference(ExampleZMCoreOrganization)
* reason = "Start the operational reporting-reminder workflow for active requests."
* filterBy[0].resourceType = "CommunicationRequest"
* filterBy[0].filterParameter = "category"
* filterBy[0].comparator = #eq
* filterBy[0].value = "operational"
* channelType = http://terminology.hl7.org/CodeSystem/subscription-channel-type#rest-hook "Rest Hook"
* endpoint = "https://communication-hub.moh.gov.zm/fhir-events"
* heartbeatPeriod = 60
* timeout = 20
* contentType = #application/fhir+json
* content = #id-only
* maxCount = 100

Instance: ExampleZMCoreCommunicationConsent
InstanceOf: ZMCoreCommunicationConsent
Title: "Example Communication Consent"
Description: "Example patient contact preference and permission for notifications."
* extension[channel][0].valueCodeableConcept = ZMCommunicationChannelCS#sms "SMS"
* extension[channel][1].valueCodeableConcept = ZMCommunicationChannelCS#portal "Authenticated portal"
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/communication-consent-id"
* identifier.value = "CONSENT-0001"
* status = #active
* category.text = "Patient communication preferences"
* subject = Reference(ExampleZMCorePatient)
* date = "2026-08-08"
* grantee = Reference(ExampleZMCoreOrganization)
* decision = #permit
* provision.action = ZMCommunicationConsentActionCS#send-notification "Send notification"

Instance: ExampleZMCoreCommunicationRequest
InstanceOf: ZMCoreCommunicationRequest
Title: "Example DHIS2 Reporting Reminder Request"
Description: "Low-risk operational pilot request for a facility reporting reminder."
* extension[dataClassification].valueCodeableConcept = ZMCommunicationDataClassificationCS#internal "Internal"
* extension[fallbackChannel].valueCodeableConcept = ZMCommunicationChannelCS#sms "SMS"
* extension[approvedTemplate].valueIdentifier.system = "http://hapi.moh.gov.zm/fhir/sid/message-template"
* extension[approvedTemplate].valueIdentifier.value = "DHIS2-REPORTING-REMINDER-v1"
* extension[messageLanguage].valueCode = #en
* extension[acknowledgementRequired].valueBoolean = true
* extension[expiry].valueInstant = "2026-08-11T17:00:00+02:00"
* extension[requestingSystem].valueReference = Reference(ExampleZMCoreOrganization)
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/communication-request-id"
* identifier.value = "CR-DHIS2-2026-0001"
* status = #active
* intent = #order
* category = ZMCommunicationLaneCS#operational "Operational"
* priority = #routine
* medium = ZMCommunicationChannelCS#email "Email"
* about = Reference(ExampleZMCoreHealthcareService)
* payload.contentCodeableConcept.text = "A DHIS2 report is due. Authenticate to DHIS2 to review the reporting period and submit the report."
* occurrencePeriod.start = "2026-08-10T08:00:00+02:00"
* occurrencePeriod.end = "2026-08-11T17:00:00+02:00"
* authoredOn = "2026-08-08T10:00:00+02:00"
* requester = Reference(ExampleZMCorePractitionerRole)
* recipient = Reference(ExampleZMCorePractitionerRole)
* reason[0].concept.text = "DHIS2 reporting deadline approaching"

Instance: ExampleZMCoreCommunication
InstanceOf: ZMCoreCommunication
Title: "Example Delivered DHIS2 Reporting Reminder"
Description: "Delivery record produced after the hub sends the reporting reminder."
* extension[dataClassification].valueCodeableConcept = ZMCommunicationDataClassificationCS#internal "Internal"
* extension[approvedTemplate].valueIdentifier.system = "http://hapi.moh.gov.zm/fhir/sid/message-template"
* extension[approvedTemplate].valueIdentifier.value = "DHIS2-REPORTING-REMINDER-v1"
* extension[messageLanguage].valueCode = #en
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/communication-id"
* identifier.value = "COMM-DHIS2-2026-0001"
* basedOn = Reference(ExampleZMCoreCommunicationRequest)
* status = #completed
* category = ZMCommunicationLaneCS#operational "Operational"
* priority = #routine
* medium = ZMCommunicationChannelCS#email "Email"
* topic.text = "DHIS2 reporting reminder"
* sent = "2026-08-10T08:00:05+02:00"
* received = "2026-08-10T08:00:07+02:00"
* recipient = Reference(ExampleZMCorePractitionerRole)
* sender = Reference(ExampleZMCoreOrganization)
* payload.contentCodeableConcept.text = "A DHIS2 report is due. Sign in to DHIS2 for details."

Instance: ExampleZMCoreCommunicationTask
InstanceOf: ZMCoreCommunicationTask
Title: "Example Communication Acknowledgement Task"
Description: "Task used to capture acknowledgement and trigger escalation if the report remains outstanding."
* extension[dataClassification].valueCodeableConcept = ZMCommunicationDataClassificationCS#internal "Internal"
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/communication-task-id"
* identifier.value = "TASK-DHIS2-2026-0001"
* basedOn = Reference(ExampleZMCoreCommunicationRequest)
* status = #requested
* intent = #order
* priority = #routine
* code = ZMCommunicationTaskCodeCS#acknowledge "Acknowledge communication"
* description = "Acknowledge the DHIS2 reporting reminder and submit the report before the deadline."
* focus = Reference(ExampleZMCoreCommunication)
* requestedPeriod.start = "2026-08-10T08:00:05+02:00"
* requestedPeriod.end = "2026-08-11T17:00:00+02:00"
* authoredOn = "2026-08-10T08:00:05+02:00"
* requester = Reference(ExampleZMCoreOrganization)
* owner = Reference(ExampleZMCorePractitionerRole)
* restriction.recipient = Reference(ExampleZMCorePractitionerRole)

Instance: ExampleZMCoreCommunicationProvenance
InstanceOf: ZMCoreCommunicationProvenance
Title: "Example Communication Request Provenance"
Description: "Example record of the authorized actor and source system that created a communication request."
* target = Reference(ExampleZMCoreCommunicationRequest)
* occurredDateTime = "2026-08-08T10:00:00+02:00"
* recorded = "2026-08-08T10:00:01+02:00"
* activity.text = "Create communication request"
* agent[0].type.text = "Author"
* agent[0].who = Reference(ExampleZMCorePractitionerRole)
* agent[0].onBehalfOf = Reference(ExampleZMCoreOrganization)

Instance: ExampleZMCoreCommunicationAuditEvent
InstanceOf: ZMCoreCommunicationAuditEvent
Title: "Example Communication Delivery Audit Event"
Description: "Example audit event showing successful delivery processing by the hub."
* code.text = "Communication delivery"
* action = #E
* occurredDateTime = "2026-08-10T08:00:05+02:00"
* recorded = "2026-08-10T08:00:06+02:00"
* outcome.code = http://terminology.hl7.org/CodeSystem/audit-event-outcome#0 "Success"
* agent.who = Reference(ExampleZMCoreOrganization)
* agent.requestor = true
* source.observer = Reference(ExampleZMCoreOrganization)
* entity.what = Reference(ExampleZMCoreCommunication)
