# Example ZM-Core Healthcare Service - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Healthcare Service**

## Example HealthcareService: Example ZM-Core Healthcare Service

Profile: [ZM-Core Healthcare Service Profile](StructureDefinition-zm-core-healthcare-service.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/healthcare-service-id`/HF001-DHIS2

**active**: true

**providedBy**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**type**: Routine health information reporting

**location**: [Location University Teaching Hospital](Location-ExampleZMCoreLocation.md)

**name**: DHIS2 Reporting Service

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | [dhis2.reporting@example.org](mailto:dhis2.reporting@example.org) |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "ExampleZMCoreHealthcareService",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-healthcare-service"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/healthcare-service-id",
    "value" : "HF001-DHIS2"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  },
  "type" : [{
    "text" : "Routine health information reporting"
  }],
  "location" : [{
    "reference" : "Location/ExampleZMCoreLocation"
  }],
  "name" : "DHIS2 Reporting Service",
  "contact" : [{
    "telecom" : [{
      "system" : "email",
      "value" : "dhis2.reporting@example.org"
    }]
  }]
}

```
