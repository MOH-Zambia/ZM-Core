// ==========================================================================
// Example Communication Hub Subscription
// ==========================================================================

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
