# Home - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ImplementationGuide/zm-core | *Version*:0.1.0 |
| Active as of 2025-11-21 | *Computable Name*:ZMCore |

 This is our FHIR Implementation Guide. It contains the specifications developed by our community. 

> **This documentation and set of artefacts are still undergoing development.**This content is only for demonstrative purposes.

 

### Content

This publication contains the full set of specifications...

There is also an overview of the projects and motivation for the specifications.

The top menu allows quick navigation to the different sections, and a [Table of Contents](toc.md) is provided with the entire content of this Implementation Guide. (Be aware that some pages have multiple tabs).

### Dependencies

### Global Profiles

*There are no Global profiles defined*

### Intellectual Property Considerations

 While this implementation guide and the underlying FHIR are licensed as public domain, this guide includes examples making use of terminologies such as LOINC, SNOMED CT and others which have more restrictive licensing requirements. Implementers should make themselves familiar with licensing and any other constraints of terminologies, questionnaires, and other components used as part of their implementation process. In some cases, licensing requirements may limit the systems that data captured using certain questionnaires may be shared with. 

This publication includes IP covered under the following statements.

* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* LOINC: [DiagnosticReport/ExampleZMCoreDiagnosticReport](DiagnosticReport-ExampleZMCoreDiagnosticReport.md), [Observation/ExampleZMCoreObservationBP](Observation-ExampleZMCoreObservationBP.md), [Observation/ExampleZMCoreObservationHemoglobin](Observation-ExampleZMCoreObservationHemoglobin.md) and [ServiceRequest/ExampleZMCoreLaboratoryServiceRequest](ServiceRequest-ExampleZMCoreLaboratoryServiceRequest.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* SNOMED Clinical Terms&reg; (SNOMED CT&reg;): [Condition/ExampleZMCoreCondition](Condition-ExampleZMCoreCondition.md), [ServiceRequest/ExampleZMCoreLaboratoryServiceRequest](ServiceRequest-ExampleZMCoreLaboratoryServiceRequest.md), [Specimen/ExampleZMCoreSpecimenBlood](Specimen-ExampleZMCoreSpecimenBlood.md) and [ZMCoreConditionVS](ValueSet-zm-core-condition-vs.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [AllergyIntolerance Clinical Status Codes](http://terminology.hl7.org/7.1.0/CodeSystem-allergyintolerance-clinical.html): [AllergyIntolerance/ExampleZMCoreAllergyIntolerance](AllergyIntolerance-ExampleZMCoreAllergyIntolerance.md)
* [AllergyIntolerance Verification Status](http://terminology.hl7.org/7.1.0/CodeSystem-allergyintolerance-verification.html): [AllergyIntolerance/ExampleZMCoreAllergyIntolerance](AllergyIntolerance-ExampleZMCoreAllergyIntolerance.md)
* [AuditEventOutcome](http://terminology.hl7.org/7.1.0/CodeSystem-audit-event-outcome.html): [AuditEvent/ExampleZMCoreCommunicationAuditEvent](AuditEvent-ExampleZMCoreCommunicationAuditEvent.md)
* [Condition Category Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-category.html): [Condition/ExampleZMCoreCondition](Condition-ExampleZMCoreCondition.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-clinical.html): [Condition/ExampleZMCoreCondition](Condition-ExampleZMCoreCondition.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.1.0/CodeSystem-condition-ver-status.html): [Condition/ExampleZMCoreCondition](Condition-ExampleZMCoreCondition.md)
* [Observation Category Codes](http://terminology.hl7.org/7.1.0/CodeSystem-observation-category.html): [Observation/ExampleZMCoreObservationBP](Observation-ExampleZMCoreObservationBP.md), [Observation/ExampleZMCoreObservationHemoglobin](Observation-ExampleZMCoreObservationHemoglobin.md) and [ZMCoreObservationCategoryVS](ValueSet-zm-core-observation-category-vs.md)
* [Organization type](http://terminology.hl7.org/7.1.0/CodeSystem-organization-type.html): [ZMCoreOrganizationTypeVS](ValueSet-zm-core-organization-type-vs.md)
* [SubscriptionChannel Type Codes](http://terminology.hl7.org/7.1.0/CodeSystem-subscription-channel-type.html): [DHIS2 Reporting Reminder Workflow](Subscription-ExampleZMCoreSubscription.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0074.html): [DiagnosticReport/ExampleZMCoreDiagnosticReport](DiagnosticReport-ExampleZMCoreDiagnosticReport.md)
* [degreeLicenseCertificate](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0360.html): [Practitioner/ExampleZMCorePractitioner](Practitioner-ExampleZMCorePractitioner.md)
* [ActCode](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html): [Encounter/ExampleZMCoreEncounter](Encounter-ExampleZMCoreEncounter.md), [Encounter/zm-core-encounter-example-json](Encounter-zm-core-encounter-example-json.md) and [ZMCoreEncounterTypeVS](ValueSet-zm-core-encounter-type-vs.md)
* [MaritalStatus](http://terminology.hl7.org/7.1.0/CodeSystem-v3-MaritalStatus.html): [ZMCoreMaritalStatusVS](ValueSet-zm-core-marital-status-vs.md)
* [RoleCode](http://terminology.hl7.org/7.1.0/CodeSystem-v3-RoleCode.html): [University Teaching Hospital](Location-ExampleZMCoreLocation.md)


* WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norway. Use of all or parts of the material requires reference to the WHO Collaborating Centre for Drug Statistics Methodology. Copying and distribution for commercial purposes is not allowed. Changing or manipulating the material is not allowed.

* [ATC classification system](http://tx.fhir.org/r5/ValueSet/atc): [Medication/ExampleZMCoreMedication](Medication-ExampleZMCoreMedication.md)


### Disclaimer

 The specification herewith documented is a demo working specification, and may not be used for any implementation purposes. This draft is provided without warranty of completeness or consistency, and the official publication supersedes this draft. No liability can be inferred from the use or misuse of this specification, or its consequences. 

