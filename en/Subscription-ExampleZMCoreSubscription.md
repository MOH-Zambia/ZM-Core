# Example Communication Hub Subscription - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Communication Hub Subscription**

## Example Subscription: Example Communication Hub Subscription

Profile: [ZM-Core Communication Subscription Profile](StructureDefinition-zm-core-subscription.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/subscription-id`/dhis2-reporting-reminders

**name**: DHIS2 Reporting Reminder Workflow

**status**: Active

**topic**: [Active Communication Request Topic](SubscriptionTopic-ZMCommunicationRequestActiveTopic.md)

**managingEntity**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**reason**: Start the operational reporting-reminder workflow for active requests.

### FilterBies

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ResourceType** | **FilterParameter** | **Comparator** | **Value** |
| * | [http://hl7.org/fhir/StructureDefinition/CommunicationRequest](http://hl7.org/fhir/R5/communicationrequest.html) | category | Equals | operational |

**channelType**: [SubscriptionChannel Type Codes: rest-hook](http://terminology.hl7.org/7.1.0/CodeSystem-subscription-channel-type.html#subscription-channel-type-rest-hook) (Rest Hook)

**endpoint**: [https://communication-hub.moh.gov.zm/fhir-events](https://communication-hub.moh.gov.zm/fhir-events)

**heartbeatPeriod**: 60

**timeout**: 20

**contentType**: application/fhir+json

**content**: Id-only

**maxCount**: 100



## Resource Content

```json
{
  "resourceType" : "Subscription",
  "id" : "ExampleZMCoreSubscription",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-subscription"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/subscription-id",
    "value" : "dhis2-reporting-reminders"
  }],
  "name" : "DHIS2 Reporting Reminder Workflow",
  "status" : "active",
  "topic" : "http://hapi.moh.gov.zm/fhir/SubscriptionTopic/communication-request-active",
  "managingEntity" : {
    "reference" : "Organization/ExampleZMCoreOrganization"
  },
  "reason" : "Start the operational reporting-reminder workflow for active requests.",
  "filterBy" : [{
    "resourceType" : "CommunicationRequest",
    "filterParameter" : "category",
    "comparator" : "eq",
    "value" : "operational"
  }],
  "channelType" : {
    "system" : "http://terminology.hl7.org/CodeSystem/subscription-channel-type",
    "code" : "rest-hook",
    "display" : "Rest Hook"
  },
  "endpoint" : "https://communication-hub.moh.gov.zm/fhir-events",
  "heartbeatPeriod" : 60,
  "timeout" : 20,
  "contentType" : "application/fhir+json",
  "content" : "id-only",
  "maxCount" : 100
}

```
