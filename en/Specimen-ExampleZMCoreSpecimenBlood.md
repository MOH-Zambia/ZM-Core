# Example ZM-Core Blood Specimen - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example ZM-Core Blood Specimen**

## Example Specimen: Example ZM-Core Blood Specimen

Profile: [ZM-Core Specimen Profile](StructureDefinition-zm-core-specimen.md)

**identifier**: `http://hapi.moh.gov.zm/fhir/sid/specimen-id`/SPM-2026-000001

**accessionIdentifier**: `http://hapi.moh.gov.zm/fhir/sid/laboratory-accession-number`/ACC-2026-000001

**status**: Available

**type**: Blood specimen

**subject**: [John Mwale Male, DoB: 1985-05-15 ( http://hapi.moh.gov.zm/fhir/sid/nrc#123456/12/1)](Patient-ExampleZMCorePatient.md)

**receivedTime**: 2026-08-08 09:20:00+0200

**request**: [ServiceRequest Hemoglobin [Mass/volume] in Blood](ServiceRequest-ExampleZMCoreLaboratoryServiceRequest.md)

### Collections

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Quantity** |
| * | [Practitioner Mary Chipo Phiri (official)](Practitioner-ExampleZMCorePractitioner.md) | 2026-08-08 09:00:00+0200 | 4 mL (Details: UCUM codemL = 'mL') |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "ExampleZMCoreSpecimenBlood",
  "meta" : {
    "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-specimen"]
  },
  "identifier" : [{
    "system" : "http://hapi.moh.gov.zm/fhir/sid/specimen-id",
    "value" : "SPM-2026-000001"
  }],
  "accessionIdentifier" : {
    "system" : "http://hapi.moh.gov.zm/fhir/sid/laboratory-accession-number",
    "value" : "ACC-2026-000001"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119297000",
      "display" : "Blood specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/ExampleZMCorePatient"
  },
  "receivedTime" : "2026-08-08T09:20:00+02:00",
  "request" : [{
    "reference" : "ServiceRequest/ExampleZMCoreLaboratoryServiceRequest"
  }],
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/ExampleZMCorePractitioner"
    },
    "collectedDateTime" : "2026-08-08T09:00:00+02:00",
    "quantity" : {
      "value" : 4,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    }
  }
}

```
