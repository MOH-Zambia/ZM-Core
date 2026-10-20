// ==========================================================================
// ZM-Core Communication Audit Event Profile
// ==========================================================================

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
