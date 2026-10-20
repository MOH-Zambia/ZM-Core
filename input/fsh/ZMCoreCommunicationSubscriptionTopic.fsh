// ==========================================================================
// ZM-Core Communication Subscription Topic Profile
// ==========================================================================

Profile: ZMCoreCommunicationSubscriptionTopic
Parent: SubscriptionTopic
Id: zm-core-communication-subscription-topic
Title: "ZM-Core Communication Subscription Topic Profile"
Description: "A governed R5 subscription topic that describes which communication events may activate hub workflows and what may be filtered or returned."
* url MS
* version MS
* name 1..1 MS
* title 1..1 MS
* status MS
* experimental MS
* date MS
* publisher MS
* description 1..1 MS
* jurisdiction MS
* purpose MS
* resourceTrigger 1..* MS
* resourceTrigger.resource MS
* resourceTrigger.supportedInteraction 1..* MS
* resourceTrigger.queryCriteria MS
* resourceTrigger.fhirPathCriteria MS
* canFilterBy MS
* notificationShape MS
