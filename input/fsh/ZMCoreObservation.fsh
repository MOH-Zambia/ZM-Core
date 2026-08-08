// ============================================================================
// Observation Profile
// ============================================================================
Profile: ZMCoreObservation
Parent: Observation
Id: zm-core-observation
Title: "ZM-Core Observation Profile"
Description: "Zambia clinical observation profile"
* status MS
* category MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup or Device or ZMCoreLocation or ZMCoreOrganization or ZMCorePractitioner or ZMCoreMedication or Substance or BiologicallyDerivedProduct)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* effectiveDateTime MS
* issued MS
* performer MS
* value[x] MS
* interpretation MS
* note MS
* bodySite MS
* method MS
* specimen MS
* specimen only Reference(ZMCoreSpecimen)
* referenceRange MS
