// ==========================================================================
// ZM-Core Communication Subscription Profile
// ==========================================================================

Profile: ZMCoreSubscription
Parent: Subscription
Id: zm-core-subscription
Title: "ZM-Core Communication Subscription Profile"
Description: "A secure R5 Subscription that activates a communication workflow when a governed communication topic matches."
* identifier 1..* MS
* name 1..1 MS
* status MS
* topic MS
* managingEntity 1..1 MS
* managingEntity only Reference(ZMCoreOrganization)
* reason 1..1 MS
* filterBy MS
* channelType MS
* endpoint 1..1 MS
* heartbeatPeriod MS
* timeout MS
* contentType 1..1 MS
* content 1..1 MS
* content = #id-only
* maxCount MS
