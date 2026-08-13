# Example ZM-Core Laboratory Service Request - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Laboratory Service Request**

## Example ServiceRequest: Example ZM-Core Laboratory Service Request

Profile: [ZM-Core Service Request Profile](StructureDefinition-zm-core-service-request.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/laboratory-order-number`/LAB-REQ-2026-000001

**requisition**: `http://hapi.moh.gov.zm/fhir/sid/laboratory-requisition-number`/LAB-BATCH-2026-000001

**status**: Completed

**intent**: Order

**category**: Laboratory procedure

**priority**: Routine

### Codes

| | |
| :--- | :--- |
| - | **Concept** |
| * | Hemoglobin [Mass/volume] in Blood |

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**encounter**: [Encounter: status = completed; class = ambulatory; type = ; actualPeriod = 2025-11-15 09:00:00+0200 --> 2025-11-15 10:30:00+0200](Encounter-ExampleZMCoreEncounter.md)

**authoredOn**: 2026-08-08 08:45:00+0200

**requester**: [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md)

**performer**: [Organization Chilenje First Level Hospital](Organization-ExampleZMCoreOrganization.md)

**specimen**: [Specimen: identifier = http://hapi.moh.gov.zm/fhir/sid/specimen-id#SPM-2026-000001; accessionIdentifier = http://hapi.moh.gov.zm/fhir/sid/laboratory-accession-number#ACC-2026-000001; status = available; type = Blood specimen; receivedTime = 2026-08-08 09:20:00+0200](Specimen-ExampleZMCoreSpecimenBlood.md)

**note**: 

> 

Routine full blood count sample.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "ExampleZMCoreLaboratoryServiceRequest",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-service-request"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/laboratory-order-number",
    "value" : "LAB-REQ-2026-000001"
  }],
  "requisition" : {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/laboratory-requisition-number",
    "value" : "LAB-BATCH-2026-000001"
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "108252007",
      "display" : "Laboratory procedure"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "concept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "718-7",
        "display" : "Hemoglobin [Mass/volume] in Blood"
      }]
    }
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "encounter" : {
    "reference" : "Encounter/ExampleZMCoreEncounter"
  },
  "authoredOn" : "2026-08-08T08:45:00+02:00",
  "requester" : {
    "reference" : "Practitioner/ExampleZMCorePractitioner"
  },
  "performer" : [{
    "reference" : "Organization/ExampleZMCoreOrganization"
  }],
  "specimen" : [{
    "reference" : "Specimen/ExampleZMCoreSpecimenBlood"
  }],
  "note" : [{
    "text" : "Routine full blood count sample."
  }]
}

```
