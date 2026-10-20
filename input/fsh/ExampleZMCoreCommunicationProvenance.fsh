// ==========================================================================
// Example Communication Request Provenance
// ==========================================================================

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
