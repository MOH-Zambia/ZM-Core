# Example Communication Delivery Audit Event - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Communication Delivery Audit Event**

## Example AuditEvent: Example Communication Delivery Audit Event

Profile: [ZM-Core Communication Audit Event Profile](StructureDefinition-zm-core-communication-audit-event.md)

**code**: Communication delivery

**action**: Execute

**occurred**: 2026-08-10 08:00:05+0200

**recorded**: 2026-08-10 08:00:06+0200

### Outcomes

| | |
| :--- | :--- |
| - | **Code** |
| * | [AuditEventOutcome: 0](http://terminology.hl7.org/7.1.0/CodeSystem-audit-event-outcome.html#audit-event-outcome-0)(Success) |

### Agents

| | | |
| :--- | :--- | :--- |
| - | **Who** | **Requestor** |
| * | [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md) | true |

### Sources

| | |
| :--- | :--- |
| - | **Observer** |
| * | [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md) |

### Entities

| | |
| :--- | :--- |
| - | **What** |
| * | [Communication: extension = Internal,http://hapi.moh.gov.zm/fhir/sid/message-template#DHIS2-REPORTING-REMINDER-v1,en; identifier = http://hapi.moh.gov.zm/fhir/sid/communication-id#COMM-DHIS2-2026-0001; status = completed; category = Operational; priority = routine; medium = Email; topic = ; sent = 2026-08-10 08:00:05+0200; received = 2026-08-10 08:00:07+0200](Communication-ExampleZMCoreCommunication.md) |



## Resource Content

```json
{
  "resourceType" : "AuditEvent",
  "id" : "ExampleZMCoreCommunicationAuditEvent",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-audit-event"]
  },
  "code" : {
    "text" : "Communication delivery"
  },
  "action" : "E",
  "occurredDateTime" : "2026-08-10T08:00:05+02:00",
  "recorded" : "2026-08-10T08:00:06+02:00",
  "outcome" : {
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/audit-event-outcome",
      "code" : "0",
      "display" : "Success"
    }
  },
  "agent" : [{
    "who" : {
      "reference" : "Organization/ExampleZMCoreOrganization"
    },
    "requestor" : true
  }],
  "source" : {
    "observer" : {
      "reference" : "Organization/ExampleZMCoreOrganization"
    }
  },
  "entity" : [{
    "what" : {
      "reference" : "Communication/ExampleZMCoreCommunication"
    }
  }]
}

```
