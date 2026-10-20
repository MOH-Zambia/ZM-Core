// ==========================================================================
// Example Communication Delivery Audit Event
// ==========================================================================

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
