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
* identifier ^slicing.description = "National and programme identifiers evidenced in SmartCare Pro, and the client identifiers exchanged through the Zambia Client Registry."
* identifier contains
    nrc 0..1 MS and
    nupn 0..1 MS and
    napsa 0..1 MS and
    underFiveCard 0..1 MS and
    artNumber 0..1 MS and
    zcrId 0..1 MS and
    nhima 0..1 MS and
    passport 0..1 MS and
    chipClientId 0..1 MS and
    smartcarePatientId 0..1 MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* identifier[nrc].system = "http://hapi.moh.gov.zm/fhir/sid/nrc"
* identifier[nupn].system = "http://hapi.moh.gov.zm/fhir/sid/nupn"
* identifier[napsa].system = "http://hapi.moh.gov.zm/fhir/sid/napsa-number"
* identifier[underFiveCard].system = "http://hapi.moh.gov.zm/fhir/sid/under-five-card-number"
* identifier[artNumber].system = "http://hapi.moh.gov.zm/fhir/sid/art-number"

// Client Registry identifiers.
//
// The ZCR id is allocated by the national client registry and is the identifier
// other systems carry to refer to a client without asserting a national id of
// their own. The source-system ids below are the keys each point-of-care system
// already holds; registering them here is what stops the same identifier being
// published under four different spellings.
* identifier[zcrId].system = "http://hapi.moh.gov.zm/fhir/sid/zcr-id"
* identifier[zcrId] ^short = "Zambia Client Registry id; allocated by the registry, never asserted by a source"
* identifier[nhima].system = "http://hapi.moh.gov.zm/fhir/sid/nhima"
* identifier[nhima] ^short = "NHIMA member number"
* identifier[passport].system = "http://hapi.moh.gov.zm/fhir/sid/passport"
* identifier[passport] ^short = "Passport number"
* identifier[chipClientId].system = "http://hapi.moh.gov.zm/fhir/sid/chip-client-id"
* identifier[chipClientId] ^short = "CHiP client id; asserted by CHiP only"
* identifier[smartcarePatientId].system = "http://hapi.moh.gov.zm/fhir/sid/smartcare-patient-id"
* identifier[smartcarePatientId] ^short = "SmartCare patient id; asserted by SmartCare only"
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
