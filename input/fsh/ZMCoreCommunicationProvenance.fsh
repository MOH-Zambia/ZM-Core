// ==========================================================================
// ZM-Core Communication Provenance Profile
// ==========================================================================

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
