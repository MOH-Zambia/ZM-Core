# Artifacts Summary - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ Clinical Encounter  ](StructureDefinition-ZMCoreClinicalEncounter.md) | Clinical encounter structure for Zambian health systems |
| [ Health Facility  ](StructureDefinition-ZMCoreHealthFacility.md) | Health facility structure for Zambian health systems |
| [ Immunization Record  ](StructureDefinition-ZMCoreImmunizationRecord.md) | Immunization record for Zambian health systems |
| [ Patient Demographics  ](StructureDefinition-ZMCorePatientDemographics.md) | Core patient demographic information for Zambian health systems |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ ZM-Core Adverse Event Profile  ](StructureDefinition-zm-core-adverse-event.md) | Zambia adverse event profile, including adverse events following immunization. |
| [ ZM-Core Allergy Intolerance Profile  ](StructureDefinition-zm-core-allergy-intolerance.md) | Zambia allergy and intolerance profile for allergy substances, medicinal products, severity, and reactions. |
| [ ZM-Core Appointment Profile  ](StructureDefinition-zm-core-appointment.md) | Zambia appointment profile for scheduled clinical services, including SmartCare Pro appointments. |
| [ ZM-Core Care Plan Profile  ](StructureDefinition-zm-core-care-plan.md) | Zambia care plan profile for treatment, nursing, and multidisciplinary plans. |
| [ ZM-Core Communication Audit Event Profile  ](StructureDefinition-zm-core-communication-audit-event.md) | Security and access audit trail for creation, routing, access, delivery, acknowledgement, or escalation of a hub communication. |
| [ ZM-Core Communication Consent Profile  ](StructureDefinition-zm-core-communication-consent.md) | An individual's consent decision governing whether and through which channels the Unified Health Communication Hub may make contact. |
| [ ZM-Core Communication Profile  ](StructureDefinition-zm-core-communication.md) | The immutable delivery or receipt record produced for a communication request, including channel and delivery outcome. |
| [ ZM-Core Communication Provenance Profile  ](StructureDefinition-zm-core-communication-provenance.md) | Record of who initiated or changed a communication workflow resource, when, and on whose behalf. |
| [ ZM-Core Communication Request Profile  ](StructureDefinition-zm-core-communication-request.md) | A governed request from a Ministry health system to the Unified Health Communication Hub to route and deliver information. |
| [ ZM-Core Communication Subscription Profile  ](StructureDefinition-zm-core-subscription.md) | A secure R5 Subscription that activates a communication workflow when a governed communication topic matches. |
| [ ZM-Core Communication Subscription Topic Profile  ](StructureDefinition-zm-core-communication-subscription-topic.md) | A governed R5 subscription topic that describes which communication events may activate hub workflows and what may be filtered or returned. |
| [ ZM-Core Communication Task Profile  ](StructureDefinition-zm-core-communication-task.md) | An acknowledgement, required action, recipient-resolution, or escalation task linked to a hub communication workflow. |
| [ ZM-Core Condition Profile  ](StructureDefinition-zm-core-condition.md) | Zambia diagnosis/condition profile |
| [ ZM-Core Diagnostic Report Profile  ](StructureDefinition-zm-core-diagnostic-report.md) | Zambia diagnostic report profile for laboratory, imaging, pathology, and other diagnostic services. |
| [ ZM-Core Encounter Profile  ](StructureDefinition-zm-core-encounter.md) | Zambia health encounter profile |
| [ ZM-Core Facility Organization Profile  ](StructureDefinition-zm-core-facility-organization.md) | A health facility registered in the Zambia Master Facility List. Physical coordinates and site characteristics are represented by ZMCoreLocation, while offered services are represented by ZMCoreHealthcareService. |
| [ ZM-Core Healthcare Service Profile  ](StructureDefinition-zm-core-healthcare-service.md) | A service directory entry used to resolve facilities, responsible teams, service coverage, and communication contacts. |
| [ ZM-Core Immunization Profile  ](StructureDefinition-zm-core-immunization.md) | Zambia immunization profile for vaccines administered to a patient. |
| [ ZM-Core Location Profile  ](StructureDefinition-zm-core-location.md) | A physical or administrative place from the Zambia Health Facility Registry used in facility and reporting-hierarchy routing. |
| [ ZM-Core Medication Dispense Profile  ](StructureDefinition-zm-core-medication-dispense.md) | Zambia medication dispensing profile linking dispensed medicine to the prescription, patient, encounter, and dispensing facility. |
| [ ZM-Core Medication Profile  ](StructureDefinition-zm-core-medication.md) | Zambia Core Medication Profile aligned to the ZAMMSA national product catalogue and the eLMIS Master Product List. |
| [ ZM-Core MedicationRequest Profile  ](StructureDefinition-zm-core-medication-request.md) | Zambia medication request profile |
| [ ZM-Core Observation Profile  ](StructureDefinition-zm-core-observation.md) | Zambia clinical observation profile |
| [ ZM-Core Organization Profile  ](StructureDefinition-zm-core-organization.md) | Zambia healthcare organization profile, including identifiers and classifications used by the national Master Facility List. |
| [ ZM-Core Patient Profile  ](StructureDefinition-zm-core-patient.md) | Zambia patient profile for use in health systems |
| [ ZM-Core Practitioner Profile  ](StructureDefinition-zm-core-practitioner.md) | Zambia health workforce practitioner profile |
| [ ZM-Core Practitioner Role Profile  ](StructureDefinition-zm-core-practitioner-role.md) | A current health-worker role used to route communications by responsibility rather than by hard-coded contact details. |
| [ ZM-Core Procedure Profile  ](StructureDefinition-zm-core-procedure.md) | Zambia procedure profile for surgical, diagnostic, therapeutic, and programme procedures. |
| [ ZM-Core Recipient Group Profile  ](StructureDefinition-zm-core-group.md) | A governed national, provincial, district, facility, patient, or workforce distribution group used for recipient resolution. |
| [ ZM-Core Related Person Profile  ](StructureDefinition-zm-core-related-person.md) | Zambia related person profile for next of kin, caregivers, guardians, treatment supporters, and patient-linked contacts. |
| [ ZM-Core Service Request Profile  ](StructureDefinition-zm-core-service-request.md) | Zambia request profile for laboratory, imaging, procedure, and referral services. |
| [ ZM-Core Specimen Profile  ](StructureDefinition-zm-core-specimen.md) | Zambia specimen profile for diagnostic sample collection, transport, receipt, and processing. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ Approved Communication Template  ](StructureDefinition-zm-communication-template.md) | Identifier of the approved message template used to render the communication. |
| [ Communication Acknowledgement Required  ](StructureDefinition-zm-communication-acknowledgement-required.md) | Whether the workflow must create and track an acknowledgement or completion Task. |
| [ Communication Data Classification  ](StructureDefinition-zm-communication-data-classification.md) | The governance classification used to determine permitted channels and payload disclosure. |
| [ Communication Expiry  ](StructureDefinition-zm-communication-expiry.md) | The instant after which the request must not be delivered and should be completed, revoked, or escalated according to policy. |
| [ Communication Fallback Channel  ](StructureDefinition-zm-communication-fallback-channel.md) | An approved alternative channel to try if the preferred channel cannot deliver the message. Repetition order expresses routing order. |
| [ Communication Message Language  ](StructureDefinition-zm-communication-message-language.md) | BCP-47 language code in which the recipient-facing message is rendered. |
| [ Communication Requesting System  ](StructureDefinition-zm-communication-requesting-system.md) | The authoritative source system that submitted the communication request to the HIE. |
| [ Consent Communication Channel  ](StructureDefinition-zm-consent-communication-channel.md) | A channel for which the individual's contact consent decision applies. |
| [ Medication LSI Enabled  ](StructureDefinition-zm-core-medication-lsi-enabled.md) | Indicates whether this medication is enabled for the Logistics Seasonality Index (LSI). |
| [ ZM-Core Facility Registry Status  ](StructureDefinition-zm-core-facility-registry-status.md) | The combined operational, licensing, registration, or record-quality status assigned to a facility by the Zambia Master Facility List. This is distinct from Organization.active, which indicates whether the FHIR record is in active use. |
| [ ZM-Core Medication ATC Classification  ](StructureDefinition-zm-core-medication-atc-classification.md) | WHO ATC classification for the product. |
| [ ZM-Core Medication Alternate Name  ](StructureDefinition-zm-core-medication-alternate-name.md) | Alternate or brand name of the medicine, if any. |
| [ ZM-Core Medication Alternate Pack Size  ](StructureDefinition-zm-core-medication-alternate-pack-size.md) | Alternate pack size description, if used in Master List. |
| [ ZM-Core Medication Archived  ](StructureDefinition-zm-core-medication-archived.md) | Indicates whether the product is archived or no longer active in the catalogue. |
| [ ZM-Core Medication Can Round To Zero  ](StructureDefinition-zm-core-medication-can-round-to-zero.md) | Indicates whether calculated order quantities can be rounded down to zero. |
| [ ZM-Core Medication Cartons Per Pallet  ](StructureDefinition-zm-core-medication-cartons-per-pallet.md) | Number of cartons per pallet. |
| [ ZM-Core Medication Controlled Substance  ](StructureDefinition-zm-core-medication-controlled-substance.md) | Indicates whether the product is a controlled substance. |
| [ ZM-Core Medication Description  ](StructureDefinition-zm-core-medication-description.md) | Long description of the product from the Master List. |
| [ ZM-Core Medication Dispensing Units  ](StructureDefinition-zm-core-medication-dispensing-units.md) | Unit in which the product is dispensed (e.g. tablet, vial, bottle). |
| [ ZM-Core Medication Dosage Unit  ](StructureDefinition-zm-core-medication-dosage-unit.md) | Unit of measure for the product strength (e.g. mg, ml, IU). |
| [ ZM-Core Medication Doses Per Dispensing Unit  ](StructureDefinition-zm-core-medication-doses-per-dispensing-unit.md) | Number of doses per dispensing unit. |
| [ ZM-Core Medication Flammable  ](StructureDefinition-zm-core-medication-flammable.md) | Indicates whether the product is flammable. |
| [ ZM-Core Medication Full Name  ](StructureDefinition-zm-core-medication-full-name.md) | Full trade name of the product as it appears in the Master List. |
| [ ZM-Core Medication Full Supply  ](StructureDefinition-zm-core-medication-full-supply.md) | Indicates if the product is part of the full-supply list. |
| [ ZM-Core Medication Generic Name  ](StructureDefinition-zm-core-medication-generic-name.md) | Generic name of the medicine. |
| [ ZM-Core Medication Hazardous  ](StructureDefinition-zm-core-medication-hazardous.md) | Indicates whether the product is hazardous. |
| [ ZM-Core Medication Level of Access  ](StructureDefinition-zm-core-medication-level-of-access.md) | Level of access / level of care at which this medicine is used (e.g. Health Post, Clinic, Hospital). |
| [ ZM-Core Medication Light Sensitive  ](StructureDefinition-zm-core-medication-light-sensitive.md) | Indicates whether the product is light sensitive. |
| [ ZM-Core Medication MSL Pack Size (numeric)  ](StructureDefinition-zm-core-medication-msl-pack-size.md) | Numeric MSL pack size (e.g. 100, 10). |
| [ ZM-Core Medication Pack Rounding Threshold  ](StructureDefinition-zm-core-medication-pack-rounding-threshold.md) | Threshold at which pack quantities are rounded up or down. |
| [ ZM-Core Medication Pack Size (text)  ](StructureDefinition-zm-core-medication-pack-size-text.md) | Pack size description (e.g. 'Pack of 100', 'Each'). |
| [ ZM-Core Medication Pack Weight  ](StructureDefinition-zm-core-medication-pack-weight.md) | Weight of a single pack, typically in kilograms. |
| [ ZM-Core Medication Packs Per Carton  ](StructureDefinition-zm-core-medication-packs-per-carton.md) | Number of packs per carton. |
| [ ZM-Core Medication Price  ](StructureDefinition-zm-core-medication-price.md) | Unit price of the product (e.g. pack price) as a Money value. |
| [ ZM-Core Medication Product Group  ](StructureDefinition-zm-core-medication-product-group.md) | Programmatic grouping (e.g. ARV, TB, Malaria, RMNCH). |
| [ ZM-Core Medication Product Type  ](StructureDefinition-zm-core-medication-product-type.md) | High-level product type (e.g. Medicine, Lab Reagent, Device). |
| [ ZM-Core Medication Route of Administration  ](StructureDefinition-zm-core-medication-route-of-administration.md) | Route of administration for this medicine (e.g. oral, IM, IV). |
| [ ZM-Core Medication Shelf Life  ](StructureDefinition-zm-core-medication-shelf-life.md) | Product shelf-life description (e.g. 24 months). |
| [ ZM-Core Medication Storage Classification  ](StructureDefinition-zm-core-medication-storage-classification.md) | Storage classification (e.g. Room temperature, Cold chain, Freezer). |
| [ ZM-Core Medication Storage Instructions  ](StructureDefinition-zm-core-medication-storage-instructions.md) | Free-text storage instructions. |
| [ ZM-Core Medication Store Refrigerated  ](StructureDefinition-zm-core-medication-store-refrigerated.md) | Indicates whether the product must be stored refrigerated. |
| [ ZM-Core Medication Store Room Temperature  ](StructureDefinition-zm-core-medication-store-room-temperature.md) | Storage temperature in degrees Celsius for room temperature storage. |
| [ ZM-Core Medication Strength  ](StructureDefinition-zm-core-medication-strength.md) | Product strength as free text (e.g. '500mg', '500mg/5ml'). |
| [ ZM-Core Medication Tracer  ](StructureDefinition-zm-core-medication-tracer.md) | Indicates whether the product is a tracer medicine. |
| [ ZM-Core Medication Transport Instructions  ](StructureDefinition-zm-core-medication-transport-instructions.md) | Free-text transport instructions. |
| [ ZM-Core Medication WHO Approved  ](StructureDefinition-zm-core-medication-who-approved.md) | Indicates whether the product is WHO prequalified / approved. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ ZAMMSA Medication SKU ValueSet  ](ValueSet-medication-zammsa-sku.md) | All ZAMMSA catalogue SKUs that are valid for use in the ZM-Core Medication profile. |
| [ ZM-Core Condition/Diagnosis  ](ValueSet-zm-core-condition-vs.md) | Conditions and diagnoses relevant to Zambian health |
| [ ZM-Core Encounter Type  ](ValueSet-zm-core-encounter-type-vs.md) | Types of encounters in Zambian health systems |
| [ ZM-Core Marital Status  ](ValueSet-zm-core-marital-status-vs.md) | Marital status codes used in Zambian health systems |
| [ ZM-Core Observation Category  ](ValueSet-zm-core-observation-category-vs.md) | Observation categories used in Zambian health systems |
| [ ZM-Core Organization Type  ](ValueSet-zm-core-organization-type-vs.md) | Organization types used in Zambian health systems |
| [ ZM-Core Patient Gender  ](ValueSet-zm-core-patient-gender-vs.md) | Patient gender codes |
| [ Zambia Communication Channel Value Set  ](ValueSet-zm-communication-channel-vs.md) | Approved preferred and fallback delivery channels for hub communications. |
| [ Zambia Communication Consent Action Value Set  ](ValueSet-zm-communication-consent-action-vs.md) | Permitted contact actions represented in a communication consent. |
| [ Zambia Communication Data Classification Value Set  ](ValueSet-zm-communication-data-classification-vs.md) | Data classifications used to enforce communication disclosure rules. |
| [ Zambia Communication Lane Value Set  ](ValueSet-zm-communication-lane-vs.md) | Communication governance lanes supported by the Zambia Unified Health Communication Hub. |
| [ Zambia Communication Task Code Value Set  ](ValueSet-zm-communication-task-code-vs.md) | Task actions supported by a communication workflow. |
| [ Zambia Master Facility List Facility Ownership Value Set  ](ValueSet-facility-ownership.md) | Facility ownership values permitted for a ZM-Core facility organization. |
| [ Zambia Master Facility List Facility Type Value Set  ](ValueSet-facility-type.md) | Facility types permitted for a ZM-Core facility organization. |
| [ Zambia Master Facility List Registry Status Value Set  ](ValueSet-facility-registry-status.md) | Registry status values permitted for a ZM-Core facility organization. |
| [ Zambia Medication Level of Access  ](ValueSet-medication-level-of-access.md) | Permitted level(s) of care for use of a medicine (HP, HC, L1, L2, L3). |
| [ Zambia Product Type ValueSet  ](ValueSet-product-type.md) | Allowed Product Type values for Medication. |
| [ Zambia eLMIS Product Group ValueSet  ](ValueSet-product-group.md) | Allowed Product Group values from the eLMIS Master list. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ ZAMMSA Medication SKU Code System  ](CodeSystem-medication-zammsa-sku.md) | CodeSystem representing the ZAMMSA national medicines catalogue SKUs. |
| [ Zambia Communication Channel  ](CodeSystem-zm-communication-channel.md) | Delivery channels supported by the Zambia Unified Health Communication Hub. |
| [ Zambia Communication Consent Action  ](CodeSystem-zm-communication-consent-action.md) | Consent actions governing contact by the Unified Health Communication Hub. |
| [ Zambia Communication Data Classification  ](CodeSystem-zm-communication-data-classification.md) | Data classifications that drive disclosure and channel controls for health communications. |
| [ Zambia Communication Lane  ](CodeSystem-zm-communication-lane.md) | Governance lanes used to separate communication purposes, access rules, and disclosure controls in the Zambia Unified Health Communication Hub. |
| [ Zambia Communication Task Code  ](CodeSystem-zm-communication-task-code.md) | Actions used to capture acknowledgement and escalation in communication workflows. |
| [ Zambia Level of Access for Medicines  ](CodeSystem-medication-level-of-access.md) | Levels of care at which a medicine is allowed to be used, based on the ZAMMSA catalogue. |
| [ Zambia Master Facility List Facility Ownership  ](CodeSystem-facility-ownership.md) | Facility ownership or controlling sector represented in the Zambia Master Facility List. |
| [ Zambia Master Facility List Facility Type  ](CodeSystem-facility-type.md) | Facility types represented in the Zambia Master Facility List. Police, military, private, and NGO values are retained for source compatibility but overlap with facility ownership and should not be used when a more specific service level is known. |
| [ Zambia Master Facility List Registry Status  ](CodeSystem-facility-registry-status.md) | Combined operational, licensing, registration, and record-quality states represented by the current Zambia Master Facility List operation-status field. |
| [ Zambia Product Type (eLMIS)  ](CodeSystem-product-type.md) | Product types from the eLMIS Master Product List. |
| [ Zambia eLMIS Product Group  ](CodeSystem-product-group.md) | Short product group codes from the eLMIS Master list (e.g. ess, medsurge, equip…). |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ Example Communication Acknowledgement Task  ](Task-ExampleZMCoreCommunicationTask.md) | Task used to capture acknowledgement and trigger escalation if the report remains outstanding. |
| [ Example Communication Consent  ](Consent-ExampleZMCoreCommunicationConsent.md) | Example patient contact preference and permission for notifications. |
| [ Example Communication Delivery Audit Event  ](AuditEvent-ExampleZMCoreCommunicationAuditEvent.md) | Example audit event showing successful delivery processing by the hub. |
| [ Example Communication Hub Subscription  ](Subscription-ExampleZMCoreSubscription.md) | Example secure REST-hook subscription for the DHIS2 reporting-reminder workflow. |
| [ Example Communication Request Provenance  ](Provenance-ExampleZMCoreCommunicationProvenance.md) | Example record of the authorized actor and source system that created a communication request. |
| [ Example DHIS2 Reporting Reminder Request  ](CommunicationRequest-ExampleZMCoreCommunicationRequest.md) | Low-risk operational pilot request for a facility reporting reminder. |
| [ Example Delivered DHIS2 Reporting Reminder  ](Communication-ExampleZMCoreCommunication.md) | Delivery record produced after the hub sends the reporting reminder. |
| [ Example ZAMMSA Betamethasone 0.1% cream/ointment  ](Medication-ExampleZMCoreMedication.md) | Example mapping of ZAMMSA catalogue row EM1389 into ZMCoreMedication. |
| [ Example ZM-Core Adverse Event Following Immunization  ](AdverseEvent-ExampleZMCoreAdverseEventFollowingImmunization.md) | An AEFI corresponding to SmartCare Pro AdverseEvent data. |
| [ Example ZM-Core Allergy Intolerance  ](AllergyIntolerance-ExampleZMCoreAllergyIntolerance.md) | An allergy corresponding to a SmartCare Pro IdentifiedAllergy. |
| [ Example ZM-Core Blood Specimen  ](Specimen-ExampleZMCoreSpecimenBlood.md) | A blood specimen corresponding to SmartCare Pro identified sample collection data. |
| [ Example ZM-Core Condition  ](Condition-ExampleZMCoreCondition.md) | Example diagnosis of hypertension |
| [ Example ZM-Core Diagnostic Report  ](DiagnosticReport-ExampleZMCoreDiagnosticReport.md) | Example final laboratory report with a linked hemoglobin result. |
| [ Example ZM-Core Encounter  ](Encounter-ExampleZMCoreEncounter.md) | Example outpatient encounter |
| [ Example ZM-Core Encounter (JSON)  ](Encounter-zm-core-encounter-example-json.md) | Hand-crafted JSON example of a Zambia Core Encounter. |
| [ Example ZM-Core Healthcare Service  ](HealthcareService-ExampleZMCoreHealthcareService.md) | Example facility reporting service used by the DHIS2 reminder pilot. |
| [ Example ZM-Core Hemoglobin Observation  ](Observation-ExampleZMCoreObservationHemoglobin.md) | Example laboratory result referenced by a ZM-Core DiagnosticReport. |
| [ Example ZM-Core Immunization  ](Immunization-ExampleZMCoreImmunization.md) | An administered vaccine corresponding to a SmartCare Pro ImmunizationRecord. |
| [ Example ZM-Core Laboratory Service Request  ](ServiceRequest-ExampleZMCoreLaboratoryServiceRequest.md) | A laboratory order corresponding to a SmartCare Pro Investigation. |
| [ Example ZM-Core Location  ](Location-ExampleZMCoreLocation.md) | Example physical facility location used by recipient resolution. |
| [ Example ZM-Core MedicationRequest  ](MedicationRequest-ExampleZMCoreMedicationRequest.md) | Example medication prescription |
| [ Example ZM-Core Observation - Blood Pressure  ](Observation-ExampleZMCoreObservationBP.md) | Example blood pressure reading |
| [ Example ZM-Core Organization  ](Organization-ExampleZMCoreOrganization.md) | Example Master Facility List health facility in Zambia |
| [ Example ZM-Core Organization (JSON)  ](Organization-zm-core-organization-example-json.md) | Hand-crafted JSON example of a Zambia Core Organization. |
| [ Example ZM-Core Patient  ](Patient-ExampleZMCorePatient.md) | Example patient from Lusaka, Zambia |
| [ Example ZM-Core Patient (JSON)  ](Patient-zm-core-patient-example-json.md) | Hand-crafted JSON example of a Zambia Core Patient. |
| [ Example ZM-Core Practitioner (from HRMS)  ](Practitioner-ExampleZMCorePractitioner.md) | Example practitioner mapped from HRMS/Odoo hr.employee + qualifications. |
| [ Example ZM-Core Practitioner Role  ](PractitionerRole-ExampleZMCorePractitionerRole.md) | Example current District Health Information Officer role resolved from the provider directory. |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [ Active Communication Request Topic  ](SubscriptionTopic-ZMCommunicationRequestActiveTopic.md) | R5 SubscriptionTopic for communication requests that are ready for processing by the hub. |

