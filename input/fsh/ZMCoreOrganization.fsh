// ==========================================================================
// ZM-Core Organization Profile
// ==========================================================================

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
    ihrisId 0..1 MS and
    zhfrFacilityId 0..1 MS and
    hpczCode 0..1 MS
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

// Facility Registry identifiers.
//
// The ZHFR id is the registry's own handle, derived from the MFL code and
// stable across corrections to it. The HPCZ code is the regulator's
// registration for a private facility, which is a different question from
// whether the facility exists.
* identifier[zhfrFacilityId].system = "http://hapi.moh.gov.zm/fhir/sid/zhfr-facility-id"
* identifier[zhfrFacilityId] ^short = "Zambia Health Facility Registry id; allocated by the registry"
* identifier[hpczCode].system = "http://hapi.moh.gov.zm/fhir/sid/hpcz-code"
* identifier[hpczCode] ^short = "Health Professions Council of Zambia facility registration code"
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

