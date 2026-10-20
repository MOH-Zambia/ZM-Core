Instance: ExampleZMCoreAllergyIntolerance
InstanceOf: ZMCoreAllergyIntolerance
Title: "Example ZM-Core Allergy Intolerance"
Description: "An allergy corresponding to a SmartCare Pro IdentifiedAllergy."
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
// R5 made AllergyIntolerance.type a CodeableConcept; a bare code here has
// no system and matches nothing in the bound value set.
* type = http://hl7.org/fhir/allergy-intolerance-type#allergy "Allergy"
* category = #medication
* criticality = #high
* code.text = "Penicillin"
* patient = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* recordedDate = "2026-08-08T08:30:00+02:00"
* reaction.manifestation.concept.text = "Generalized urticaria"
* reaction.severity = #severe
