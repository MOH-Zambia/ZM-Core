Invariant: zm-nrc
Description: "NRC must match the Zambian NRC format: 6 digits / 2 digits / 1 digit (e.g., 123456/78/1)."
Expression: "matches('^[0-9]{6}/[0-9]{2}/[0-9]{1}$')"
Severity: #error

// ============================================================================
// Practitioner Profile
// ============================================================================
Profile: ZMCorePractitioner
Parent: Practitioner
Id: zm-core-practitioner
Title: "ZM-Core Practitioner Profile"
Description: "Zambia health workforce practitioner profile"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Different identifiers captured for an employee/practitioner in HRMS."

// Core identifiers from HRMS employee record (hr.employee extension in HRMS)
* identifier contains
    nrc 0..1 MS and
    employeeNumber 0..1 MS and
    institutionFileNumber 0..1 MS and
    psmdFileNumber 0..1 MS and
    pspfMemberNumber 0..1 MS and
    aeNumber 0..1 MS and
    professionalRegistration 0..* MS

* identifier[nrc].system 1..1 MS
* identifier[nrc].system = "http://hapi.moh.gov.zm/fhir/sid/nrc"
* identifier[nrc].value 1..1 MS
* identifier[nrc].value obeys zm-nrc

* identifier[employeeNumber].system 1..1 MS
* identifier[employeeNumber].system = "http://hapi.moh.gov.zm/fhir/sid/employee-number"
* identifier[employeeNumber].value 1..1 MS

* identifier[institutionFileNumber].system 1..1 MS
* identifier[institutionFileNumber].system = "http://hapi.moh.gov.zm/fhir/sid/institution-file-number"
* identifier[institutionFileNumber].value 1..1 MS

* identifier[psmdFileNumber].system 1..1 MS
* identifier[psmdFileNumber].system = "http://hapi.moh.gov.zm/fhir/sid/psmd-file-number"
* identifier[psmdFileNumber].value 1..1 MS

* identifier[pspfMemberNumber].system 1..1 MS
* identifier[pspfMemberNumber].system = "http://hapi.moh.gov.zm/fhir/sid/pspf-member-number"
* identifier[pspfMemberNumber].value 1..1 MS

* identifier[aeNumber].system 1..1 MS
* identifier[aeNumber].system = "http://hapi.moh.gov.zm/fhir/sid/ae-number"
* identifier[aeNumber].value 1..1 MS

// Professional council / registration identifiers (if present)
* identifier[professionalRegistration].system 1..1 MS
* identifier[professionalRegistration].system = "http://hapi.moh.gov.zm/fhir/sid/registration-id"
* identifier[professionalRegistration].value 1..1 MS

// Names (Given Names + Surname; Maiden Name optional)
* name 1..* MS
* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name contains
    official 1..1 MS and
    maiden 0..1 MS

* name[official].use = #official
* name[official].family 1..1 MS
* name[official].given 1..* MS

* name[maiden].use = #maiden
* name[maiden].family 1..1 MS

// Demographics
* gender 1..1 MS
* birthDate 0..1 MS

// Contact points (maps to hr.employee work_email / work_phone / mobile_phone where available)
* telecom 0..* MS

// Qualifications (maps to hrms.employee.qualification: qualification_id, training_institution_id, date_obtained)
* qualification 0..* MS
* qualification.code 1..1 MS
* qualification.issuer 0..1 MS
* qualification.period 0..1 MS