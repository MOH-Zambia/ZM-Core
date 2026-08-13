# Example ZM-Core Encounter - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Encounter**

## Example Encounter: Example ZM-Core Encounter

Profile: [ZM-Core Encounter Profile](StructureDefinition-zm-core-encounter.md)

**status**: Completed

**class**: ambulatory

**type**: General outpatient visit

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**serviceProvider**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**actualPeriod**: 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ExampleZMCoreEncounter",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter"]
  },
  "status" : "completed",
  "class" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "code" : "AMB",
      "display" : "ambulatory"
    }]
  }],
  "type" : [{
    "text" : "General outpatient visit"
  }],
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "serviceProvider" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  },
  "actualPeriod" : {
    "start" : "2025-11-15T09:00:00+02:00",
    "end" : "2025-11-15T10:30:00+02:00"
  }
}

```
