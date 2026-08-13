# Example ZM-Core Organization - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Organization**

## Example Organization: Example ZM-Core Organization

Profile: [ZM-Core Facility Organization Profile](StructureDefinition-zm-core-facility-organization.md)

**ZM-Core Facility Registry Status**: Operational

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/hmis-facility-code`/50060042, `http://hapi.moh.gov.zm/fhir/sid/dhis2-organisation-unit-uid`/HvCdWhbVEvI, `http://hapi.moh.gov.zm/fhir/sid/smartcare-facility-id`/5b00f2acd13f48b783ef90cb1f32e068, `http://hapi.moh.gov.zm/fhir/sid/ihris-facility-id`/facility|1022

**active**: true

**type**: Hospital - Level 1, Government of the Republic of Zambia

**name**: Chilenje First Level Hospital

### Contacts

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Purpose** | **Telecom** | **Address** |
| * | General enquiries | [+260 211 123456](tel:+260211123456) | Lusaka Lusaka Province ZM |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "ExampleZMCoreOrganization",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization"]
  },
  "extension" : [{
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-registry-status",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-registry-status",
        "code" : "operational",
        "display" : "Operational"
      }]
    }
  }],
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/hmis-facility-code",
    "value" : "50060042"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/dhis2-organisation-unit-uid",
    "value" : "HvCdWhbVEvI"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/smartcare-facility-id",
    "value" : "5b00f2acd13f48b783ef90cb1f32e068"
  },
  {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/ihris-facility-id",
    "value" : "facility|1022"
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type",
      "code" : "hospital-level-1",
      "display" : "Hospital - Level 1"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership",
      "code" : "grz",
      "display" : "Government of the Republic of Zambia"
    }]
  }],
  "name" : "Chilenje First Level Hospital",
  "contact" : [{
    "purpose" : {
      "text" : "General enquiries"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+260 211 123456"
    }],
    "address" : {
      "city" : "Lusaka",
      "district" : "Lusaka",
      "state" : "Lusaka Province",
      "country" : "ZM"
    }
  }]
}

```
