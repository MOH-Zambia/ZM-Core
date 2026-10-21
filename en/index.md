# Home - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/ImplementationGuide/zm-core | *Version*:0.2.0 |
| Active as of 2025-11-21 | *Computable Name*:ZMCore |

Ministry of Health · Zambia

One national foundation for health data exchange.

ZM Core defines the reusable FHIR profiles, terminology and implementation guidance that help Zambia's digital health systems exchange consistent, computable health information.

[Explore specifications](artifacts.md)
[Read the guide](toc.md)

Current release

Status
**Active**

Version
**0.1.0 · STU1**

FHIR version
**R5**

Publisher
**Ministry of Health**

i

**Standards under active development.**This release establishes Zambia's shared interoperability baseline. Implementers should review the release status and validation guidance before production use.

National interoperability

### A common language for connected care

ZM Core turns national requirements into implementable FHIR artefacts. It creates consistent expectations for the people, organisations, encounters, clinical information and workflows shared across Zambia's health ecosystem.

01

### Core profiles

Minimum expectations for Patient, Practitioner, Organization, Encounter, clinical and medication resources.

02

### Shared terminology

National code systems and value sets that give exchanged information a consistent, computable meaning.

03

### Workflow guidance

Practical mappings for SmartCare, the Master Facility List and governed health communication workflows.

04

### Reference examples

Conformant examples that show how ZM Core artefacts are used in realistic data-exchange scenarios.

Implementation pathway

### From requirement to conformant exchange

Step 01 · Discover

#### Find the right artefact

Start with the artifact index to locate the relevant profile, extension, value set or example.

[Browse all artefacts](artifacts.md)

Step 02 · Implement

#### Apply national constraints

Use the profile definitions and narrative guidance to map local data and build conformant FHIR resources.

[Review implementation guidance](toc.md)

Step 03 · Validate

#### Test before exchange

Validate resources against the ZM Core package and use the published examples as implementation references.

[Review published examples](artifacts.md)

Explore ZM Core

### Go directly to the guidance you need

Move from the national baseline into the implementation details for Zambia's priority systems and exchange patterns.

[A**Artifact index**Profiles, extensions, code systems, value sets and examples.](artifacts.md)
[C**Communication Hub**Governed communication lanes, channels, consent and audit patterns.](communication-hub.md)
[S**SmartCare mapping**FHIR mappings and workflow guidance for SmartCare interoperability.](smartcare-mapping.md)

Technical baseline

### Dependencies

The guide is built on HL7 FHIR R5 and the following implementation packages.

Conformance

### Global profiles

*There are no Global profiles defined*

### Built for Zambia's connected health ecosystem

ZM Core is published by the Zambia Ministry of Health as a common interoperability foundation for national platforms, facility systems and digital health partners.

**Contribute or report an issue**
[Open the ZM Core issue tracker](https://github.com/MOH-Zambia/ZM-Core/issues)
[zm-core@moh.gov.zm](mailto:zm-core@moh.gov.zm)

### Intellectual property considerations

While this implementation guide and the underlying FHIR specification use open licences, examples may use terminologies such as LOINC, SNOMED CT and others with additional licensing requirements. Implementers are responsible for understanding the licences and constraints that apply to their systems.

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

* [ATC classification system](http://tx.fhir.org/r5/ValueSet/tx-atc): [Medication/ExampleZMCoreMedication](Medication-ExampleZMCoreMedication.md)


### Disclaimer

This specification is under active development and is provided without warranty of completeness or consistency. The official published release supersedes development builds. No liability can be inferred from the use or misuse of this specification or its consequences.

