# Smartcare Mapping - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* **Smartcare Mapping**

## Smartcare Mapping

### SmartCare Pro interoperability mapping

 This page records the mapping derived from a source review of the SmartCare Pro API repository. The review covered entity models, controller contracts, local enumerations, laboratory and logistics integration models, authentication, and audit/synchronization fields. It did not include a production database, live API traffic, or a terminology validation exercise. The profiles below define exchange boundaries; they are not a one-for-one publication of SmartCare database tables. 

#### Resource mapping

| | | |
| :--- | :--- | :--- |
| Client | ZMCorePatient | Use NRC, NUPN, NAPSA, under-five card, and ART numbers as typed identifiers; do not use them interchangeably. |
| UserAccount and facility access | ZMCorePractitioner and ZMCorePractitionerRole | Exchange the person separately from each role, organization, service, and location assignment. |
| Facility, Department, ServicePoint, Ward, and Bed | ZMCoreOrganization, ZMCoreHealthcareService, and ZMCoreLocation | Resolve Facility Master, HMIS, and DISA codes through governed identifier namespaces and the national facility registry. |
| Encounter, Interaction, VisitDetail, admission, and discharge | ZMCoreEncounter | Preserve encounter type, time, participants, service provider, and location as coded/reference data rather than display strings. |
| Appointment | ZMCoreAppointment | Translate completed and cancelled booleans into one FHIR appointment status and reference the patient and responsible actors. |
| IdentifiedAllergy and AllergicDrug | ZMCoreAllergyIntolerance | Map severity to reaction severity; map the substance or product to a governed clinical terminology. |
| ImmunizationRecord and VaccineDose | ZMCoreImmunization | Retain vaccine, dose number, administration time, lot, route, location, and performer. |
| AdverseEvent following immunization | ZMCoreAdverseEvent | Represent each event with coded manifestations and a reference to the suspect Immunization; do not exchange symptom booleans as the clinical model. |
| Investigation | ZMCoreServiceRequest | Use the order number as an identifier, standard request priority, a coded test, requester, performer, encounter, and linked specimen. |
| IdentifiedSampleCollection | ZMCoreSpecimen | Retain specimen identity, type, collection time and quantity, receipt time, collector, and request linkage. |
| Result and Test | ZMCoreObservation | Use LOINC where verified, UCUM for units, structured values, interpretation, reference ranges, and specimen linkage. |
| Result set and report conclusion | ZMCoreDiagnosticReport | Link the report to its ServiceRequest, Specimen, Observations, encounter, performers, and interpreter. |
| Prescription and Medication | ZMCoreMedicationRequest and ZMCoreMedication | Keep product identity distinct from the order; express route, timing, dose, duration, and quantity structurally. |
| Dispense and DispensedItem | ZMCoreMedicationDispense | Reference the authorizing prescription and actual product, quantity, date, dispenser, destination, and receiver. |
| Surgery and other performed interventions | ZMCoreProcedure | Represent procedure code, occurrence, performers, location, reason, outcome, and complications as structured data. |
| ReferralModule | ZMCoreServiceRequest | Use a referral category, reason, requester, requested service, receiving organization or service, and a standard workflow status. |
| TreatmentPlan, NursingPlan, and programme plans | ZMCoreCarePlan | Preserve plan status, intent, period, custodian, problems, goals, activities, and contributors. |
| NextOfKin, Caregiver, and PatientBinding | ZMCoreRelatedPerson | Use a patient reference and coded relationship; use another Patient resource only when the related person is also a registered patient. |
| Created/modified facility and user fields | ZMCoreProvenance and ZMCoreAuditEvent | Exchange authorship and system activity as provenance/audit data, not as duplicate clinical extensions on every resource. |
| OrderAck, ResultACK, DISALog, and ElmisLog | Task, Provenance, and AuditEvent alongside the clinical resources | Acknowledgement and transport state must not replace the clinical resource status. |

#### Required normalization

