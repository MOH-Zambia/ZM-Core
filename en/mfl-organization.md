# Mfl Organization - HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia v0.1.0

* [**Table of Contents**](toc.md)
* **Mfl Organization**

## Mfl Organization

### Master Facility List organization mapping

 This guidance is based on a source review of the Zambia MFL Django application and the MFL REST API. The `ZMCoreOrganization` profile carries organization identity and classification shared across health systems. `ZMCoreFacilityOrganization` adds the mandatory facility type, ownership, and registry status needed for a facility registered in the national Master Facility List. 

#### Facility mapping

| | | |
| :--- | :--- | :--- |
| id | identifier[mflRegistryId] | Use only when the REST database identifier is stable across MFL deployments. |
| HMIS_code | identifier[hmisCode] | Preserve leading zeroes and do not substitute a DHIS2 UID or database key. |
| DHIS2_UID | identifier[dhis2Uid] | Identifies the corresponding DHIS2 organisation unit. |
| smartcare_GUID | identifier[smartcareGuid] | Use the SmartCare identifier namespace; do not assume all historical values satisfy UUID syntax. |
| eLMIS_ID | identifier[elmisId] | Identifies the corresponding eLMIS facility. |
| iHRIS_ID | identifier[ihrisId] | Identifies the corresponding iHRIS facility or organisation unit. |
| name | name | The current official registry name; prior or alternate names belong in alias. |
| facility_type | type[facilityType] | Use the ZM-Core facility-type code system, not an unscoped lookup-table integer or display string. |
| ownership | type[ownership] | Represent ownership independently from facility service level. |
| operation_status | extension[registryStatus] | Keep the MFL registry state separate from Organization.active. |
| web_address, email, phone, mobile, fax | contact.telecom | Assign the appropriate ContactPoint system and use. |
| postal and general contact address | contact.address | Use a separate contact repetition when postal and physical addresses differ. |

#### Data that does not belong on Organization

| | |
| :--- | :--- |
| longitude, latitude, geom, location type, physical address | ZMCoreLocation.position, form/type, and address |
| province, district, constituency, and ward hierarchy | Referenced administrative Locations and Location.partOf; display text alone is not a stable identifier |
| services and service categories | ZMCoreHealthcareService.type, category, and offeredIn |
| operating hours and laboratory level | HealthcareService availability/characteristics or Location hoursOfOperation |
| equipment | Device resources associated with the facility or service where item-level exchange is required |
| infrastructure, beds, and cots | Location characteristics or governed capacity observations; these are time-varying measurements |
| numbers of doctors, nurses, midwives, and paramedics | PractitionerRole data or a dated MeasureReport/Observation, not a static Organization extension |
| catchment population estimates | A dated measure with source and method, because head-count and CSO estimates are distinct and change over time |
| ratings, comments, and display stars | Do not exchange as core facility identity; define a governed assessment profile if nationally required |

#### Interoperability limitations found in the reviewed repositories

* The Django model uses `HMIS_code`, while serializers, views, and GeoJSON field lists refer to `HMIS_Code`. They also request a non-existent singular `catchment_population` field instead of the two source-specific population fields.
* The REST model exposes the misspelled property `ownersip`. Consumer-generated schemas can therefore perpetuate a contract typo.
* The `smartcare_GUID` column contains historical values of different shapes, including 32-character hexadecimal and other non-UUID strings. UUID validation would reject valid legacy links.
* Facility type contains legacy values such as Private, NGO, Police, and Military that overlap with the separate ownership table. Senders should prefer a specific service-level type plus ownership.
* The operation-status list combines operational state, licensing, registration, construction, and record-quality states such as Duplicate and Invalid. It cannot be safely collapsed into a boolean active flag.
* Several identifier columns are optional and are not declared unique in the reviewed model. Matching on one identifier alone can therefore create false merges.
* The MFL REST projection flattens foreign keys to display strings, omits services, laboratory level, operating hours, infrastructure, equipment, and update timestamps, and returns coordinates as strings alongside GeoJSON.
* Facility-name search is not a stable identity operation and is limited by the REST query. Names are not unique and change over time.
* The nearest-facility endpoint applies a fixed radius and result limit rather than standard FHIR geospatial search semantics.
* The REST API uses proprietary response envelopes and endpoints rather than FHIR Bundles, CapabilityStatement discovery, standard search parameters, paging links, version identifiers, or Provenance.
* The REST endpoints are publicly readable with wildcard CORS. If non-public operational or contact data is added later, access policy, rate limiting, and data classification will need review.
* The bundled Python FHIR Organization class was generated from FHIR STU3 and is not wired to the facility API. Its shape and search helper must not be treated as evidence of R5 conformance.

 A producer should publish the Organization, its physical Location, and its HealthcareService records together in a transaction Bundle so identifiers, coordinates, administrative hierarchy, services, and availability remain linked without flattening them into a single facility payload. 

