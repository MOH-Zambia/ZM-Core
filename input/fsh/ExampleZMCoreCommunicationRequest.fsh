// ==========================================================================
// Example DHIS2 Reporting Reminder Request
// ==========================================================================

Instance: ExampleZMCoreCommunicationRequest
InstanceOf: ZMCoreCommunicationRequest
Title: "Example DHIS2 Reporting Reminder Request"
Description: "Low-risk operational pilot request for a facility reporting reminder."
* extension[dataClassification].valueCodeableConcept = ZMCommunicationDataClassificationCS#internal "Internal"
* extension[fallbackChannel].valueCodeableConcept = ZMCommunicationChannelCS#sms "SMS"
* extension[approvedTemplate].valueIdentifier.system = "http://hapi.moh.gov.zm/fhir/sid/message-template"
* extension[approvedTemplate].valueIdentifier.value = "DHIS2-REPORTING-REMINDER-v1"
* extension[messageLanguage].valueCode = #en
* extension[acknowledgementRequired].valueBoolean = true
* extension[expiry].valueInstant = "2026-08-11T17:00:00+02:00"
* extension[requestingSystem].valueReference = Reference(ExampleZMCoreOrganization)
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/communication-request-id"
* identifier.value = "CR-DHIS2-2026-0001"
* status = #active
* intent = #order
* category = ZMCommunicationLaneCS#operational "Operational"
* priority = #routine
* medium = ZMCommunicationChannelCS#email "Email"
* about = Reference(ExampleZMCoreHealthcareService)
* payload.contentCodeableConcept.text = "A DHIS2 report is due. Authenticate to DHIS2 to review the reporting period and submit the report."
* occurrencePeriod.start = "2026-08-10T08:00:00+02:00"
* occurrencePeriod.end = "2026-08-11T17:00:00+02:00"
* authoredOn = "2026-08-08T10:00:00+02:00"
* requester = Reference(ExampleZMCorePractitionerRole)
* recipient = Reference(ExampleZMCorePractitionerRole)
* reason[0].concept.text = "DHIS2 reporting deadline approaching"
