# Example Communication Acknowledgement Task - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Communication Acknowledgement Task**

## Example Task: Example Communication Acknowledgement Task

Profile: [ZM-Core Communication Task Profile](StructureDefinition-zm-core-communication-task.md)

**Communication Data Classification**: Internal

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/communication-task-id`/TASK-DHIS2-2026-0001

**basedOn**: [CommunicationRequest: extension = Internal,http://hapi.moh.gov.zm/fhir/sid/message-template#DHIS2-REPORTING-REMINDER-v1,en,true,2026-08-11 17:00:00+0200,->Organization Chilenje First Level Hospital,SMS; identifier = http://hapi.moh.gov.zm/fhir/sid/communication-request-id#CR-DHIS2-2026-0001; status = active; intent = order; category = Operational; priority = routine; medium = Email; occurrence[x] = 2026-08-10 08:00:00+0200 --> 2026-08-11 17:00:00+0200; authoredOn = 2026-08-08 10:00:00+0200](CommunicationRequest-ExampleZMCoreCommunicationRequest.md)

**status**: Requested

**intent**: order

**priority**: Routine

**code**: Acknowledge communication

**description**: Acknowledge the DHIS2 reporting reminder and submit the report before the deadline.

**focus**: [Communication: extension = Internal,http://hapi.moh.gov.zm/fhir/sid/message-template#DHIS2-REPORTING-REMINDER-v1,en; identifier = http://hapi.moh.gov.zm/fhir/sid/communication-id#COMM-DHIS2-2026-0001; status = completed; category = Operational; priority = routine; medium = Email; topic = ; sent = 2026-08-10 08:00:05+0200; received = 2026-08-10 08:00:07+0200](Communication-ExampleZMCoreCommunication.md)

**requestedPeriod**: 2026-08-10 08:00:05+0200 --> 2026-08-11 17:00:00+0200

**authoredOn**: 2026-08-10 08:00:05+0200

**requester**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**owner**: [PractitionerRole ](PractitionerRole-ExampleZMCorePractitionerRole.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Recipient** |
| * | [PractitionerRole ](PractitionerRole-ExampleZMCorePractitionerRole.md) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ExampleZMCoreCommunicationTask",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-task"]
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
  }],
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/communication-task-id",
    "value" : "TASK-DHIS2-2026-0001"
  }],
  "basedOn" : [{
    "reference" : "CommunicationRequest/ExampleZMCoreCommunicationRequest"
  }],
  "status" : "requested",
  "intent" : "order",
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "http://hapi.moh.gov.zm/fhir/CodeSystem/zm-communication-task-code",
      "code" : "acknowledge",
      "display" : "Acknowledge communication"
    }]
  },
  "description" : "Acknowledge the DHIS2 reporting reminder and submit the report before the deadline.",
  "focus" : {
    "reference" : "Communication/ExampleZMCoreCommunication"
  },
  "requestedPeriod" : {
    "start" : "2026-08-10T08:00:05+02:00",
    "end" : "2026-08-11T17:00:00+02:00"
  },
  "authoredOn" : "2026-08-10T08:00:05+02:00",
  "requester" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  },
  "owner" : {
    "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
  },
  "restriction" : {
    "recipient" : [{
      "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
    }]
  }
}

```
