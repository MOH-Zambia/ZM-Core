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
* include codes from system http://terminology.hl7.org/CodeSystem/v3-MaritalStatus


ValueSet: ZMCoreOrganizationTypeVS
Id: zm-core-organization-type-vs
Title: "ZM-Core Organization Type"
Description: "Organization types used in Zambian health systems"
* ^status = #active
* include codes from system http://terminology.hl7.org/CodeSystem/organization-type


ValueSet: ZMCorePatientGenderVS
Id: zm-core-patient-gender-vs
Title: "ZM-Core Patient Gender"
Description: "Patient gender codes"
* ^status = #active
* include codes from system http://hl7.org/fhir/administrative-gender


ValueSet: ZMCoreEncounterTypeVS
Id: zm-core-encounter-type-vs
Title: "ZM-Core Encounter Type"
Description: "Types of encounters in Zambian health systems"
* ^status = #active
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode


ValueSet: ZMCoreConditionVS
Id: zm-core-condition-vs
Title: "ZM-Core Condition/Diagnosis"
Description: "Conditions and diagnoses relevant to Zambian health"
* ^status = #active
* include codes from system http://snomed.info/sct


ValueSet: ZMCoreObservationCategoryVS
Id: zm-core-observation-category-vs
Title: "ZM-Core Observation Category"
Description: "Observation categories used in Zambian health systems"
* ^status = #active
* include codes from system http://terminology.hl7.org/CodeSystem/observation-category


// ============================================================================
// Code Systems (References to standard systems)
// ============================================================================

// Reference to ICD-10 for diagnoses
// Reference to SNOMED CT for clinical concepts
// Reference to RxNorm/ATC for medications
