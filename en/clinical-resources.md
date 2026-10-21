# Clinical Resources - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.2.0

* [**Table of Contents**](toc.md)
* **Clinical Resources**

## Clinical Resources

### Clinical resources

These ZM-Core profiles support clinical information exchange across Zambia's health systems. They are reusable national profiles, including for SmartCare workflows. The profile definitions are authoritative for cardinalities, terminology bindings, and Must Support flags. Must Support does not by itself make an optional element mandatory.

| | | |
| :--- | :--- | :--- |
| [Procedure](StructureDefinition-zm-core-procedure.md) | Record an intervention, its status, procedure code, subject, occurrence, and at least one performer. | [Outpatient counselling](Procedure-ExampleZMCoreProcedure.md) |
| [Condition](StructureDefinition-zm-core-condition.md) | Record a diagnosis or problem with clinical status, condition code, and subject. Include verification status, onset, and recording date when available. | [Hypertension diagnosis](Condition-ExampleZMCoreCondition.md) |
| [AllergyIntolerance](StructureDefinition-zm-core-allergy-intolerance.md) | Record an allergy or intolerance with clinical status, substance or product code, and patient. Each supplied reaction requires a manifestation; severity and criticality describe different aspects of the record. | [Medication allergy](AllergyIntolerance-ExampleZMCoreAllergyIntolerance.md) |
| [DiagnosticReport](StructureDefinition-zm-core-diagnostic-report.md) | Record diagnostic findings with an identifier containing system and value, request, status, category, report code, subject, effective time, issue time, and performer. | [Laboratory report](DiagnosticReport-ExampleZMCoreDiagnosticReport.md) |
| [Immunization](StructureDefinition-zm-core-immunization.md) | Record vaccination with status, vaccine code, patient, and occurrence. Include source, lot, route, dose, performer, and series information when available. | [Vaccine administration](Immunization-ExampleZMCoreImmunization.md) |

#### Relationships and resource boundaries

* Use the ZM-Core Patient and Encounter references to connect clinical records to the person and care context. Condition, Procedure, and DiagnosticReport also permit other subject types as specified in their profiles.
* The procedure example links its reason to the hypertension Condition. A diagnosis belongs in Condition; the intervention undertaken for that diagnosis belongs in Procedure.
* DiagnosticReport.basedOn links to a ZM-Core ServiceRequest, specimen to a ZM-Core Specimen, and result to ZM-Core Observation records. A report summarizes findings; individual measurements belong in Observation.
* Use Immunization for vaccine administration. The linked [adverse event example](AdverseEvent-ExampleZMCoreAdverseEventFollowingImmunization.md) demonstrates recording an event following immunization separately.
* Keep an allergy or intolerance record distinct from a single adverse event. An absent allergy record does not establish that a patient has no known allergies.

#### Terminology and implementation

Follow the terminology bindings inherited from FHIR R5 and any constraints in each profile. Preserve coding system, code, and display when exchanging coded concepts. Some examples use CodeableConcept.text to illustrate content without claiming a national code mapping; these do not establish new national code systems. Translate local enum values using governed mappings rather than publishing them as standard codes.

Use FHIR R5 element shapes: Procedure.occurrence[x] for timing, Procedure.reason as CodeableReference, and AllergyIntolerance.reaction.manifestation as CodeableReference. Consult the [FHIR R5 Procedure](https://hl7.org/fhir/R5/procedure.html), [AllergyIntolerance](https://hl7.org/fhir/R5/allergyintolerance.html), and [Immunization](https://hl7.org/fhir/R5/immunization.html) specifications for base resource semantics.

See also the [SmartCare mapping guidance](smartcare-mapping.md) and the [artifact index](artifacts.md) for supporting profiles and examples.

