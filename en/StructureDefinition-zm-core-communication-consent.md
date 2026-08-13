# ZM-Core Communication Consent Profile - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ZM-Core Communication Consent Profile**

## Resource Profile: ZM-Core Communication Consent Profile 

| | |
| :--- | :--- |
| *Official URL*:http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-consent | *Version*:0.1.0 |
| Active as of 2026-08-13 | *Computable Name*:ZMCoreCommunicationConsent |

 
An individual's consent decision governing whether and through which channels the Unified Health Communication Hub may make contact. 

**Usages:**

* Refer to this Profile: [ZM-Core Communication Audit Event Profile](StructureDefinition-zm-core-communication-audit-event.md) and [ZM-Core Communication Provenance Profile](StructureDefinition-zm-core-communication-provenance.md)
* Examples for this Profile: [Consent/ExampleZMCoreCommunicationConsent](Consent-ExampleZMCoreCommunicationConsent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/zm-core|current/StructureDefinition/StructureDefinition-zm-core-communication-consent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-zm-core-communication-consent.csv), [Excel](../StructureDefinition-zm-core-communication-consent.xlsx), [Schematron](../StructureDefinition-zm-core-communication-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "zm-core-communication-consent",
  "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-consent",
  "version" : "0.1.0",
  "name" : "ZMCoreCommunicationConsent",
  "title" : "ZM-Core Communication Consent Profile",
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
  "description" : "An individual's consent decision governing whether and through which channels the Unified Health Communication Hub may make contact.",
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
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.extension",
      "path" : "Consent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Consent.extension:channel",
      "path" : "Consent.extension",
      "sliceName" : "channel",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-consent-communication-channel"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.identifier",
      "path" : "Consent.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "mustSupport" : true
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.subject",
      "path" : "Consent.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.date",
      "path" : "Consent.date",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.period",
      "path" : "Consent.period",
      "mustSupport" : true
    },
    {
      "id" : "Consent.grantor",
      "path" : "Consent.grantor",
      "mustSupport" : true
    },
    {
      "id" : "Consent.grantee",
      "path" : "Consent.grantee",
      "mustSupport" : true
    },
    {
      "id" : "Consent.manager",
      "path" : "Consent.manager",
      "mustSupport" : true
    },
    {
      "id" : "Consent.controller",
      "path" : "Consent.controller",
      "mustSupport" : true
    },
    {
      "id" : "Consent.sourceAttachment",
      "path" : "Consent.sourceAttachment",
      "mustSupport" : true
    },
    {
      "id" : "Consent.sourceReference",
      "path" : "Consent.sourceReference",
      "mustSupport" : true
    },
    {
      "id" : "Consent.regulatoryBasis",
      "path" : "Consent.regulatoryBasis",
      "mustSupport" : true
    },
    {
      "id" : "Consent.policyBasis",
      "path" : "Consent.policyBasis",
      "mustSupport" : true
    },
    {
      "id" : "Consent.policyText",
      "path" : "Consent.policyText",
      "mustSupport" : true
    },
    {
      "id" : "Consent.verification",
      "path" : "Consent.verification",
      "mustSupport" : true
    },
    {
      "id" : "Consent.decision",
      "path" : "Consent.decision",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.action",
      "path" : "Consent.provision.action",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hapi.moh.gov.zm/fhir/ValueSet/zm-communication-consent-action-vs"
      }
    },
    {
      "id" : "Consent.provision.securityLabel",
      "path" : "Consent.provision.securityLabel",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.purpose",
      "path" : "Consent.provision.purpose",
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.dataPeriod",
      "path" : "Consent.provision.dataPeriod",
      "mustSupport" : true
    }]
  }
}

```
