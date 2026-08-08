// ZM-Core Terminology
// Value Sets and Code Systems for Zambia health systems

// ============================================================================
// Value Sets
// ============================================================================

ValueSet: ZMCoreMaritalStatusVS
Id: zm-core-marital-status-vs
Title: "ZM-Core Marital Status"
Description: "Marital status codes used in Zambian health systems"
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-MaritalStatus


ValueSet: ZMCoreOrganizationTypeVS
Id: zm-core-organization-type-vs
Title: "ZM-Core Organization Type"
Description: "Organization types used in Zambian health systems"
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/organization-type


ValueSet: ZMCorePatientGenderVS
Id: zm-core-patient-gender-vs
Title: "ZM-Core Patient Gender"
Description: "Patient gender codes"
* ^status = #active
* ^experimental = false
* include codes from system http://hl7.org/fhir/administrative-gender


ValueSet: ZMCoreEncounterTypeVS
Id: zm-core-encounter-type-vs
Title: "ZM-Core Encounter Type"
Description: "Types of encounters in Zambian health systems"
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode


ValueSet: ZMCoreConditionVS
Id: zm-core-condition-vs
Title: "ZM-Core Condition/Diagnosis"
Description: "Conditions and diagnoses relevant to Zambian health"
* ^status = #active
* ^experimental = false
* include codes from system http://snomed.info/sct


ValueSet: ZMCoreObservationCategoryVS
Id: zm-core-observation-category-vs
Title: "ZM-Core Observation Category"
Description: "Observation categories used in Zambian health systems"
* ^status = #active
* ^experimental = false
* include codes from system http://terminology.hl7.org/CodeSystem/observation-category


// ============================================================================
// Code Systems (References to standard systems)
// ============================================================================

// Reference to ICD-10 for diagnoses
// Reference to SNOMED CT for clinical concepts
// Reference to RxNorm/ATC for medications


// ============================================================================
// Master Facility List terminology
// ============================================================================

CodeSystem: ZMCoreFacilityTypeCS
Id: facility-type
Title: "Zambia Master Facility List Facility Type"
Description: "Facility types represented in the Zambia Master Facility List. Police, military, private, and NGO values are retained for source compatibility but overlap with facility ownership and should not be used when a more specific service level is known."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #health-post "Health Post"
* #border-health-post "Border Health Post"
* #rural-health-centre "Rural Health Centre"
* #urban-health-centre "Urban Health Centre"
* #zonal-health-centre "Zonal Health Centre"
* #hospital-affiliated-health-centre "Hospital Affiliated Health Centre"
* #hospital-level-1 "Hospital - Level 1"
* #hospital-level-2 "Hospital - Level 2"
* #hospital-level-3 "Hospital - Level 3"
* #police-facility "Police"
* #military-facility "Military"
* #private-facility "Private"
* #ngo-facility "NGO"

ValueSet: ZMCoreFacilityTypeVS
Id: facility-type
Title: "Zambia Master Facility List Facility Type Value Set"
Description: "Facility types permitted for a ZM-Core facility organization."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/facility-type"
* ^status = #active
* ^experimental = false
* include codes from system ZMCoreFacilityTypeCS

CodeSystem: ZMCoreFacilityOwnershipCS
Id: facility-ownership
Title: "Zambia Master Facility List Facility Ownership"
Description: "Facility ownership or controlling sector represented in the Zambia Master Facility List."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #grz "Government of the Republic of Zambia"
* #private "Private"
* #ngo "Non-governmental organization"
* #police "Police"
* #military "Military"

ValueSet: ZMCoreFacilityOwnershipVS
Id: facility-ownership
Title: "Zambia Master Facility List Facility Ownership Value Set"
Description: "Facility ownership values permitted for a ZM-Core facility organization."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/facility-ownership"
* ^status = #active
* ^experimental = false
* include codes from system ZMCoreFacilityOwnershipCS

