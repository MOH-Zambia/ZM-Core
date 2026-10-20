// ==========================================================================
// ZM-Core Facility Organization Profile
// ==========================================================================

Invariant: zm-facility-type-required
Description: "A facility organization SHALL include a facility type from the Zambia Master Facility List facility type value set."
Expression: "type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type').exists() and type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type').all(memberOf('http://hapi.moh.gov.zm/fhir/ValueSet/facility-type'))"
Severity: #error

Invariant: zm-facility-ownership-required
Description: "A facility organization SHALL include ownership from the Zambia Master Facility List facility ownership value set."
Expression: "type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership').exists() and type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership').all(memberOf('http://hapi.moh.gov.zm/fhir/ValueSet/facility-ownership'))"
Severity: #error

Profile: ZMCoreFacilityOrganization
Parent: ZMCoreOrganization
Id: zm-core-facility-organization
Title: "ZM-Core Facility Organization Profile"
Description: "A health facility registered in the Zambia Master Facility List. Physical coordinates and site characteristics are represented by ZMCoreLocation, while offered services are represented by ZMCoreHealthcareService."
* type 2..* MS
* obeys zm-facility-type-required and zm-facility-ownership-required
* extension[registryStatus] 1..1 MS
