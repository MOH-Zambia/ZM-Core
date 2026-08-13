# Communication Hub - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* **Communication Hub**

## Communication Hub

### Unified Health Communication Hub

 The Unified Health Communication Hub is a governed shared service behind the HIE. Source systems create `ZMCoreCommunicationRequest` resources; subscriptions activate routing workflows; and the hub records delivery, acknowledgement, escalation, provenance, and audit results in FHIR. The FHIR server and originating systems remain authoritative. Workflow engines such as n8n orchestrate processing but are not clinical repositories. 

#### Workflow resources

| | |
| :--- | :--- |
| `CommunicationRequest` | Governed request containing the purpose, recipient, schedule, approved template, language, classification, and channel policy. |
| `SubscriptionTopic`and`Subscription` | R5 event trigger and secure delivery configuration. ZM-Core requires ID-only notification payloads. |
| `Communication` | Record of what was sent or received, by which channel, and with what FHIR delivery status. |
| `Task` | Acknowledgement, completion, recipient-resolution, or escalation work item with a required response period. |
| `Consent` | Permission and channel preferences governing contact with a patient. |
| `AuditEvent`and`Provenance` | Security access trail and authorship/change history. |
| `PractitionerRole`,`Organization`,`HealthcareService`,`Group`, and`Location` | Authoritative directory entries used for role- and hierarchy-based recipient resolution. |

#### Lifecycle and outcome

 Implementers SHALL use the required base FHIR status value sets. A request is normally `active` while the hub is processing it and `completed` when the workflow has ended. “Delivered” or “failed” is represented by the linked `Communication.status` and `Communication.statusReason`. “Escalated” is represented by a linked `Task` whose code is `escalate`. This avoids introducing non-conformant status values on `CommunicationRequest`. 

#### Security and disclosure

 The data-classification extension drives channel and disclosure rules. Restricted health information SHALL NOT be placed directly in ordinary SMS, email, Teams, WhatsApp, push, or IVR messages. Those channels carry a minimal notification and direct the recipient to an authenticated portal or application. Subscription notifications contain resource identifiers only; an authorized hub service retrieves the resource through the HIE. Systems SHALL apply consent, purpose limitation, encryption, access control, audit logging, idempotency, retry, expiry, and escalation policy before delivery. 

#### Pilot

 The included example chain implements the recommended low-risk DHIS2 reporting-reminder pilot: an operational request is detected, the current reporting officer is resolved through `PractitionerRole`, an email with an SMS fallback is sent, an acknowledgement `Task` is created, and delivery and provenance are recorded. 

