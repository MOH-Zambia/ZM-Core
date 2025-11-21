// ZM-Core Logical Models
// Logical models for Zambian health system workflows and data structures

// ============================================================================
// Patient Demographics Model
// ============================================================================
Logical: ZMCorePatientDemographics
Title: "Patient Demographics"
Description: "Core patient demographic information for Zambian health systems"
* identifier 1..* Identifier "Patient Identifier"
* fullName 1..1 string "Patient Full Name"
* firstName 0..1 string "Patient First Name"
* lastName 0..1 string "Patient Last Name"
* birthDate 0..1 date "Date of Birth"
* gender 0..1 code "Gender" (http://hl7.org/fhir/administrative-gender)
* maritalStatus 0..1 CodeableConcept "Marital Status"
* ethnicity 0..1 CodeableConcept "Ethnicity"
* language 0..* CodeableConcept "Languages Spoken"
* address 0..* Address "Patient Address"
* contact 0..* ContactPoint "Contact Information"
* nextOfKin 0..1 Reference "Next of Kin"
* dateCreated 1..1 dateTime "Record Creation Date"
* dateModified 0..1 dateTime "Record Last Modified Date"


// ============================================================================
// Health Facility Model
// ============================================================================
Logical: ZMCoreHealthFacility
Title: "Health Facility"
Description: "Health facility structure for Zambian health systems"
* identifier 1..* Identifier "Facility Identifier"
* facilityName 1..1 string "Facility Name"
* facilityType 1..1 CodeableConcept "Type of Facility"
* level 0..1 CodeableConcept "Facility Level (Primary, Secondary, Tertiary)"
* province 0..1 string "Province"
* district 0..1 string "District"
* address 0..1 Address "Facility Address"
* coordinates 0..1 string "GPS Coordinates"
* telecom 0..* ContactPoint "Contact Information"
* operatingHours 0..* string "Operating Hours"
* services 0..* CodeableConcept "Services Offered"
* staffCount 0..1 integer "Number of Staff"
* isActive 1..1 boolean "Is Facility Active"
* parentFacility 0..1 Reference "Parent Facility (for referrals)"
* dateEstablished 0..1 date "Date Facility Established"


// ============================================================================
// Clinical Encounter Model
// ============================================================================
Logical: ZMCoreClinicalEncounter
Title: "Clinical Encounter"
Description: "Clinical encounter structure for Zambian health systems"
* encounterId 1..1 Identifier "Encounter Identifier"
* patient 1..1 Reference "Patient Reference"
* facility 1..1 Reference "Health Facility Reference"
* provider 0..1 Reference "Healthcare Provider"
* encounterDate 1..1 dateTime "Date/Time of Encounter"
* encounterType 1..1 CodeableConcept "Type of Encounter (consultation, inpatient, etc.)"
* chief_complaint 0..1 string "Chief Complaint"
* findings 0..* CodeableConcept "Clinical Findings"
* diagnoses 0..* Reference "Diagnoses"
* treatments 0..* Reference "Treatments/Plans"
* vitals 0..1 Reference "Vital Signs"
* notes 0..1 string "Clinical Notes"
* referral 0..1 Reference "Referral (if applicable)"
* status 1..1 code "Encounter Status (planned, in-progress, completed)"


// ============================================================================
// Immunization Record Model
// ============================================================================
Logical: ZMCoreImmunizationRecord
Title: "Immunization Record"
Description: "Immunization record for Zambian health systems"
* patient 1..1 Reference "Patient"
* vaccine 1..1 CodeableConcept "Vaccine Administered"
* doseNumber 1..1 integer "Dose Number"
* dateAdministered 1..1 date "Date of Administration"
* provider 0..1 Reference "Healthcare Provider"
* facility 0..1 Reference "Health Facility"
* nextDueDate 0..1 date "Next Scheduled Dose"
* notes 0..1 string "Notes"
