# ZM-Core Recipient Group Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Recipient Group Profile**

## Resource Profile: ZM-Core Recipient Group Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreGroup |

 
A governed national, provincial, district, facility, patient, or workforce distribution group used for recipient resolution. 

**Usages:**

* Refer to this Profile: [ZM-Core Adverse Event Profile](StructureDefinition-zm-core-adverse-event.md), [ZM-Core Appointment Profile](StructureDefinition-zm-core-appointment.md), [ZM-Core Care Plan Profile](StructureDefinition-zm-core-care-plan.md), [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md)... Show 9 more, [ZM-Core Condition Profile](StructureDefinition-zm-core-condition.md), [ZM-Core Diagnostic Report Profile](StructureDefinition-zm-core-diagnostic-report.md), [ZM-Core Encounter Profile](StructureDefinition-zm-core-encounter.md), [ZM-Core Medication Dispense Profile](StructureDefinition-zm-core-medication-dispense.md), [ZM-Core MedicationRequest Profile](StructureDefinition-zm-core-medication-request.md), [ZM-Core Observation Profile](StructureDefinition-zm-core-observation.md), [ZM-Core Procedure Profile](StructureDefinition-zm-core-procedure.md), [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md) and [ZM-Core Specimen Profile](StructureDefinition-zm-core-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-group.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-group.csv), [Excel](../StructureDefinition-zm-core-group.xlsx), [Schematron](../StructureDefinition-zm-core-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-group",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group",
  "version" : "0.1.0",
  "name" : "ZMCoreGroup",
  "title" : "ZM-Core Recipient Group Profile",
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
  "description" : "A governed national, provincial, district, facility, patient, or workforce distribution group used for recipient resolution.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Group",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Group",
      "path" : "Group"
    },
    {
      "id" : "Group.identifier",
      "path" : "Group.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.active",
      "path" : "Group.active",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.type",
      "path" : "Group.type",
      "mustSupport" : true
    },
    {
      "id" : "Group.membership",
      "path" : "Group.membership",
      "mustSupport" : true
    },
    {
      "id" : "Group.code",
      "path" : "Group.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.name",
      "path" : "Group.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Group.description",
      "path" : "Group.description",
      "mustSupport" : true
    },
    {
      "id" : "Group.managingEntity",
      "path" : "Group.managingEntity",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Group.characteristic",
      "path" : "Group.characteristic",
      "mustSupport" : true
    },
    {
      "id" : "Group.member",
      "path" : "Group.member",
      "mustSupport" : true
    },
    {
      "id" : "Group.member.entity",
      "path" : "Group.member.entity",
      "mustSupport" : true
    },
    {
      "id" : "Group.member.period",
      "path" : "Group.member.period",
      "mustSupport" : true
    },
    {
      "id" : "Group.member.inactive",
      "path" : "Group.member.inactive",
      "mustSupport" : true
    }]
  }
}

```
