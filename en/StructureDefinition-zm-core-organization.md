# ZM-Core Organization Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Organization Profile**

## Resource Profile: ZM-Core Organization Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreOrganization |

 
Zambia healthcare organization profile, including identifiers and classifications used by the national Master Facility List. 

**Usages:**

* Derived from this Profile: [ZM-Core Facility Organization Profile](StructureDefinition-zm-core-facility-organization.md)
* Refer to this Profile: [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md), [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Encounter Profile](StructureDefinition-zm-core-encounter.md), [ZM-Core Recipient Group Profile](StructureDefinition-zm-core-group.md)... Show 8 more, [ZM-Core Healthcare Service Profile](StructureDefinition-zm-core-healthcare-service.md), [ZM-Core Location Profile](StructureDefinition-zm-core-location.md), [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md), [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md), [ZM-Core Organization Profile](StructureDefinition-zm-core-organization.md), [ZM-Core Practitioner Role Profile](StructureDefinition-zm-core-practitioner-role.md), [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md) and [ZM-Core Communication Subscription Profile](StructureDefinition-zm-core-subscription.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-organization.csv), [Excel](../StructureDefinition-zm-core-organization.xlsx), [Schematron](../StructureDefinition-zm-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-organization",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
  "version" : "0.1.0",
  "name" : "ZMCoreOrganization",
  "title" : "ZM-Core Organization Profile",
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
  "description" : "Zambia healthcare organization profile, including identifiers and classifications used by the national Master Facility List.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.extension:registryStatus",
      "path" : "Organization.extension",
      "sliceName" : "registryStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-registry-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "National facility identifiers and external-system routing codes.",
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier.value",
      "path" : "Organization.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:facilityMasterCode",
      "path" : "Organization.identifier",
      "sliceName" : "facilityMasterCode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:facilityMasterCode.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/facility-master-code"
    },
    {
      "id" : "Organization.identifier:hmisCode",
      "path" : "Organization.identifier",
      "sliceName" : "hmisCode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:hmisCode.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/hmis-facility-code"
    },
    {
      "id" : "Organization.identifier:disaCode",
      "path" : "Organization.identifier",
      "sliceName" : "disaCode",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:disaCode.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/disa-facility-code"
    },
    {
      "id" : "Organization.identifier:mflRegistryId",
      "path" : "Organization.identifier",
      "sliceName" : "mflRegistryId",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:mflRegistryId.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/mfl-registry-id"
    },
    {
      "id" : "Organization.identifier:dhis2Uid",
      "path" : "Organization.identifier",
      "sliceName" : "dhis2Uid",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:dhis2Uid.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/dhis2-organisation-unit-uid"
    },
    {
      "id" : "Organization.identifier:smartcareGuid",
      "path" : "Organization.identifier",
      "sliceName" : "smartcareGuid",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:smartcareGuid.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/smartcare-facility-id"
    },
    {
      "id" : "Organization.identifier:elmisId",
      "path" : "Organization.identifier",
      "sliceName" : "elmisId",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:elmisId.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/elmis-facility-id"
    },
    {
      "id" : "Organization.identifier:ihrisId",
      "path" : "Organization.identifier",
      "sliceName" : "ihrisId",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:ihrisId.system",
      "path" : "Organization.identifier.system",
      "patternUri" : "http://hapi.moh.gov.zm/fhir/sid/ihris-facility-id"
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "short" : "Whether this Organization registry record is in active use; not the facility operational status",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Organization classification; facility profiles include separate facility type and ownership concepts",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.purpose",
      "path" : "Organization.contact.purpose",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.name",
      "path" : "Organization.contact.name",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.telecom",
      "path" : "Organization.contact.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.endpoint",
      "path" : "Organization.endpoint",
      "mustSupport" : true
    }]
  }
}

```
