// ==========================================================================
// ZM-Core Recipient Group Profile
// ==========================================================================

Profile: ZMCoreGroup
Parent: Group
Id: zm-core-group
Title: "ZM-Core Recipient Group Profile"
Description: "A governed national, provincial, district, facility, patient, or workforce distribution group used for recipient resolution."
* identifier 1..* MS
* active 1..1 MS
* type MS
* membership MS
* code 1..1 MS
* name 1..1 MS
* description MS
* managingEntity 1..1 MS
* managingEntity only Reference(ZMCoreOrganization or ZMCorePractitionerRole)
* characteristic MS
* member MS
* member.entity MS
* member.period MS
* member.inactive MS
