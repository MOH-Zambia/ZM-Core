# Example Delivered DHIS2 Reporting Reminder - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Delivered DHIS2 Reporting Reminder**

## Example Communication: Example Delivered DHIS2 Reporting Reminder

Profile: [ZM-Core Communication Profile](StructureDefinition-zm-core-communication.md)

**Communication Data Classification**: Internal

**Approved Communication Template**: `http://hapi.moh.gov.zm/fhir/sid/message-template`/DHIS2-REPORTING-REMINDER-v1

**Communication Message Language**: en

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/communication-id`/COMM-DHIS2-2026-0001

**basedOn**: [CommunicationRequest: extension = Internal,http://hapi.moh.gov.zm/fhir/sid/message-template#DHIS2-REPORTING-REMINDER-v1,en,true,2026-08-11 17:00:00+0200,->Organization Chilenje First Level Hospital,SMS; identifier = http://hapi.moh.gov.zm/fhir/sid/communication-request-id#CR-DHIS2-2026-0001; status = active; intent = order; category = Operational; priority = routine; medium = Email; occurrence[x] = 2026-08-10 08:00:00+0200 --> 2026-08-11 17:00:00+0200; authoredOn = 2026-08-08 10:00:00+0200](CommunicationRequest-ExampleZMCoreCommunicationRequest.md)

**status**: Completed

**category**: Operational

**priority**: Routine

**medium**: Email

**topic**: DHIS2 reporting reminder

**sent**: 2026-08-10 08:00:05+0200

**received**: 2026-08-10 08:00:07+0200

**recipient**: [PractitionerRole ](PractitionerRole-ExampleZMCorePractitionerRole.md)

**sender**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

### Payloads

| | |
| :--- | :--- |
| - | **Content[x]** |
| * | A DHIS2 report is due. Sign in to DHIS2 for details. |



## Resource Content

```json
{
  "resourceType" : "Communication",
  "id" : "ExampleZMCoreCommunication",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication"]
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
  }],
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/communication-id",
    "value" : "COMM-DHIS2-2026-0001"
  }],
  "basedOn" : [{
    "reference" : "CommunicationRequest/ExampleZMCoreCommunicationRequest"
  }],
  "status" : "completed",
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
  "topic" : {
    "text" : "DHIS2 reporting reminder"
  },
  "sent" : "2026-08-10T08:00:05+02:00",
  "received" : "2026-08-10T08:00:07+02:00",
  "recipient" : [{
    "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
  }],
  "sender" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  },
  "payload" : [{
    "contentCodeableConcept" : {
      "text" : "A DHIS2 report is due. Sign in to DHIS2 for details."
    }
  }]
}

```
