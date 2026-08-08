// ============================================================================
// Patient Profile
// ============================================================================
Profile: ZMCorePatient
Parent: Patient
Id: zm-core-patient
Title: "ZM-Core Patient Profile"
Description: "Zambia patient profile for use in health systems"
* identifier 1..* MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "National and programme identifiers evidenced in SmartCare Pro."
* identifier contains
    nrc 0..1 MS and
    nupn 0..1 MS and
    napsa 0..1 MS and
    underFiveCard 0..1 MS and
    artNumber 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier[nrc].system = "http://hapi.moh.gov.zm/fhir/sid/nrc"
* identifier[nupn].system = "http://hapi.moh.gov.zm/fhir/sid/nupn"
* identifier[napsa].system = "http://hapi.moh.gov.zm/fhir/sid/napsa-number"
* identifier[underFiveCard].system = "http://hapi.moh.gov.zm/fhir/sid/under-five-card-number"
* identifier[artNumber].system = "http://hapi.moh.gov.zm/fhir/sid/art-number"
* name 1..* MS
* name.family 1..1 MS
* name.given 1..* MS
* birthDate 0..1 MS
* deceased[x] MS
* gender MS
* telecom 0..* MS
* address 0..* MS
* contact MS
* contact.relationship MS
* contact.name MS
* contact.telecom MS
* contact.address MS
* contact.organization MS
* link MS
