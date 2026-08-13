# Example Communication Request Provenance - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Communication Request Provenance**

## Example Provenance: Example Communication Request Provenance

Profile: [ZM-Core Communication Provenance Profile](StructureDefinition-zm-core-communication-provenance.md)

Provenance for [CommunicationRequest: extension = Internal,http://hapi.moh.gov.zm/fhir/sid/message-template#DHIS2-REPORTING-REMINDER-v1,en,true,2026-08-11 17:00:00+0200,->Organization Chilenje First Level Hospital,SMS; identifier = http://hapi.moh.gov.zm/fhir/sid/communication-request-id#CR-DHIS2-2026-0001; status = active; intent = order; category = Operational; priority = routine; medium = Email; occurrence[x] = 2026-08-10 08:00:00+0200 --> 2026-08-11 17:00:00+0200; authoredOn = 2026-08-08 10:00:00+0200](CommunicationRequest-ExampleZMCoreCommunicationRequest.md)

Summary

| | |
| :--- | :--- |
| Occurrence | 2026-08-08 10:00:00+0200 |
| Recorded | 2026-08-08 10:00:01+0200 |
| Activity | Create communication request |

**Agents**

* **Type**: Author
  * **who**: [PractitionerRole ](PractitionerRole-ExampleZMCorePractitionerRole.md)
  * **On Behalf Of**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)



## Resource Content

```json
{
  "resourceType" : "Provenance",
  "id" : "ExampleZMCoreCommunicationProvenance",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-provenance"]
  },
  "target" : [{
    "reference" : "CommunicationRequest/ExampleZMCoreCommunicationRequest"
  }],
  "occurredDateTime" : "2026-08-08T10:00:00+02:00",
  "recorded" : "2026-08-08T10:00:01+02:00",
  "activity" : {
    "text" : "Create communication request"
  },
  "agent" : [{
    "type" : {
      "text" : "Author"
    },
    "who" : {
      "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
    },
    "onBehalfOf" : {
      "reference" : "Organization/ExampleZMCoreOrganization"
    }
  }]
}

```
