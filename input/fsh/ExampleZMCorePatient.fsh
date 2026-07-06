Instance: ExampleZMCorePatient
InstanceOf: ZMCorePatient
Title: "Example ZM-Core Patient"
Description: "Example patient from Lusaka, Zambia"
* identifier
  * system = "http://hapi.moh.gov.zm/fhir/sid/nrc"
  * value = "123456/12/1"
* name[0].family = "Mwale"
* name[0].given[0] = "John"
* gender = #male
* birthDate = "1985-05-15"
* address[0].city = "Lusaka"
* address[0].country = "ZM"