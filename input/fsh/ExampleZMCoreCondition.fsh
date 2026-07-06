Instance: ExampleZMCoreCondition
InstanceOf: ZMCoreCondition
Title: "Example ZM-Core Condition"
Description: "Example diagnosis of hypertension"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category[0].coding[0] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item "Problem list item"
* code.coding[0] = http://snomed.info/sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* subject = Reference(ExampleZMCorePatient)
* recordedDate = "2025-11-15"