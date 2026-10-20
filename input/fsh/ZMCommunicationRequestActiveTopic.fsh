// ==========================================================================
// Active Communication Request Topic
// ==========================================================================

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