* SmartCare GUID and integer primary keys may be retained as source identifiers, but national business identifiers SHALL use stable, explicit identifier systems.
* SmartCare numeric enum values SHALL NOT be sent without a canonical code system. A ConceptMap or another governed mapping artifact is required for each source enum.
* Clinical codes SHOULD use maintained national value sets backed by internationally recognized systems such as LOINC, SNOMED CT, ICD, and UCUM where appropriate and licensed.
* Names such as `ClinicianName`, `FacilityName`, `RequestedBy`, and `TestLocation` are display fallbacks only. Exchange SHALL include resolvable references whenever the actor or place is known.
* SmartCare `IsDeleted` is a local soft-delete flag and `IsSynced` or ELMIS synchronization flags are transport state. They SHALL NOT be interpreted as FHIR clinical status.

#### Known interoperability limitations

1. **Terminology identity and versioning:**many clinical concepts use local lookup-table integers or numeric enums without a canonical system or version. Several domains overlap, including separate diagnosis hierarchies, allergy/drug tables, test/result options, and medication catalogues.
1. **LOINC inconsistency:**the Test entity and DISA integration use the field name`LONIC`, while some DTOs use`LOINC`. A stored value must be validated as a real LOINC code before it is published with`http://loinc.org`.
1. **Priority mismatch:**SmartCare's investigation priority enum contains overlapping values such as Regular, Routine, Urgent, Emergency, ASAP, Stat, Timed, and Unspecified. These do not map one-to-one to the FHIR request-priority value set.
1. **Specimen fragmentation:**HIV-oriented sample types and TB-oriented specimen types are separate enums with limited lists. A unified, extensible specimen terminology and explicit ConceptMaps are needed.
1. **Identifier collisions:**NRC, NUPN, ART number, HMIS code, Facility Master Code, DISA code, ZAMMSA code, and MSL drug ID have different issuers and scopes. Missing issuer governance or facility-local number generation can cause false matches.
1. **Denormalized clinical data:**some integration logs store measurements such as blood pressure as strings, AEFI manifestations as independent booleans, and surgery teams or indications as free text. This loses units, coding, components, performers, and uncertainty.
1. **Status loss:**completion, cancellation, result receipt, acknowledgement, deletion, and synchronization are often represented as independent booleans or strings. Conflicting combinations are possible and require deterministic mapping to one FHIR workflow status plus separate transport state.
1. **FHIR REST behavior:**the reviewed API exposes many proprietary CRUD endpoints rather than FHIR resource endpoints. No reviewed contract established CapabilityStatement discovery, FHIR search semantics, Bundles, conditional operations, version-aware updates, or OperationOutcome error responses.
1. **External workflow coupling:**DISA and eLMIS payload/log models combine patient, facility, order, result, medication, and acknowledgement data. Consumers should exchange referenced resources and explicit workflow events rather than depend on those flattened payloads.
1. **Authentication and authorization:**the API uses a custom encrypted bearer token under a scheme named BasicAuthentication. It does not provide the standard SMART-on-FHIR/OAuth discovery, scopes, audience, or authorization context expected by many interoperable clients.
1. **Privacy and credential exposure:**repository-held request/response logs serialize personal and account fields, including credential-related fields. Production logging must exclude secrets and sensitive payloads, apply retention controls, and use consent, security labels, Provenance, and AuditEvent where required.
1. **Biometrics:**raw fingerprint templates are stored as client fields. ZM-Core does not define raw biometric exchange. Implementations should exchange only a governed match/reference outcome when legally authorized and protect biometric data as highly sensitive.
1. **Schema and naming drift:**misspellings and duplicate concepts occur across entity, controller, DTO, and route names. Generated integrations should bind to versioned contracts, not infer semantics from names alone.
1. **Programme breadth:**ART, HTS, TB, PrEP/PEP, PMTCT, maternal/newborn, GBV, VMMC, NCD, and dialysis modules contain programme-specific fields beyond this core mapping. Those should be developed as governed programme profiles and value sets, not added wholesale as core extensions.

#### Implementation sequence

 A conforming adapter should first establish identifier and terminology governance, then implement Patient, PractitionerRole, Organization/Location, and Encounter references. Clinical workflows should be exchanged as connected resource graphs—for example ServiceRequest to Specimen to Observation to DiagnosticReport—before DISA/eLMIS acknowledgement state is added as Task, Provenance, and AuditEvent data. 

