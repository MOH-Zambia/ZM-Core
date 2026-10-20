// ==========================================================================
// ZM-Core Specimen Profile
// ==========================================================================

Profile: ZMCoreSpecimen
Parent: Specimen
Id: zm-core-specimen
Title: "ZM-Core Specimen Profile"
Description: "Zambia specimen profile for diagnostic sample collection, transport, receipt, and processing."
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* accessionIdentifier MS
* status MS
* type 1..1 MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup or Device or Substance or ZMCoreLocation)
* receivedTime MS
* request 1..* MS
* request only Reference(ZMCoreServiceRequest)
* collection MS
* collection.collector MS
* collection.collected[x] 1..1 MS
* collection.quantity MS
* collection.method MS
* collection.bodySite MS
* processing MS
* container MS
* condition MS
* note MS
