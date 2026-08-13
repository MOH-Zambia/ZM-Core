# Example ZM-Core Patient - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Patient**

## Example Patient: Example ZM-Core Patient

Profile: [ZM-Core Patient Profile](StructureDefinition-zm-core-patient.md)

John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)

-------

| | |
| :--- | :--- |
| Contact Detail | Lusaka ZM |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleZMCorePatient",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/nrc",
    "value" : "123456/12/1"
  }],
  "name" : [{
    "family" : "Mwale",
    "given" : ["John"]
  }],
  "gender" : "male",
  "birthDate" : "1985-05-15",
  "address" : [{
    "city" : "Lusaka",
    "country" : "ZM"
  }]
}

```
