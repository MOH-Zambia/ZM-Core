Instance: ExampleZMCoreEncounter
InstanceOf: ZMCoreEncounter
Title: "Example ZM-Core Encounter"
Description: "Example outpatient encounter"
* status = #completed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* type[0].text = "General outpatient visit"
* subject = Reference(ExampleZMCorePatient)
* serviceProvider = Reference(ExampleZMCoreOrganization)
* actualPeriod.start = "2025-11-15T09:00:00+02:00"
* actualPeriod.end = "2025-11-15T10:30:00+02:00"