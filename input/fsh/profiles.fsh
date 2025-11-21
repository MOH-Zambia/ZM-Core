// ZM-Core Profiles
// Core FHIR resource profiles for Zambia health systems

// ============================================================================
// Patient Profile
// ============================================================================
Profile: ZMCorePatient
Parent: Patient
Id: zm-core-patient
Title: "ZM-Core Patient Profile"
Description: "Zambian patient profile for use in health systems"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS
* birthDate 0..1 MS
* gender MS
* contact MS
* address MS


// ============================================================================
// Practitioner Profile
// ============================================================================
Profile: ZMCorePractitioner
Parent: Practitioner
Id: zm-core-practitioner
Title: "ZM-Core Practitioner Profile"
Description: "Zambian healthcare practitioner profile"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS
* qualification MS
* qualification.code MS
* telecom MS


// ============================================================================
// Organization Profile
// ============================================================================
Profile: ZMCoreOrganization
Parent: Organization
Id: zm-core-organization
Title: "ZM-Core Organization Profile"
Description: "Zambian healthcare organization profile"
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* name 1..1 MS
* type 1..* MS
* address MS
* telecom MS


// ============================================================================
// Encounter Profile
// ============================================================================
Profile: ZMCoreEncounter
Parent: Encounter
Id: zm-core-encounter
Title: "ZM-Core Encounter Profile"
Description: "Zambian health encounter profile"
* status MS
* class MS
* type MS
* subject 1..1 MS
* serviceProvider MS
* period MS


// ============================================================================
// Condition Profile
// ============================================================================
Profile: ZMCoreCondition
Parent: Condition
Id: zm-core-condition
Title: "ZM-Core Condition Profile"
Description: "Zambian diagnosis/condition profile"
* subject 1..1 MS
* code 1..1 MS
* onsetDateTime MS
* recordedDate MS


// ============================================================================
// Observation Profile
// ============================================================================
Profile: ZMCoreObservation
Parent: Observation
Id: zm-core-observation
Title: "ZM-Core Observation Profile"
Description: "Zambian clinical observation profile"
* status MS
* category MS
* code 1..1 MS
* subject 1..1 MS
* effectiveDateTime MS
* value[x] MS


// ============================================================================
// Medication Profile
// ============================================================================
Profile: ZMCoreMedication
Parent: Medication
Id: zm-core-medication
Title: "ZM-Core Medication Profile"
Description: "Zambian medication profile"
* code 1..1 MS
* form MS
* ingredient MS


// ============================================================================
// MedicationRequest Profile
// ============================================================================
Profile: ZMCoreMedicationRequest
Parent: MedicationRequest
Id: zm-core-medication-request
Title: "ZM-Core MedicationRequest Profile"
Description: "Zambian medication request profile"
* status MS
* intent MS
* subject 1..1 MS
* medication[x] 1..1 MS
* dosageInstruction MS
