# Active Communication Request Topic - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Active Communication Request Topic**

## SubscriptionTopic: Active Communication Request Topic

| |
| :--- |
| Draft as of 2026-08-08 |



## Resource Content

```json
{
  "resourceType" : "SubscriptionTopic",
  "id" : "ZMCommunicationRequestActiveTopic",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-subscription-topic"]
  },
  "url" : "http://hapi.moh.gov.zm/fhir/SubscriptionTopic/communication-request-active",
  "version" : "0.1.0",
  "name" : "ZMCommunicationRequestActiveTopic",
  "title" : "Active Communication Request Topic",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-08",
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
  "description" : "Notifies the Unified Health Communication Hub when a CommunicationRequest enters the active state.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "purpose" : "Activate governed recipient resolution, routing, delivery, acknowledgement, and escalation workflows.",
  "resourceTrigger" : [{
    "description" : "A communication request is created or updated to active.",
    "resource" : "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
    "supportedInteraction" : ["create", "update"],
    "fhirPathCriteria" : "%current.status = 'active' and (%previous.empty() or %previous.status != 'active')"
  }],
  "canFilterBy" : [{
    "description" : "Filter workflows by communication governance lane.",
    "resource" : "CommunicationRequest",
    "filterParameter" : "category",
    "comparator" : ["eq"]
  },
  {
    "description" : "Filter workflows by request priority.",
    "resource" : "CommunicationRequest",
    "filterParameter" : "priority",
    "comparator" : ["eq"]
  }],
  "notificationShape" : [{
    "resource" : "CommunicationRequest",
    "include" : ["CommunicationRequest:requester"]
  }]
}

```
