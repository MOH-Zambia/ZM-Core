// ==========================================================================
// Example ZM-Core Adverse Event Following Immunization
// ==========================================================================
// References ExampleZMCoreImmunization as the immunization it followed.

Instance: ExampleZMCoreAdverseEventFollowingImmunization
InstanceOf: ZMCoreAdverseEvent
Title: "Example ZM-Core Adverse Event Following Immunization"
Description: "An AEFI corresponding to SmartCare Pro AdverseEvent data."
* status = #completed
* actuality = #actual
* category.text = "Adverse event following immunization"
* code.text = "Fever following immunization"
* subject = Reference(ExampleZMCorePatient)
* encounter = Reference(ExampleZMCoreEncounter)
* occurrenceDateTime = "2026-08-08T18:00:00+02:00"
* recordedDate = "2026-08-09T08:00:00+02:00"
* recorder = Reference(ExampleZMCorePractitioner)
* suspectEntity.instanceReference = Reference(ExampleZMCoreImmunization)
* note.text = "Caregiver reported fever after vaccination."
