// ============================================================================
// Organization Profile
// ============================================================================
Profile: ZMCoreOrganization
Parent: Organization
Id: zm-core-organization
Title: "ZM-Core Organization Profile"
Description: "Zambia healthcare organization profile"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..1 MS
* type 1..* MS
* contact 0..* MS
* contact.address MS
* contact.telecom MS