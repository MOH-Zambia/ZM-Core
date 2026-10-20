// ==========================================================================
// ZM-Core Appointment Profile
// ==========================================================================

Profile: ZMCoreAppointment
Parent: Appointment
Id: zm-core-appointment
Title: "ZM-Core Appointment Profile"
Description: "Zambia appointment profile for scheduled clinical services, including SmartCare Pro appointments."
* identifier 1..* MS
* status MS
* cancellationReason MS
* serviceCategory MS
* serviceType 1..* MS
* appointmentType MS
* reason MS
* description MS
* start 1..1 MS
* end MS
* created MS
* note MS
* basedOn MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* participant 1..* MS
* participant.actor MS
* participant.status MS
