# Example ZM-Core Patient (JSON) - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Patient (JSON)**

## Example Patient: Example ZM-Core Patient (JSON)

Profile: [ZM-Core Patient Profile](StructureDefinition-zm-core-patient.md)

Grace Kapela Female, DoB: 1990-03-22 ( http://hapi.moh.gov.zm/fhir/sid/nrc#234567/12/2)

-------

| | |
| :--- | :--- |
| Contact Detail | Kitwe Zambia |
| Contact: | * Emergency Contact
* [+260 97 123 4567](tel:+260971234567)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "zm-core-patient-example-json",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/nrc",
    "value" : "234567/12/2"
  }],
  "name" : [{
    "family" : "Kapela",
    "given" : ["Grace"]
  }],
  "gender" : "female",
  "birthDate" : "1990-03-22",
  "address" : [{
    "city" : "Kitwe",
    "country" : "Zambia"
  }],
  "contact" : [{
    "name" : {
      "text" : "Emergency Contact"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+260 97 123 4567"
    }]
  }]
}

```
