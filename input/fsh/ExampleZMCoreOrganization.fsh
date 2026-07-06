Instance: ExampleZMCoreOrganization
InstanceOf: ZMCoreOrganization
Title: "Example ZM-Core Organization"
Description: "Example health facility in Zambia"
* identifier
  * system = "http://hapi.moh.gov.zm/fhir/sid/facility-id"
  * value = "HF001"
* name = "University Teaching Hospital"
* type[0].coding[0] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* contact[0].address.city = "Lusaka"
* contact[0].address.country = "ZM"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+260 211 123456"