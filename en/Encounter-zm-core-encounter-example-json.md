# Example ZM-Core Encounter (JSON) - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Encounter (JSON)**

## Example Encounter: Example ZM-Core Encounter (JSON)

Profile: [ZM-Core Encounter Profile](StructureDefinition-zm-core-encounter.md)

**status**: Completed

**class**: ambulatory

**type**: Clinic visit

**subject**: [Grace Kapela Female, DoB: 1990-03-22 ( http://hapi.moh.gov.zm/fhir/sid/nrc#234567/12/2)](Patient-zm-core-patient-example-json.md)

**serviceProvider**: [Organization Chilenje First Level Hospital](Organization-zm-core-organization-example-json.md)

**actualPeriod**: 2025-11-20 10:00:00+0000 --> 2025-11-20 11:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "zm-core-encounter-example-json",
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
    "text" : "Clinic visit"
  }],
  "subject" : {
    "reference" : "Patient/zm-core-patient-example-json"
  },
  "serviceProvider" : {
    "reference" : "Organization/zm-core-organization-example-json"
  },
  "actualPeriod" : {
    "start" : "2025-11-20T10:00:00Z",
    "end" : "2025-11-20T11:00:00Z"
  }
}

```
