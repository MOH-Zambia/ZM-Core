// ==========================================================================
// Example Communication Consent
// ==========================================================================

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
