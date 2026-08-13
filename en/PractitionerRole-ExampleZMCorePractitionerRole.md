# Example ZM-Core Practitioner Role - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Practitioner Role**

## Example PractitionerRole: Example ZM-Core Practitioner Role

Profile: [ZM-Core Practitioner Role Profile](StructureDefinition-zm-core-practitioner-role.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/practitioner-role-id`/DHO-LSK-DHIO-001

**active**: true

**practitioner**: [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md)

**organization**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**code**: District Health Information Officer

**location**: [Location University Teaching Hospital](Location-ExampleZMCoreLocation.md)

**healthcareService**: [HealthcareService DHIS2 Reporting Service](HealthcareService-ExampleZMCoreHealthcareService.md)

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | [dhio.lusaka@example.org](mailto:dhio.lusaka@example.org),[+260-97-111-2233](tel:+260-97-111-2233) |

**communication**: English



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ExampleZMCorePractitionerRole",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/practitioner-role-id",
    "value" : "DHO-LSK-DHIO-001"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  },
  "organization" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  },
  "code" : [{
    "text" : "District Health Information Officer"
  }],
  "location" : [{
    "reference" : "Location/ExampleZMCoreLocation"
  }],
  "healthcareService" : [{
    "reference" : "HealthcareService/ExampleZMCoreHealthcareService"
  }],
  "contact" : [{
    "telecom" : [{
      "system" : "email",
      "value" : "dhio.lusaka@example.org"
    },
    {
      "system" : "phone",
      "value" : "+260-97-111-2233"
    }]
  }],
  "communication" : [{
    "coding" : [{
      "system" : "urn:ietf:bcp:47",
      "code" : "en",
      "display" : "English"
    }]
  }]
}

```
