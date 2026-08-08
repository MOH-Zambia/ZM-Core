// ============================================================================
// Master Facility List registry status extension
// ============================================================================

Extension: ZMCoreFacilityRegistryStatus
Id: zm-core-facility-registry-status
Title: "ZM-Core Facility Registry Status"
Description: "The combined operational, licensing, registration, or record-quality status assigned to a facility by the Zambia Master Facility List. This is distinct from Organization.active, which indicates whether the FHIR record is in active use."
* ^url = "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-registry-status"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[0].expression = "Organization"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ZMCoreFacilityRegistryStatusVS (required)

// ============================================================================
// Organization Profile
// ============================================================================

Invariant: zm-facility-type-required
Description: "A facility organization SHALL include a facility type from the Zambia Master Facility List facility type value set."
Expression: "type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type').exists() and type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type').all(memberOf('http://hapi.moh.gov.zm/fhir/ValueSet/facility-type'))"
Severity: #error

Invariant: zm-facility-ownership-required
Description: "A facility organization SHALL include ownership from the Zambia Master Facility List facility ownership value set."
Expression: "type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership').exists() and type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership').all(memberOf('http://hapi.moh.gov.zm/fhir/ValueSet/facility-ownership'))"
Severity: #error

Profile: ZMCoreOrganization
Parent: Organization
Id: zm-core-organization
Title: "ZM-Core Organization Profile"
Description: "Zambia healthcare organization profile, including identifiers and classifications used by the national Master Facility List."
* identifier 1..* MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "National facility identifiers and external-system routing codes."
* identifier contains
    facilityMasterCode 0..1 MS and
    hmisCode 0..1 MS and
    disaCode 0..1 MS and
    mflRegistryId 0..1 MS and
    dhis2Uid 0..1 MS and
    smartcareGuid 0..1 MS and
    elmisId 0..1 MS and
    ihrisId 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier[facilityMasterCode].system = "http://hapi.moh.gov.zm/fhir/sid/facility-master-code"
* identifier[hmisCode].system = "http://hapi.moh.gov.zm/fhir/sid/hmis-facility-code"
* identifier[disaCode].system = "http://hapi.moh.gov.zm/fhir/sid/disa-facility-code"
* identifier[mflRegistryId].system = "http://hapi.moh.gov.zm/fhir/sid/mfl-registry-id"
* identifier[dhis2Uid].system = "http://hapi.moh.gov.zm/fhir/sid/dhis2-organisation-unit-uid"
* identifier[smartcareGuid].system = "http://hapi.moh.gov.zm/fhir/sid/smartcare-facility-id"
* identifier[elmisId].system = "http://hapi.moh.gov.zm/fhir/sid/elmis-facility-id"
* identifier[ihrisId].system = "http://hapi.moh.gov.zm/fhir/sid/ihris-facility-id"
* active 1..1 MS
* active ^short = "Whether this Organization registry record is in active use; not the facility operational status"
* name 1..1 MS
* alias MS
* type 1..* MS
* type ^short = "Organization classification; facility profiles include separate facility type and ownership concepts"
* partOf MS
* partOf only Reference(ZMCoreOrganization)
* contact 0..* MS
* contact.purpose MS
* contact.name MS
* contact.address MS
* contact.telecom MS
* endpoint MS
* extension contains ZMCoreFacilityRegistryStatus named registryStatus 0..1 MS

// ============================================================================
// Master Facility List facility specialization
// ============================================================================

Profile: ZMCoreFacilityOrganization
Parent: ZMCoreOrganization
Id: zm-core-facility-organization
Title: "ZM-Core Facility Organization Profile"
Description: "A health facility registered in the Zambia Master Facility List. Physical coordinates and site characteristics are represented by ZMCoreLocation, while offered services are represented by ZMCoreHealthcareService."
* type 2..* MS
* obeys zm-facility-type-required and zm-facility-ownership-required
* extension[registryStatus] 1..1 MS
