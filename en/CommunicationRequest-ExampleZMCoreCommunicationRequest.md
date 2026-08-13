# Example DHIS2 Reporting Reminder Request - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example DHIS2 Reporting Reminder Request**

## Example CommunicationRequest: Example DHIS2 Reporting Reminder Request

Profile: [ZM-Core Communication Request Profile](StructureDefinition-zm-core-communication-request.md)

**Communication Data Classification**: Internal

**Approved Communication Template**: `http://hapi.moh.gov.zm/fhir/sid/message-template`/DHIS2-REPORTING-REMINDER-v1

**Communication Message Language**: en

**Communication Acknowledgement Required**: true

**Communication Expiry**: 2026-08-11 17:00:00+0200

**Communication Requesting System**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**Communication Fallback Channel**: SMS

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/communication-request-id`/CR-DHIS2-2026-0001

**status**: Active

**intent**: Order

**category**: Operational

**priority**: Routine

**medium**: Email

**about**: [HealthcareService DHIS2 Reporting Service](HealthcareService-ExampleZMCoreHealthcareService.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | A DHIS2 report is due. Authenticate to DHIS2 to review the reporting period and submit the report. |

**occurrence**: 2026-08-10 08:00:00+0200 --> 2026-08-11 17:00:00+0200

**authoredOn**: 2026-08-08 10:00:00+0200

**requester**: [PractitionerRole ](PractitionerRole-ExampleZMCorePractitionerRole.md)

**recipient**: [PractitionerRole ](PractitionerRole-ExampleZMCorePractitionerRole.md)

### Reasons

| | |
| :--- | :--- |
| - | **Concept** |
| * | DHIS2 reporting deadline approaching |



## Resource Content

```json
{
  "resourceType" : "CommunicationRequest",
  "id" : "ExampleZMCoreCommunicationRequest",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request"]
  },
  "extension" : [{
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-data-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-data-classification",
        "code" : "internal",
        "display" : "Internal"
      }]
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-template",
    "valueIdentifier" : {
      "system" : "http://hapi.moh.gov.zm/fhir/sid/message-template",
      "value" : "DHIS2-REPORTING-REMINDER-v1"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-message-language",
    "valueCode" : "en"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-acknowledgement-required",
    "valueBoolean" : true
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-expiry",
    "valueInstant" : "2026-08-11T17:00:00+02:00"
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-requesting-system",
    "valueReference" : {
      "reference" : "Organization/ExampleZMCoreOrganization"
    }
  },
  {
    "url" : "http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-communication-fallback-channel",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-channel",
        "code" : "sms",
        "display" : "SMS"
      }]
    }
  }],
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/communication-request-id",
    "value" : "CR-DHIS2-2026-0001"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-lane",
      "code" : "operational",
      "display" : "Operational"
    }]
  }],
  "priority" : "routine",
  "medium" : [{
    "coding" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-channel",
      "code" : "email",
      "display" : "Email"
    }]
  }],
  "about" : [{
    "reference" : "HealthcareService/ExampleZMCoreHealthcareService"
  }],
  "payload" : [{
    "contentCodeableConcept" : {
      "text" : "A DHIS2 report is due. Authenticate to DHIS2 to review the reporting period and submit the report."
    }
  }],
  "occurrencePeriod" : {
    "start" : "2026-08-10T08:00:00+02:00",
    "end" : "2026-08-11T17:00:00+02:00"
  },
  "authoredOn" : "2026-08-08T10:00:00+02:00",
  "requester" : {
    "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
  },
  "recipient" : [{
    "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
  }],
  "reason" : [{
    "concept" : {
      "text" : "DHIS2 reporting deadline approaching"
    }
  }]
}

```
