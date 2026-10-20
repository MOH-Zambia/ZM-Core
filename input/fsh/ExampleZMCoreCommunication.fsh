// ==========================================================================
// Example Delivered DHIS2 Reporting Reminder
// ==========================================================================

Instance: ExampleZMCoreCommunication
InstanceOf: ZMCoreCommunication
Title: "Example Delivered DHIS2 Reporting Reminder"
Description: "Delivery record produced after the hub sends the reporting reminder."
* extension[dataClassification].valueCodeableConcept = ZMCommunicationDataClassificationCS#internal "Internal"
* extension[approvedTemplate].valueIdentifier.system = "http://hapi.moh.gov.zm/fhir/sid/message-template"
* extension[approvedTemplate].valueIdentifier.value = "DHIS2-REPORTING-REMINDER-v1"
* extension[messageLanguage].valueCode = #en
* identifier.system = "http://hapi.moh.gov.zm/fhir/sid/communication-id"
* identifier.value = "COMM-DHIS2-2026-0001"
* basedOn = Reference(ExampleZMCoreCommunicationRequest)
* status = #completed
* category = ZMCommunicationLaneCS#operational "Operational"
* priority = #routine
* medium = ZMCommunicationChannelCS#email "Email"
* topic.text = "DHIS2 reporting reminder"
* sent = "2026-08-10T08:00:05+02:00"
* received = "2026-08-10T08:00:07+02:00"
* recipient = Reference(ExampleZMCorePractitionerRole)
* sender = Reference(ExampleZMCoreOrganization)
* payload.contentCodeableConcept.text = "A DHIS2 report is due. Sign in to DHIS2 for details."