CodeSystem: ZMCoreFacilityRegistryStatusCS
Id: facility-registry-status
Title: "Zambia Master Facility List Registry Status"
Description: "Combined operational, licensing, registration, and record-quality states represented by the current Zambia Master Facility List operation-status field."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-registry-status"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #operational "Operational" "A facility that is open and serving patients."
* #licensed "Licensed" "Approved and licensed but not yet operational."
* #pending-licensing "Pending Licensing" "Recommended by the district health management team and awaiting a licence."
* #licence-suspended "License Suspended" "The facility licence has been temporarily suspended."
* #licence-cancelled "License Cancelled" "The facility licence has been permanently cancelled."
* #pending-registration "Pending Registration" "Approved locally and awaiting official registration."
* #registered "Registered" "Approved as an institution and assigned a registration number."
* #closed "Closed" "A licensed facility that has permanently closed."
* #invalid "Invalid" "Registry attributes differ from the attributes on the facility licence."
* #does-not-exist "Does not exist" "A licensed record verified not to correspond to a physical facility."
* #duplicate "Duplicate" "A registry record identified as a duplicate of another facility."
* #under-construction "Under Construction"

ValueSet: ZMCoreFacilityRegistryStatusVS
Id: facility-registry-status
Title: "Zambia Master Facility List Registry Status Value Set"
Description: "Registry status values permitted for a ZM-Core facility organization."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/facility-registry-status"
* ^status = #active
* ^experimental = false
* include codes from system ZMCoreFacilityRegistryStatusCS


// ============================================================================
// Master Facility List terminology
// ============================================================================

CodeSystem: ZMCoreFacilityTypeCS
Id: facility-type
Title: "Zambia Master Facility List Facility Type"
Description: "Facility types represented in the Zambia Master Facility List. Police, military, private, and NGO values are retained for source compatibility but overlap with facility ownership and should not be used when a more specific service level is known."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #health-post "Health Post"
* #border-health-post "Border Health Post"
* #rural-health-centre "Rural Health Centre"
* #urban-health-centre "Urban Health Centre"
* #zonal-health-centre "Zonal Health Centre"
* #hospital-affiliated-health-centre "Hospital Affiliated Health Centre"
* #hospital-level-1 "Hospital - Level 1"
* #hospital-level-2 "Hospital - Level 2"
* #hospital-level-3 "Hospital - Level 3"
* #police-facility "Police"
* #military-facility "Military"
* #private-facility "Private"
* #ngo-facility "NGO"

ValueSet: ZMCoreFacilityTypeVS
Id: facility-type
Title: "Zambia Master Facility List Facility Type Value Set"
Description: "Facility types permitted for a ZM-Core facility organization."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/facility-type"
* ^status = #active
* ^experimental = false
* include codes from system ZMCoreFacilityTypeCS

CodeSystem: ZMCoreFacilityOwnershipCS
Id: facility-ownership
Title: "Zambia Master Facility List Facility Ownership"
Description: "Facility ownership or controlling sector represented in the Zambia Master Facility List."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #grz "Government of the Republic of Zambia"
* #private "Private"
* #ngo "Non-governmental organization"
* #police "Police"
* #military "Military"

ValueSet: ZMCoreFacilityOwnershipVS
Id: facility-ownership
Title: "Zambia Master Facility List Facility Ownership Value Set"
Description: "Facility ownership values permitted for a ZM-Core facility organization."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/facility-ownership"
* ^status = #active
* ^experimental = false
* include codes from system ZMCoreFacilityOwnershipCS

CodeSystem: ZMCoreFacilityRegistryStatusCS
Id: facility-registry-status
Title: "Zambia Master Facility List Registry Status"
Description: "Combined operational, licensing, registration, and record-quality states represented by the current Zambia Master Facility List operation-status field."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-registry-status"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #operational "Operational" "A facility that is open and serving patients."
* #licensed "Licensed" "Approved and licensed but not yet operational."
* #pending-licensing "Pending Licensing" "Recommended by the district health management team and awaiting a licence."
* #licence-suspended "License Suspended" "The facility licence has been temporarily suspended."
* #licence-cancelled "License Cancelled" "The facility licence has been permanently cancelled."
* #pending-registration "Pending Registration" "Approved locally and awaiting official registration."
* #registered "Registered" "Approved as an institution and assigned a registration number."
* #closed "Closed" "A licensed facility that has permanently closed."
* #invalid "Invalid" "Registry attributes differ from the attributes on the facility licence."
* #does-not-exist "Does not exist" "A licensed record verified not to correspond to a physical facility."
* #duplicate "Duplicate" "A registry record identified as a duplicate of another facility."
* #under-construction "Under Construction"

ValueSet: ZMCoreFacilityRegistryStatusVS
Id: facility-registry-status
Title: "Zambia Master Facility List Registry Status Value Set"
Description: "Registry status values permitted for a ZM-Core facility organization."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/facility-registry-status"
* ^status = #active
* ^experimental = false
* include codes from system ZMCoreFacilityRegistryStatusCS
