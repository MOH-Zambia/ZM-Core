# ZM-Core Appointment Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Appointment Profile**

## Resource Profile: ZM-Core Appointment Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-appointment | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreAppointment |

 
Zambia appointment profile for scheduled clinical services, including SmartCare Pro appointments. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-appointment.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-appointment.csv), [Excel](../StructureDefinition-zm-core-appointment.xlsx), [Schematron](../StructureDefinition-zm-core-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-appointment",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-appointment",
  "version" : "0.1.0",
  "name" : "ZMCoreAppointment",
  "title" : "ZM-Core Appointment Profile",
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
  "description" : "Zambia appointment profile for scheduled clinical services, including SmartCare Pro appointments.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    },
    {
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.cancellationReason",
      "path" : "Appointment.cancellationReason",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.serviceCategory",
      "path" : "Appointment.serviceCategory",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.serviceType",
      "path" : "Appointment.serviceType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.appointmentType",
      "path" : "Appointment.appointmentType",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.reason",
      "path" : "Appointment.reason",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.description",
      "path" : "Appointment.description",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Appointment.end",
      "path" : "Appointment.end",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.note",
      "path" : "Appointment.note",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.basedOn",
      "path" : "Appointment.basedOn",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.subject",
      "path" : "Appointment.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "mustSupport" : true
    }]
  }
}

```
