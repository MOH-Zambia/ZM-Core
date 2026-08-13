# ZM-Core Facility Organization Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Facility Organization Profile**

## Resource Profile: ZM-Core Facility Organization Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreFacilityOrganization |

 
A health facility registered in the Zambia Master Facility List. Physical coordinates and site characteristics are represented by ZMCoreLocation, while offered services are represented by ZMCoreHealthcareService. 

**Usages:**

* Examples for this Profile: [Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md) and [Chilenje First Level Hospital](Organization-zm-core-organization-example-json.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-facility-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-facility-organization.csv), [Excel](../StructureDefinition-zm-core-facility-organization.xlsx), [Schematron](../StructureDefinition-zm-core-facility-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-facility-organization",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization",
  "version" : "0.1.0",
  "name" : "ZMCoreFacilityOrganization",
  "title" : "ZM-Core Facility Organization Profile",
  "status" : "active",
  "date" : "2026-08-13T13:25:03+00:00",
  "publisher" : "Ministry of Health - Zambia",
  "contact" : [{
    "name" : "Ministry of Health - Zambia",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.moh.gov.zm/"
    },
    {
      "system" : "email",
      "value" : "digital.health@moh.gov.zm"
    }]
  },
  {
    "name" : "ZM-Core Team",
    "telecom" : [{
      "system" : "email",
      "value" : "zm-core@moh.gov.zm",
      "use" : "work"
    }]
  }],
  "description" : "A health facility registered in the Zambia Master Facility List. Physical coordinates and site characteristics are represented by ZMCoreLocation, while offered services are represented by ZMCoreHealthcareService.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "constraint" : [{
        "key" : "zm-facility-type-required",
        "severity" : "error",
        "human" : "A facility organization SHALL include a facility type from the Zambia Master Facility List facility type value set.",
        "expression" : "type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type').exists() and type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-type').all(memberOf('http://hapi.moh.gov.zm/fhir/ValueSet/facility-type'))",
        "source" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization"
      },
      {
        "key" : "zm-facility-ownership-required",
        "severity" : "error",
        "human" : "A facility organization SHALL include ownership from the Zambia Master Facility List facility ownership value set.",
        "expression" : "type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership').exists() and type.where(coding.system = 'http://hapi.moh.gov.zm/fhir/CodeSystem/facility-ownership').all(memberOf('http://hapi.moh.gov.zm/fhir/ValueSet/facility-ownership'))",
        "source" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization"
      }]
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "min" : 1
    },
    {
      "id" : "Organization.extension:registryStatus",
      "path" : "Organization.extension",
      "sliceName" : "registryStatus",
      "min" : 1
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "min" : 2
    }]
  }
}

```
