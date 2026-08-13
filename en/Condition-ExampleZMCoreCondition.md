# Example ZM-Core Condition - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Condition**

## Example Condition: Example ZM-Core Condition

Profile: [ZM-Core Condition Profile](StructureDefinition-zm-core-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem list item

**code**: Hypertensive disorder, systemic arterial (disorder)

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**recordedDate**: 2025-11-15



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ExampleZMCoreCondition",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem list item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "38341003",
      "display" : "Hypertensive disorder, systemic arterial (disorder)"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "recordedDate" : "2025-11-15"
}

```
