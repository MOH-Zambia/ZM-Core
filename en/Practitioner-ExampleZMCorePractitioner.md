# Example ZM-Core Practitioner (from HRMS) - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Practitioner (from HRMS)**

## Example Practitioner: Example ZM-Core Practitioner (from HRMS)

Profile: [ZM-Core Practitioner Profile](StructureDefinition-zm-core-practitioner.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/nrc`/123456/78/1, `http://hapi.moh.gov.zm/fhir/sid/employee-number`/EMP-000123, `http://hapi.moh.gov.zm/fhir/sid/institution-file-number`/MOH-LSK-IF-7788, `http://hapi.moh.gov.zm/fhir/sid/psmd-file-number`/PSMD-552211, `http://hapi.moh.gov.zm/fhir/sid/pspf-member-number`/PSPF-0009823, `http://hapi.moh.gov.zm/fhir/sid/registration-id`/DOC-001

**name**: Mary Chipo Phiri (Official), Banda (Name changed for Marriage)

**telecom**: [mary.phiri@example.org](mailto:mary.phiri@example.org), [+260-97-000-0000](tel:+260-97-000-0000)

**gender**: Female

**birthDate**: 1984-03-12

### Qualifications

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Period** | **Issuer** |
| * | Doctor of Medicine | 2008-11-30 --> (ongoing) | University of Zambia |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExampleZMCorePractitioner",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/nrc",
    "value" : "123456/78/1"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/employee-number",
    "value" : "EMP-000123"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/institution-file-number",
    "value" : "MOH-LSK-IF-7788"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/psmd-file-number",
    "value" : "PSMD-552211"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/pspf-member-number",
    "value" : "PSPF-0009823"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/registration-id",
    "value" : "DOC-001"
  }],
  "name" : [{
    "use" : "official",
    "family" : "Phiri",
    "given" : ["Mary", "Chipo"]
  },
  {
    "use" : "maiden",
    "family" : "Banda"
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "mary.phiri@example.org",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+260-97-000-0000",
    "use" : "mobile"
  }],
  "gender" : "female",
  "birthDate" : "1984-03-12",
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
        "code" : "MD",
        "display" : "Doctor of Medicine"
      }]
    },
    "period" : {
      "start" : "2008-11-30"
    },
    "issuer" : {
      "display" : "University of Zambia"
    }
  }]
}

```
