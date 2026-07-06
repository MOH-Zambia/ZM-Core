Instance: ExampleZMCorePractitioner
InstanceOf: ZMCorePractitioner
Title: "Example ZM-Core Practitioner (from HRMS)"
Description: "Example practitioner mapped from HRMS/Odoo hr.employee + qualifications."

* identifier[nrc].system = "http://hapi.moh.gov.zm/fhir/sid/nrc"
* identifier[nrc].value = "123456/78/1"

* identifier[employeeNumber].system = "http://hapi.moh.gov.zm/fhir/sid/employee-number"
* identifier[employeeNumber].value = "EMP-000123"

* identifier[institutionFileNumber].system = "http://hapi.moh.gov.zm/fhir/sid/institution-file-number"
* identifier[institutionFileNumber].value = "MOH-LSK-IF-7788"

* identifier[psmdFileNumber].system = "http://hapi.moh.gov.zm/fhir/sid/psmd-file-number"
* identifier[psmdFileNumber].value = "PSMD-552211"

* identifier[pspfMemberNumber].system = "http://hapi.moh.gov.zm/fhir/sid/pspf-member-number"
* identifier[pspfMemberNumber].value = "PSPF-0009823"

* identifier[professionalRegistration].system = "http://hapi.moh.gov.zm/fhir/sid/registration-id"
* identifier[professionalRegistration].value = "DOC-001"

* name[official].family = "Phiri"
* name[official].given[0] = "Mary"
* name[official].given[1] = "Chipo"
* name[maiden].family = "Banda"

* gender = #female
* birthDate = "1984-03-12"

* telecom[0].system = #email
* telecom[0].value = "mary.phiri@example.org"
* telecom[0].use = #work

* telecom[1].system = #phone
* telecom[1].value = "+260-97-000-0000"
* telecom[1].use = #mobile

* qualification[0].code.coding[0] = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* qualification[0].period.start = "2008-11-30"
* qualification[0].issuer.display = "University of Zambia"