// ==========================================================================
// ZM-Core Communication Consent Profile
// ==========================================================================

Profile: ZMCoreCommunicationConsent
Parent: Consent
Id: zm-core-communication-consent
Title: "ZM-Core Communication Consent Profile"
Description: "An individual's consent decision governing whether and through which channels the Unified Health Communication Hub may make contact."
* extension contains ZMConsentCommunicationChannel named channel 1..* MS
* identifier 1..* MS
* status MS
* category 1..* MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient)
* date 1..1 MS
* period MS
* grantor MS
* grantee MS
* manager MS
* controller MS
* sourceAttachment MS
* sourceReference MS
* regulatoryBasis MS
* policyBasis MS
* policyText MS
* verification MS
* decision 1..1 MS
* provision 1..* MS
* provision.period MS
* provision.action 1..* MS
* provision.action from ZMCommunicationConsentActionVS (required)
* provision.securityLabel MS
* provision.purpose MS
* provision.dataPeriod MS
