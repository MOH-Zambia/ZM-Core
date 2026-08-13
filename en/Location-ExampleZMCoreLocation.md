# Example ZM-Core Location - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Location**

## Example Location: Example ZM-Core Location

Profile: [ZM-Core Location Profile](StructureDefinition-zm-core-location.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/facility-id`/HF001

**status**: Active

**name**: University Teaching Hospital

**mode**: Instance

**type**: Hospital

**address**: Lusaka ZM 

**managingOrganization**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ExampleZMCoreLocation",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/facility-id",
    "value" : "HF001"
  }],
  "status" : "active",
  "name" : "University Teaching Hospital",
  "mode" : "instance",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "HOSP",
      "display" : "Hospital"
    }]
  }],
  "address" : {
    "city" : "Lusaka",
    "country" : "ZM"
  },
  "managingOrganization" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  }
}

```
