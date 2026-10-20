// ==========================================================================
// Example Communication Acknowledgement Task
// ==========================================================================

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
