// =============================================================================
// Facility Registry extensions
// =============================================================================
//
// The Zambia Health Facility Registry publishes both of these on every
// facility Location, under https://zhfr.moh.gov.zm/fhir/StructureDefinition/.
// Registering them here puts them under the national canonical alongside the
// profiles that carry them, so a consumer resolves one base rather than three.
// The registry moves to these URLs as part of the same change that moves its
// identifiers (MOH-Zambia/mdm_addons#1).

// -----------------------------------------------------------------------------
// Replaced-by: where a retired facility went
// -----------------------------------------------------------------------------
//
// A facility is never deleted. A closed site is retired, and a site that merged
// into another points at its successor, so a consumer holding a reference made
// years ago can follow it to whatever now serves that population rather than
// receiving a 404 and concluding the facility never existed.

Extension: ZMCoreFacilityReplacedBy
Id: zm-core-facility-replaced-by
Title: "ZM-Core Facility Replaced By"
Description: "The facility that succeeded this one after a merge or closure. Present only on a retired facility."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-replaced-by"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Location"
* ^context[1].type = #element
* ^context[1].expression = "Organization"
* value[x] 1..1
* value[x] only Reference(ZMCoreLocation or ZMCoreOrganization)

// -----------------------------------------------------------------------------
// Workforce count: how many health workers are posted here
// -----------------------------------------------------------------------------
//
// Derived by the Health Worker Registry from current postings, not stored by
// the facility registry. It is a count at a point in time: a facility's
// establishment is a different fact from the number of people actually in post.

Extension: ZMCoreFacilityWorkforceCount
Id: zm-core-facility-workforce-count
Title: "ZM-Core Facility Workforce Count"
Description: "Number of health workers currently posted to this facility, derived by the Health Worker Registry from active PractitionerRole records."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-workforce-count"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Location"
* ^context[1].type = #element
* ^context[1].expression = "Organization"
* value[x] 1..1
* value[x] only integer
