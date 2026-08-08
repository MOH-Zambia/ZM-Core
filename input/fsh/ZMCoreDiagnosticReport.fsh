// ============================================================================
// DiagnosticReport Profile
// ============================================================================

Profile: ZMCoreDiagnosticReport
Parent: DiagnosticReport
Id: zm-core-diagnostic-report
Title: "ZM-Core Diagnostic Report Profile"
Description: "Zambia diagnostic report profile for laboratory, imaging, pathology, and other diagnostic services."

* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* basedOn 1..* MS
* basedOn only Reference(ZMCoreServiceRequest)
* status MS
* category 1..* MS
* code MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup or Device or ZMCoreLocation or ZMCoreOrganization or ZMCorePractitioner or ZMCoreMedication or Substance or BiologicallyDerivedProduct)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* effective[x] 1..1 MS
* issued 1..1 MS
* performer 1..* MS
* performer only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or CareTeam)
* resultsInterpreter MS
* resultsInterpreter only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or CareTeam)
* specimen MS
* specimen only Reference(ZMCoreSpecimen)
* result MS
* result only Reference(ZMCoreObservation)
* note MS
* study MS
* supportingInfo MS
* media MS
* composition MS
* conclusion MS
* conclusionCode MS
* presentedForm MS
