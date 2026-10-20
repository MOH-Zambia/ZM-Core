// ==========================================================================
// ZM-Core Medication Dispense Profile
// ==========================================================================

Profile: ZMCoreMedicationDispense
Parent: MedicationDispense
Id: zm-core-medication-dispense
Title: "ZM-Core Medication Dispense Profile"
Description: "Zambia medication dispensing profile linking dispensed medicine to the prescription, patient, encounter, and dispensing facility."
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* status MS
* medication 1..1 MS
* medication only CodeableReference(ZMCoreMedication)
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* performer 1..* MS
* authorizingPrescription 1..* MS
* authorizingPrescription only Reference(ZMCoreMedicationRequest)
* quantity 1..1 MS
* daysSupply MS
* recorded 1..1 MS
* whenPrepared MS
* whenHandedOver MS
* destination MS
* destination only Reference(ZMCoreLocation)
* receiver MS
* note MS
* dosageInstruction MS
