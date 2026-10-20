// ==========================================================================
// ZM-Core Communication Task Profile
// ==========================================================================

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
