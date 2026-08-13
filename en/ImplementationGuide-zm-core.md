# Resource HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "zm-core",
  "language" : "en",
  "url" : "http://hapi.moh.gov.zm/fhir/ImplementationGuide/zm-core",
  "version" : "0.1.0",
  "name" : "ZMCore",
  "title" : "HL7 FHIR Implementation Guide: ZM-Core Release 1 - Zambia",
  "status" : "active",
  "date" : "2025-11-21",
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
  "description" : "ZM-Core is an Implementation Guide for HL7 FHIR R5 resources commonly used in Zambia's health systems, providing standardized profiles and guidance for interoperability.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "ZM",
      "display" : "Zambia"
    }]
  }],
  "packageId" : "zm-core",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7_fhir_uv_tools_r5",
    "uri" : "http://hl7.org/fhir/tools",
    "packageId" : "hl7.fhir.uv.tools.r5",
    "version" : "1.1.2"
  },
  {
    "id" : "hl7_terminology_r5",
    "uri" : "http://terminology.hl7.org",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r5",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  }],
  "definition" : {
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SubscriptionTopic"
      }],
      "reference" : {
        "reference" : "SubscriptionTopic/ZMCommunicationRequestActiveTopic"
      },
      "name" : "Active Communication Request Topic",
      "description" : "R5 SubscriptionTopic for communication requests that are ready for processing by the hub.",
      "isExample" : false,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-subscription-topic"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-template"
      },
      "name" : "Approved Communication Template",
      "description" : "Identifier of the approved message template used to render the communication.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ZMCoreClinicalEncounter"
      },
      "name" : "Clinical Encounter",
      "description" : "Clinical encounter structure for Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-acknowledgement-required"
      },
      "name" : "Communication Acknowledgement Required",
      "description" : "Whether the workflow must create and track an acknowledgement or completion Task.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-data-classification"
      },
      "name" : "Communication Data Classification",
      "description" : "The governance classification used to determine permitted channels and payload disclosure.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-expiry"
      },
      "name" : "Communication Expiry",
      "description" : "The instant after which the request must not be delivered and should be completed, revoked, or escalated according to policy.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-fallback-channel"
      },
      "name" : "Communication Fallback Channel",
      "description" : "An approved alternative channel to try if the preferred channel cannot deliver the message. Repetition order expresses routing order.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-message-language"
      },
      "name" : "Communication Message Language",
      "description" : "BCP-47 language code in which the recipient-facing message is rendered.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-communication-requesting-system"
      },
      "name" : "Communication Requesting System",
      "description" : "The authoritative source system that submitted the communication request to the HIE.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-consent-communication-channel"
      },
      "name" : "Consent Communication Channel",
      "description" : "A channel for which the individual's contact consent decision applies.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      }],
      "reference" : {
        "reference" : "Task/ExampleZMCoreCommunicationTask"
      },
      "name" : "Example Communication Acknowledgement Task",
      "description" : "Task used to capture acknowledgement and trigger escalation if the report remains outstanding.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-task"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Consent"
      }],
      "reference" : {
        "reference" : "Consent/ExampleZMCoreCommunicationConsent"
      },
      "name" : "Example Communication Consent",
      "description" : "Example patient contact preference and permission for notifications.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-consent"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AuditEvent"
      }],
      "reference" : {
        "reference" : "AuditEvent/ExampleZMCoreCommunicationAuditEvent"
      },
      "name" : "Example Communication Delivery Audit Event",
      "description" : "Example audit event showing successful delivery processing by the hub.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-audit-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Subscription"
      }],
      "reference" : {
        "reference" : "Subscription/ExampleZMCoreSubscription"
      },
      "name" : "Example Communication Hub Subscription",
      "description" : "Example secure REST-hook subscription for the DHIS2 reporting-reminder workflow.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-subscription"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Provenance"
      }],
      "reference" : {
        "reference" : "Provenance/ExampleZMCoreCommunicationProvenance"
      },
      "name" : "Example Communication Request Provenance",
      "description" : "Example record of the authorized actor and source system that created a communication request.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-provenance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Communication"
      }],
      "reference" : {
        "reference" : "Communication/ExampleZMCoreCommunication"
      },
      "name" : "Example Delivered DHIS2 Reporting Reminder",
      "description" : "Delivery record produced after the hub sends the reporting reminder.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CommunicationRequest"
      }],
      "reference" : {
        "reference" : "CommunicationRequest/ExampleZMCoreCommunicationRequest"
      },
      "name" : "Example DHIS2 Reporting Reminder Request",
      "description" : "Low-risk operational pilot request for a facility reporting reminder.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-communication-request"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/ExampleZMCoreMedication"
      },
      "name" : "Example ZAMMSA Betamethasone 0.1% cream/ointment",
      "description" : "Example mapping of ZAMMSA catalogue row EM1389 into ZMCoreMedication.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AdverseEvent"
      }],
      "reference" : {
        "reference" : "AdverseEvent/ExampleZMCoreAdverseEventFollowingImmunization"
      },
      "name" : "Example ZM-Core Adverse Event Following Immunization",
      "description" : "An AEFI corresponding to SmartCare Pro AdverseEvent data.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-adverse-event"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "AllergyIntolerance"
      }],
      "reference" : {
        "reference" : "AllergyIntolerance/ExampleZMCoreAllergyIntolerance"
      },
      "name" : "Example ZM-Core Allergy Intolerance",
      "description" : "An allergy corresponding to a SmartCare Pro IdentifiedAllergy.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-allergy-intolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      }],
      "reference" : {
        "reference" : "Specimen/ExampleZMCoreSpecimenBlood"
      },
      "name" : "Example ZM-Core Blood Specimen",
      "description" : "A blood specimen corresponding to SmartCare Pro identified sample collection data.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-specimen"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      }],
      "reference" : {
        "reference" : "Condition/ExampleZMCoreCondition"
      },
      "name" : "Example ZM-Core Condition",
      "description" : "Example diagnosis of hypertension",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-condition"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/ExampleZMCoreDiagnosticReport"
      },
      "name" : "Example ZM-Core Diagnostic Report",
      "description" : "Example final laboratory report with a linked hemoglobin result.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-diagnostic-report"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/ExampleZMCoreEncounter"
      },
      "name" : "Example ZM-Core Encounter",
      "description" : "Example outpatient encounter",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/zm-core-encounter-example-json"
      },
      "name" : "Example ZM-Core Encounter (JSON)",
      "description" : "Hand-crafted JSON example of a Zambia Core Encounter.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-encounter"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "HealthcareService"
      }],
      "reference" : {
        "reference" : "HealthcareService/ExampleZMCoreHealthcareService"
      },
      "name" : "Example ZM-Core Healthcare Service",
      "description" : "Example facility reporting service used by the DHIS2 reminder pilot.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-healthcare-service"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/ExampleZMCoreObservationHemoglobin"
      },
      "name" : "Example ZM-Core Hemoglobin Observation",
      "description" : "Example laboratory result referenced by a ZM-Core DiagnosticReport.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/ExampleZMCoreImmunization"
      },
      "name" : "Example ZM-Core Immunization",
      "description" : "An administered vaccine corresponding to a SmartCare Pro ImmunizationRecord.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-immunization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/ExampleZMCoreLaboratoryServiceRequest"
      },
      "name" : "Example ZM-Core Laboratory Service Request",
      "description" : "A laboratory order corresponding to a SmartCare Pro Investigation.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-service-request"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      }],
      "reference" : {
        "reference" : "Location/ExampleZMCoreLocation"
      },
      "name" : "Example ZM-Core Location",
      "description" : "Example physical facility location used by recipient resolution.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-location"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/ExampleZMCoreMedicationRequest"
      },
      "name" : "Example ZM-Core MedicationRequest",
      "description" : "Example medication prescription",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-medication-request"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/ExampleZMCoreObservationBP"
      },
      "name" : "Example ZM-Core Observation - Blood Pressure",
      "description" : "Example blood pressure reading",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-observation"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/ExampleZMCoreOrganization"
      },
      "name" : "Example ZM-Core Organization",
      "description" : "Example Master Facility List health facility in Zambia",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/zm-core-organization-example-json"
      },
      "name" : "Example ZM-Core Organization (JSON)",
      "description" : "Hand-crafted JSON example of a Zambia Core Organization.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-facility-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/ExampleZMCorePatient"
      },
      "name" : "Example ZM-Core Patient",
      "description" : "Example patient from Lusaka, Zambia",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/zm-core-patient-example-json"
      },
      "name" : "Example ZM-Core Patient (JSON)",
      "description" : "Hand-crafted JSON example of a Zambia Core Patient.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-patient"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/ExampleZMCorePractitioner"
      },
      "name" : "Example ZM-Core Practitioner (from HRMS)",
      "description" : "Example practitioner mapped from HRMS/Odoo hr.employee + qualifications.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ExampleZMCorePractitionerRole"
      },
      "name" : "Example ZM-Core Practitioner Role",
      "description" : "Example current District Health Information Officer role resolved from the provider directory.",
      "isExample" : true,
      "profile" : ["http://hapi.moh.gov.zm/fhir/StructureDefinition/zm-core-practitioner-role"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ZMCoreHealthFacility"
      },
      "name" : "Health Facility",
      "description" : "Health facility structure for Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ZMCoreImmunizationRecord"
      },
      "name" : "Immunization Record",
      "description" : "Immunization record for Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-lsi-enabled"
      },
      "name" : "Medication LSI Enabled",
      "description" : "Indicates whether this medication is enabled for the Logistics Seasonality Index (LSI).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ZMCorePatientDemographics"
      },
      "name" : "Patient Demographics",
      "description" : "Core patient demographic information for Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/zm-communication-channel"
      },
      "name" : "Zambia Communication Channel",
      "description" : "Delivery channels supported by the Zambia Unified Health Communication Hub.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-communication-channel-vs"
      },
      "name" : "Zambia Communication Channel Value Set",
      "description" : "Approved preferred and fallback delivery channels for hub communications.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/zm-communication-consent-action"
      },
      "name" : "Zambia Communication Consent Action",
      "description" : "Consent actions governing contact by the Unified Health Communication Hub.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-communication-consent-action-vs"
      },
      "name" : "Zambia Communication Consent Action Value Set",
      "description" : "Permitted contact actions represented in a communication consent.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/zm-communication-data-classification"
      },
      "name" : "Zambia Communication Data Classification",
      "description" : "Data classifications that drive disclosure and channel controls for health communications.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-communication-data-classification-vs"
      },
      "name" : "Zambia Communication Data Classification Value Set",
      "description" : "Data classifications used to enforce communication disclosure rules.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/zm-communication-lane"
      },
      "name" : "Zambia Communication Lane",
      "description" : "Governance lanes used to separate communication purposes, access rules, and disclosure controls in the Zambia Unified Health Communication Hub.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-communication-lane-vs"
      },
      "name" : "Zambia Communication Lane Value Set",
      "description" : "Communication governance lanes supported by the Zambia Unified Health Communication Hub.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/zm-communication-task-code"
      },
      "name" : "Zambia Communication Task Code",
      "description" : "Actions used to capture acknowledgement and escalation in communication workflows.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-communication-task-code-vs"
      },
      "name" : "Zambia Communication Task Code Value Set",
      "description" : "Task actions supported by a communication workflow.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/product-group"
      },
      "name" : "Zambia eLMIS Product Group",
      "description" : "Short product group codes from the eLMIS Master list (e.g. ess, medsurge, equip...).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/product-group"
      },
      "name" : "Zambia eLMIS Product Group ValueSet",
      "description" : "Allowed Product Group values from the eLMIS Master list.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/medication-level-of-access"
      },
      "name" : "Zambia Level of Access for Medicines",
      "description" : "Levels of care at which a medicine is allowed to be used, based on the ZAMMSA catalogue.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/facility-ownership"
      },
      "name" : "Zambia Master Facility List Facility Ownership",
      "description" : "Facility ownership or controlling sector represented in the Zambia Master Facility List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/facility-ownership"
      },
      "name" : "Zambia Master Facility List Facility Ownership Value Set",
      "description" : "Facility ownership values permitted for a ZM-Core facility organization.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/facility-type"
      },
      "name" : "Zambia Master Facility List Facility Type",
      "description" : "Facility types represented in the Zambia Master Facility List. Police, military, private, and NGO values are retained for source compatibility but overlap with facility ownership and should not be used when a more specific service level is known.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/facility-type"
      },
      "name" : "Zambia Master Facility List Facility Type Value Set",
      "description" : "Facility types permitted for a ZM-Core facility organization.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/facility-registry-status"
      },
      "name" : "Zambia Master Facility List Registry Status",
      "description" : "Combined operational, licensing, registration, and record-quality states represented by the current Zambia Master Facility List operation-status field.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/facility-registry-status"
      },
      "name" : "Zambia Master Facility List Registry Status Value Set",
      "description" : "Registry status values permitted for a ZM-Core facility organization.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/medication-level-of-access"
      },
      "name" : "Zambia Medication Level of Access",
      "description" : "Permitted level(s) of care for use of a medicine (HP, HC, L1, L2, L3).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/product-type"
      },
      "name" : "Zambia Product Type (eLMIS)",
      "description" : "Product types from the eLMIS Master Product List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/product-type"
      },
      "name" : "Zambia Product Type ValueSet",
      "description" : "Allowed Product Type values for Medication.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/medication-zammsa-sku"
      },
      "name" : "ZAMMSA Medication SKU Code System",
      "description" : "CodeSystem representing the ZAMMSA national medicines catalogue SKUs.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/medication-zammsa-sku"
      },
      "name" : "ZAMMSA Medication SKU ValueSet",
      "description" : "All ZAMMSA catalogue SKUs that are valid for use in the ZM-Core Medication profile.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-adverse-event"
      },
      "name" : "ZM-Core Adverse Event Profile",
      "description" : "Zambia adverse event profile, including adverse events following immunization.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-allergy-intolerance"
      },
      "name" : "ZM-Core Allergy Intolerance Profile",
      "description" : "Zambia allergy and intolerance profile for allergy substances, medicinal products, severity, and reactions.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-appointment"
      },
      "name" : "ZM-Core Appointment Profile",
      "description" : "Zambia appointment profile for scheduled clinical services, including SmartCare Pro appointments.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-care-plan"
      },
      "name" : "ZM-Core Care Plan Profile",
      "description" : "Zambia care plan profile for treatment, nursing, and multidisciplinary plans.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication-audit-event"
      },
      "name" : "ZM-Core Communication Audit Event Profile",
      "description" : "Security and access audit trail for creation, routing, access, delivery, acknowledgement, or escalation of a hub communication.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication-consent"
      },
      "name" : "ZM-Core Communication Consent Profile",
      "description" : "An individual's consent decision governing whether and through which channels the Unified Health Communication Hub may make contact.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication"
      },
      "name" : "ZM-Core Communication Profile",
      "description" : "The immutable delivery or receipt record produced for a communication request, including channel and delivery outcome.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication-provenance"
      },
      "name" : "ZM-Core Communication Provenance Profile",
      "description" : "Record of who initiated or changed a communication workflow resource, when, and on whose behalf.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication-request"
      },
      "name" : "ZM-Core Communication Request Profile",
      "description" : "A governed request from a Ministry health system to the Unified Health Communication Hub to route and deliver information.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-subscription"
      },
      "name" : "ZM-Core Communication Subscription Profile",
      "description" : "A secure R5 Subscription that activates a communication workflow when a governed communication topic matches.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication-subscription-topic"
      },
      "name" : "ZM-Core Communication Subscription Topic Profile",
      "description" : "A governed R5 subscription topic that describes which communication events may activate hub workflows and what may be filtered or returned.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-communication-task"
      },
      "name" : "ZM-Core Communication Task Profile",
      "description" : "An acknowledgement, required action, recipient-resolution, or escalation task linked to a hub communication workflow.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-condition"
      },
      "name" : "ZM-Core Condition Profile",
      "description" : "Zambia diagnosis/condition profile",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-core-condition-vs"
      },
      "name" : "ZM-Core Condition/Diagnosis",
      "description" : "Conditions and diagnoses relevant to Zambian health",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-diagnostic-report"
      },
      "name" : "ZM-Core Diagnostic Report Profile",
      "description" : "Zambia diagnostic report profile for laboratory, imaging, pathology, and other diagnostic services.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-encounter"
      },
      "name" : "ZM-Core Encounter Profile",
      "description" : "Zambia health encounter profile",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-core-encounter-type-vs"
      },
      "name" : "ZM-Core Encounter Type",
      "description" : "Types of encounters in Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-facility-organization"
      },
      "name" : "ZM-Core Facility Organization Profile",
      "description" : "A health facility registered in the Zambia Master Facility List. Physical coordinates and site characteristics are represented by ZMCoreLocation, while offered services are represented by ZMCoreHealthcareService.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-facility-registry-status"
      },
      "name" : "ZM-Core Facility Registry Status",
      "description" : "The combined operational, licensing, registration, or record-quality status assigned to a facility by the Zambia Master Facility List. This is distinct from Organization.active, which indicates whether the FHIR record is in active use.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-healthcare-service"
      },
      "name" : "ZM-Core Healthcare Service Profile",
      "description" : "A service directory entry used to resolve facilities, responsible teams, service coverage, and communication contacts.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-immunization"
      },
      "name" : "ZM-Core Immunization Profile",
      "description" : "Zambia immunization profile for vaccines administered to a patient.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-location"
      },
      "name" : "ZM-Core Location Profile",
      "description" : "A physical or administrative place from the Zambia Health Facility Registry used in facility and reporting-hierarchy routing.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-core-marital-status-vs"
      },
      "name" : "ZM-Core Marital Status",
      "description" : "Marital status codes used in Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-alternate-name"
      },
      "name" : "ZM-Core Medication Alternate Name",
      "description" : "Alternate or brand name of the medicine, if any.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-alternate-pack-size"
      },
      "name" : "ZM-Core Medication Alternate Pack Size",
      "description" : "Alternate pack size description, if used in Master List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-archived"
      },
      "name" : "ZM-Core Medication Archived",
      "description" : "Indicates whether the product is archived or no longer active in the catalogue.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-atc-classification"
      },
      "name" : "ZM-Core Medication ATC Classification",
      "description" : "WHO ATC classification for the product.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-can-round-to-zero"
      },
      "name" : "ZM-Core Medication Can Round To Zero",
      "description" : "Indicates whether calculated order quantities can be rounded down to zero.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-cartons-per-pallet"
      },
      "name" : "ZM-Core Medication Cartons Per Pallet",
      "description" : "Number of cartons per pallet.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-controlled-substance"
      },
      "name" : "ZM-Core Medication Controlled Substance",
      "description" : "Indicates whether the product is a controlled substance.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-description"
      },
      "name" : "ZM-Core Medication Description",
      "description" : "Long description of the product from the Master List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-dispense"
      },
      "name" : "ZM-Core Medication Dispense Profile",
      "description" : "Zambia medication dispensing profile linking dispensed medicine to the prescription, patient, encounter, and dispensing facility.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-dispensing-units"
      },
      "name" : "ZM-Core Medication Dispensing Units",
      "description" : "Unit in which the product is dispensed (e.g. tablet, vial, bottle).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-dosage-unit"
      },
      "name" : "ZM-Core Medication Dosage Unit",
      "description" : "Unit of measure for the product strength (e.g. mg, ml, IU).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-doses-per-dispensing-unit"
      },
      "name" : "ZM-Core Medication Doses Per Dispensing Unit",
      "description" : "Number of doses per dispensing unit.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-flammable"
      },
      "name" : "ZM-Core Medication Flammable",
      "description" : "Indicates whether the product is flammable.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-full-name"
      },
      "name" : "ZM-Core Medication Full Name",
      "description" : "Full trade name of the product as it appears in the Master List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-full-supply"
      },
      "name" : "ZM-Core Medication Full Supply",
      "description" : "Indicates if the product is part of the full-supply list.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-generic-name"
      },
      "name" : "ZM-Core Medication Generic Name",
      "description" : "Generic name of the medicine.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-hazardous"
      },
      "name" : "ZM-Core Medication Hazardous",
      "description" : "Indicates whether the product is hazardous.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-level-of-access"
      },
      "name" : "ZM-Core Medication Level of Access",
      "description" : "Level of access / level of care at which this medicine is used (e.g. Health Post, Clinic, Hospital).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-light-sensitive"
      },
      "name" : "ZM-Core Medication Light Sensitive",
      "description" : "Indicates whether the product is light sensitive.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-msl-pack-size"
      },
      "name" : "ZM-Core Medication MSL Pack Size (numeric)",
      "description" : "Numeric MSL pack size (e.g. 100, 10).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-pack-rounding-threshold"
      },
      "name" : "ZM-Core Medication Pack Rounding Threshold",
      "description" : "Threshold at which pack quantities are rounded up or down.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-pack-size-text"
      },
      "name" : "ZM-Core Medication Pack Size (text)",
      "description" : "Pack size description (e.g. 'Pack of 100', 'Each').",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-pack-weight"
      },
      "name" : "ZM-Core Medication Pack Weight",
      "description" : "Weight of a single pack, typically in kilograms.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-packs-per-carton"
      },
      "name" : "ZM-Core Medication Packs Per Carton",
      "description" : "Number of packs per carton.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-price"
      },
      "name" : "ZM-Core Medication Price",
      "description" : "Unit price of the product (e.g. pack price) as a Money value.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-product-group"
      },
      "name" : "ZM-Core Medication Product Group",
      "description" : "Programmatic grouping (e.g. ARV, TB, Malaria, RMNCH).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-product-type"
      },
      "name" : "ZM-Core Medication Product Type",
      "description" : "High-level product type (e.g. Medicine, Lab Reagent, Device).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication"
      },
      "name" : "ZM-Core Medication Profile",
      "description" : "Zambia Core Medication Profile aligned to the ZAMMSA national product catalogue and the eLMIS Master Product List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-route-of-administration"
      },
      "name" : "ZM-Core Medication Route of Administration",
      "description" : "Route of administration for this medicine (e.g. oral, IM, IV).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-shelf-life"
      },
      "name" : "ZM-Core Medication Shelf Life",
      "description" : "Product shelf-life description (e.g. 24 months).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-storage-classification"
      },
      "name" : "ZM-Core Medication Storage Classification",
      "description" : "Storage classification (e.g. Room temperature, Cold chain, Freezer).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-storage-instructions"
      },
      "name" : "ZM-Core Medication Storage Instructions",
      "description" : "Free-text storage instructions.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-store-refrigerated"
      },
      "name" : "ZM-Core Medication Store Refrigerated",
      "description" : "Indicates whether the product must be stored refrigerated.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-store-room-temperature"
      },
      "name" : "ZM-Core Medication Store Room Temperature",
      "description" : "Storage temperature in degrees Celsius for room temperature storage.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-strength"
      },
      "name" : "ZM-Core Medication Strength",
      "description" : "Product strength as free text (e.g. '500mg', '500mg/5ml').",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-tracer"
      },
      "name" : "ZM-Core Medication Tracer",
      "description" : "Indicates whether the product is a tracer medicine.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-transport-instructions"
      },
      "name" : "ZM-Core Medication Transport Instructions",
      "description" : "Free-text transport instructions.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-who-approved"
      },
      "name" : "ZM-Core Medication WHO Approved",
      "description" : "Indicates whether the product is WHO prequalified / approved.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-medication-request"
      },
      "name" : "ZM-Core MedicationRequest Profile",
      "description" : "Zambia medication request profile",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-core-observation-category-vs"
      },
      "name" : "ZM-Core Observation Category",
      "description" : "Observation categories used in Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-observation"
      },
      "name" : "ZM-Core Observation Profile",
      "description" : "Zambia clinical observation profile",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-organization"
      },
      "name" : "ZM-Core Organization Profile",
      "description" : "Zambia healthcare organization profile, including identifiers and classifications used by the national Master Facility List.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-core-organization-type-vs"
      },
      "name" : "ZM-Core Organization Type",
      "description" : "Organization types used in Zambian health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/zm-core-patient-gender-vs"
      },
      "name" : "ZM-Core Patient Gender",
      "description" : "Patient gender codes",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-patient"
      },
      "name" : "ZM-Core Patient Profile",
      "description" : "Zambia patient profile for use in health systems",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-practitioner"
      },
      "name" : "ZM-Core Practitioner Profile",
      "description" : "Zambia health workforce practitioner profile",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-practitioner-role"
      },
      "name" : "ZM-Core Practitioner Role Profile",
      "description" : "A current health-worker role used to route communications by responsibility rather than by hard-coded contact details.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-procedure"
      },
      "name" : "ZM-Core Procedure Profile",
      "description" : "Zambia procedure profile for surgical, diagnostic, therapeutic, and programme procedures.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-group"
      },
      "name" : "ZM-Core Recipient Group Profile",
      "description" : "A governed national, provincial, district, facility, patient, or workforce distribution group used for recipient resolution.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-related-person"
      },
      "name" : "ZM-Core Related Person Profile",
      "description" : "Zambia related person profile for next of kin, caregivers, guardians, treatment supporters, and patient-linked contacts.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-service-request"
      },
      "name" : "ZM-Core Service Request Profile",
      "description" : "Zambia request profile for laboratory, imaging, procedure, and referral services.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/zm-core-specimen"
      },
      "name" : "ZM-Core Specimen Profile",
      "description" : "Zambia specimen profile for diagnostic sample collection, transport, receipt, and processing.",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "html"
      },
      {
        "sourceUrl" : "changes.html",
        "name" : "changes.html",
        "title" : "Changes",
        "generation" : "html"
      },
      {
        "sourceUrl" : "communication-hub.html",
        "name" : "communication-hub.html",
        "title" : "Communication Hub",
        "generation" : "html"
      },
      {
        "sourceUrl" : "mfl-organization.html",
        "name" : "mfl-organization.html",
        "title" : "Mfl Organization",
        "generation" : "html"
      },
      {
        "sourceUrl" : "smartcare-mapping.html",
        "name" : "smartcare-mapping.html",
        "title" : "Smartcare Mapping",
        "generation" : "html"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2025+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "STU1"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "http://hapi.moh.gov.zm/fhir/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "i18n-default-lang"
      },
      "value" : "en"
    }]
  }
}

```
