# HL7 FHIR Implementation Guide: ZM-Core

ZM-Core is Zambia's core implementation guide for [HL7 FHIR R5](https://hl7.org/fhir/R5/). It defines reusable profiles, extensions, terminology, examples, and implementation guidance for exchanging health information across Zambian digital health systems.

The guide is published by the Zambia Ministry of Health and provides a common interoperability foundation for systems such as SmartCare, the Master Facility List (MFL), laboratory systems, logistics systems, and national health-information platforms.

## Purpose

ZM-Core aims to:

- define consistent FHIR R5 representations for data commonly exchanged in Zambia;
- establish minimum conformance expectations for national and facility systems;
- preserve source-system identifiers while making their assigning namespaces explicit;
- provide terminology and examples for common Zambian health use cases; and
- separate administrative, clinical, geographic, and service-delivery concepts into the appropriate FHIR resources.

## Core content

The implementation guide currently includes profiles and examples for:

- Patient
- Practitioner
- Organization and Facility Organization
- Encounter
- Observation
- DiagnosticReport
- Condition
- Medication and MedicationRequest
- communication-hub workflows
- SmartCare interoperability workflows

FHIR Shorthand definitions are maintained in [`input/fsh`](input/fsh), while narrative implementation guidance is maintained in [`input/pagecontent`](input/pagecontent).

## Facility Organization and MFL interoperability

`ZMCoreFacilityOrganization` specializes the base `ZMCoreOrganization` profile for facilities represented in the MFL. It supports identifiers issued by:

- the Master Facility List registry;
- HMIS;
- DHIS2;
- SmartCare;
- eLMIS; and
- iHRIS.

The profile also requires facility type, ownership, and MFL registry status using ZM-Core terminology. See the [MFL Organization mapping](input/pagecontent/mfl-organization.xml) for detailed source-field mappings and implementation considerations.

Implementers should observe these resource boundaries:

- Use `Organization` for the facility's administrative identity, classification, ownership, identifiers, contacts, and organizational hierarchy.
- Use `Location` for physical addresses, coordinates, administrative geography, and individual service-delivery sites.
- Use `HealthcareService` for services, operating hours, eligibility, and service availability.
- Represent changing capacity, staffing, and catchment-population figures as time-bound measurements or reports rather than permanent Organization attributes.

Known MFL interoperability concerns include inconsistent field names, locally defined status values that combine several business concepts, optional identifiers without consistently enforced namespace or uniqueness rules, and MFL_REST responses that flatten coded relationships into strings. Implementers should validate and normalize these values before producing conformant ZM-Core resources.

## Repository structure

| Path | Purpose |
| --- | --- |
| [`input/fsh`](input/fsh) | FHIR Shorthand profiles, extensions, terminology, and examples |
| [`input/pagecontent`](input/pagecontent) | Narrative implementation and mapping guidance |
| [`input/examples`](input/examples) | Hand-authored FHIR examples |
| [`sushi-config.yaml`](sushi-config.yaml) | ImplementationGuide metadata, dependencies, and resource configuration |
| [`scripts`](scripts) | Supporting build and deployment scripts |

## Building locally

The repository uses SUSHI and the HL7 FHIR IG Publisher. The build scripts download or update the publisher when required and generate the implementation guide output.

On Windows:

```powershell
.\_genonce.bat
```

On Linux or macOS:

```sh
./_genonce.sh
```

Generated publisher output is written to the `output` directory. Build dependencies are pinned in [`sushi-config.yaml`](sushi-config.yaml) to support reproducible validation.

## Publication

- [Continuous build](https://build.fhir.org/ig/MOH-Zambia/ZM-Core/branches/master/index.html)
- [Published implementation guide](https://moh-zambia.github.io/zm-core/)
- FHIR canonical base: `http://hapi.moh.gov.zm/fhir`

## Contributing

Changes should include the relevant FSH definition, terminology, narrative guidance, and at least one valid example where appropriate. Run a complete local IG build before opening a pull request and review all validation warnings and errors.

- [Issue tracker](https://github.com/MOH-Zambia/ZM-Core/issues)
- [Project board](https://github.com/MOH-Zambia/ZM-Core/projects/1)

## License

ZM-Core is published under the [CC0 1.0 Universal license](https://creativecommons.org/publicdomain/zero/1.0/).
