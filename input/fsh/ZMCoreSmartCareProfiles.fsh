// ============================================================================
// SmartCare Pro interoperability profiles
// ============================================================================
// These profiles cover the exchange boundaries evidenced in SmartCare Pro.
// SmartCare database table names and numeric enum values are intentionally not
// promoted to national FHIR codes. Implementers SHALL translate them to the
// standard FHIR elements and governed terminology described by this guide.

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

Profile: ZMCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: zm-core-allergy-intolerance
Title: "ZM-Core Allergy Intolerance Profile"
Description: "Zambia allergy and intolerance profile for allergy substances, medicinal products, severity, and reactions."
* identifier MS
* clinicalStatus 1..1 MS
* verificationStatus MS
* type MS
* category MS
* criticality MS
* code 1..1 MS
* patient 1..1 MS
* patient only Reference(ZMCorePatient)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* recordedDate MS
* participant MS
* reaction MS
* reaction.manifestation 1..* MS
* reaction.severity MS

Profile: ZMCoreImmunization
Parent: Immunization
Id: zm-core-immunization
Title: "ZM-Core Immunization Profile"
Description: "Zambia immunization profile for vaccines administered to a patient."
* identifier MS
* status MS
* statusReason MS
* vaccineCode MS
* administeredProduct MS
* patient 1..1 MS
* patient only Reference(ZMCorePatient)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] 1..1 MS
* primarySource MS
* location MS
* location only Reference(ZMCoreLocation)
* lotNumber MS
* expirationDate MS
* site MS
* route MS
* doseQuantity MS
* performer MS
* reason MS
* reaction MS
* reaction.date MS
* reaction.manifestation MS
* protocolApplied MS
* protocolApplied.doseNumber MS

Profile: ZMCoreAdverseEvent
Parent: AdverseEvent
Id: zm-core-adverse-event
Title: "ZM-Core Adverse Event Profile"
Description: "Zambia adverse event profile, including adverse events following immunization."
* identifier MS
* status MS
* actuality MS
* category 1..* MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup or ZMCorePractitioner or ZMCoreRelatedPerson)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] 1..1 MS
* recordedDate MS
* resultingEffect MS
* location MS
* location only Reference(ZMCoreLocation)
* seriousness MS
* outcome MS
* recorder MS
* suspectEntity 1..* MS
* suspectEntity.instance[x] MS
* note MS

Profile: ZMCoreServiceRequest
Parent: ServiceRequest
Id: zm-core-service-request
Title: "ZM-Core Service Request Profile"
Description: "Zambia request profile for laboratory, imaging, procedure, and referral services."
* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1 MS
* requisition MS
* status MS
* intent MS
* category 1..* MS
* priority MS
* code 1..1 MS
* orderDetail MS
* quantity[x] MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] MS
* authoredOn MS
* requester 1..1 MS
* requester only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or ZMCorePatient or ZMCoreRelatedPerson)
* performer MS
* performer only Reference(ZMCorePractitioner or ZMCorePractitionerRole or ZMCoreOrganization or ZMCoreHealthcareService or CareTeam or Device)
* location MS
* location only CodeableReference(ZMCoreLocation)
* reason MS
* supportingInfo MS
* specimen MS
* specimen only Reference(ZMCoreSpecimen)
* note MS

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

Profile: ZMCoreProcedure
Parent: Procedure
Id: zm-core-procedure
Title: "ZM-Core Procedure Profile"
Description: "Zambia procedure profile for surgical, diagnostic, therapeutic, and programme procedures."
* identifier MS
* status MS
* statusReason MS
* category MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* occurrence[x] 1..1 MS
* recorded MS
* recorder MS
* performer 1..* MS
* performer.actor 1..1 MS
* location MS
* location only Reference(ZMCoreLocation)
* reason MS
* outcome MS
* report MS
* complication MS
* followUp MS
* note MS

Profile: ZMCoreRelatedPerson
Parent: RelatedPerson
Id: zm-core-related-person
Title: "ZM-Core Related Person Profile"
Description: "Zambia related person profile for next of kin, caregivers, guardians, treatment supporters, and patient-linked contacts."
* identifier MS
* active MS
* patient 1..1 MS
* patient only Reference(ZMCorePatient)
* relationship 1..* MS
* name 1..* MS
* name.family MS
* name.given MS
* telecom MS
* address MS
* gender MS
* birthDate MS
* period MS
* communication MS

Profile: ZMCoreCarePlan
Parent: CarePlan
Id: zm-core-care-plan
Title: "ZM-Core Care Plan Profile"
Description: "Zambia care plan profile for treatment, nursing, and multidisciplinary plans."
* identifier MS
* status MS
* intent MS
* category MS
* title MS
* description MS
* subject 1..1 MS
* subject only Reference(ZMCorePatient or ZMCoreGroup)
* encounter MS
* encounter only Reference(ZMCoreEncounter)
* period MS
* created MS
* custodian MS
* contributor MS
* careTeam MS
* addresses MS
* supportingInfo MS
* goal MS
* activity MS
* note MS
