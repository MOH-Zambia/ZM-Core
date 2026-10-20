// ==========================================================================
// ZM-Core Location Profile
// ==========================================================================

Profile: ZMCoreLocation
Parent: Location
Id: zm-core-location
Title: "ZM-Core Location Profile"
Description: "A physical or administrative place from the Zambia Health Facility Registry used in facility and reporting-hierarchy routing."
* identifier 1..* MS
* status 1..1 MS
* name 1..1 MS
* alias MS
* description MS
* mode 1..1 MS
* type 1..* MS
* contact MS
* address 1..1 MS
* form MS
* position MS
* managingOrganization 1..1 MS
* managingOrganization only Reference(ZMCoreOrganization)
* partOf MS
* partOf only Reference(ZMCoreLocation)
* characteristic MS
* hoursOfOperation MS
* endpoint MS
