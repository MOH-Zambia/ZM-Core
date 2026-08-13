# ZM-Core Diagnostic Report Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Diagnostic Report Profile**

## Resource Profile: ZM-Core Diagnostic Report Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-diagnostic-report | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreDiagnosticReport |

 
Zambia diagnostic report profile for laboratory, imaging, pathology, and other diagnostic services. 

**Usages:**

* Examples for this Profile: [DiagnosticReport/ExampleZMCoreDiagnosticReport](DiagnosticReport-ExampleZMCoreDiagnosticReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-diagnostic-report.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-diagnostic-report.csv), [Excel](../StructureDefinition-zm-core-diagnostic-report.xlsx), [Schematron](../StructureDefinition-zm-core-diagnostic-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-diagnostic-report",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-diagnostic-report",
  "version" : "0.1.0",
  "name" : "ZMCoreDiagnosticReport",
  "title" : "ZM-Core Diagnostic Report Profile",
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
  "description" : "Zambia diagnostic report profile for laboratory, imaging, pathology, and other diagnostic services.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.identifier",
      "path" : "DiagnosticReport.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier.system",
      "path" : "DiagnosticReport.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.identifier.value",
      "path" : "DiagnosticReport.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.basedOn",
      "path" : "DiagnosticReport.basedOn",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-service-request"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.status",
      "path" : "DiagnosticReport.status",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.category",
      "path" : "DiagnosticReport.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.code",
      "path" : "DiagnosticReport.code",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-group",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication",
        "http://hl7.org/fhir/StructureDefinition/Substance",
        "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.encounter",
      "path" : "DiagnosticReport.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.effective[x]",
      "path" : "DiagnosticReport.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.performer",
      "path" : "DiagnosticReport.performer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.resultsInterpreter",
      "path" : "DiagnosticReport.resultsInterpreter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role",
        "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-specimen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.note",
      "path" : "DiagnosticReport.note",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.study",
      "path" : "DiagnosticReport.study",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.supportingInfo",
      "path" : "DiagnosticReport.supportingInfo",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.media",
      "path" : "DiagnosticReport.media",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.composition",
      "path" : "DiagnosticReport.composition",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusion",
      "path" : "DiagnosticReport.conclusion",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.conclusionCode",
      "path" : "DiagnosticReport.conclusionCode",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.presentedForm",
      "path" : "DiagnosticReport.presentedForm",
      "mustSupport" : true
    }]
  }
}

```
