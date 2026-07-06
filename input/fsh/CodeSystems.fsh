// ------------------------------------------------------------
// ZAMMSA Medication SKU CodeSystem
// ------------------------------------------------------------

CodeSystem: ZAMMSAMedicationCS
Id: medication-zammsa-sku
Title: "ZAMMSA Medication SKU Code System"
Description: "CodeSystem representing the ZAMMSA national medicines catalogue SKUs."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-zammsa-sku"
* ^status = #draft
* ^caseSensitive = true
* ^content = #fragment  // change to #complete if/when you load all SKUs
* ^experimental = false

// ----- SAMPLE CODES (from the 2025 product catalogue) -----
// Medicines acting on the skin
* #EM1389 "Betamethasone 0.1% w/w cream /ointment tube"
* #EM1531 "Hydrocortisone 0.1% w/w cream/ointment tube"
* #EM1390 "Triamcinolone 1% w/w cream/ointment tube"
* #EM2173 "Benzyl benzoate 25% 500ML/Bottle lotion (topical)"
* #EM2174 "Benzoyl peroxide 10%, 20g"
* #EM1879 "Calamine lotion 100ml bottle"
* #EM1881 "Sun screen protection lotion SPF 30 100ml tube"
* #EM1883 "Sun screen protection lotion SPF 40 100ml tube"

// Vitamins / others (examples)
* #EM1369 "Nicotinamide (Vitamin B3) 100mg tablet"
* #EM1370 "Nicotinamide (Vitamin B3) 200mg tablet"
* #EM1371 "Riboflavine (Vitamin B2) 5mg tablet"
* #EM1372 "Thiamine (Vitamin B1) 50mg tablet"
* #EM1373 "Thiamine (Vitamin B1) 100mg/5ml injection"
* #EM1723 "Ascorbic acid (Vitamin C) 500mg tablet"
* #EM2195 "Multivitamin tablets (1000)"
* #EM2196 "Multivitamin tablets 100 pack"
* #EM2197 "Nicotinamide (Vitamin B3) 50mg tablet"
* #EM2201 "Potassium iodide 250 mcg liquid supplement (100ml)"
* #EM2202 "Pyridoxine (Vitamin B6) oral solution 20mg/5ml 200ml with magnesium and potassium"
* #EM2206 "Recombinant follicle-stimulating hormone (150IU) prefilled syringe"


// ------------------------------------------------------------
// ValueSet: all ZAMMSA SKUs used in ZM-Core
// ------------------------------------------------------------

ValueSet: ZAMMSAMedicationVS
Id: medication-zammsa-sku
Title: "ZAMMSA Medication SKU ValueSet"
Description: "All ZAMMSA catalogue SKUs that are valid for use in the ZM-Core Medication profile."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/medication-zammsa-sku"
* ^status = #draft
* ^experimental = false
* include codes from system ZAMMSAMedicationCS


// ------------------------------------------------------------
// CodeSystem + ValueSet: Level of Access (HP/HC/L1/L2/L3)
// ------------------------------------------------------------

CodeSystem: ZMLevelOfAccessCS
Id: medication-level-of-access
Title: "Zambia Level of Access for Medicines"
Description: "Levels of care at which a medicine is allowed to be used, based on the ZAMMSA catalogue."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/medication-level-of-access"
* ^status = #draft
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* #HP "Health Post"
* #HC "Health Centre"
* #L1 "Level 1 Hospital"
* #L2 "Level 2 Hospital"
* #L3 "Level 3 Hospital"

ValueSet: ZMLevelOfAccessVS
Id: medication-level-of-access
Title: "Zambia Medication Level of Access"
Description: "Permitted level(s) of care for use of a medicine (HP, HC, L1, L2, L3)."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/medication-level-of-access"
* ^status = #draft
* ^experimental = false
* include codes from system ZMLevelOfAccessCS


CodeSystem: ZMProductTypeCS
Id: product-type
Title: "Zambia Product Type (eLMIS)"
Description: "Product types from the eLMIS Master Product List."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/product-type"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #fragment

* #essential-medicine "Essential Medicine"
* #medical-surgicals "Medical Surgicals"
* #laboratory "Laboratory"
* #equipment "Equipment"
* #orthopaedics-prosthetics-orthotics "Orthopaedics, Prosthetics and Orthotics"
* #tuberculosis "Tuberculosis"
* #antiretroviral "Antiretroviral Drugs"
* #hiv-program "HIV Program"

ValueSet: ZMProductTypeVS
Id: product-type
Title: "Zambia Product Type ValueSet"
Description: "Allowed Product Type values for Medication."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/product-type"
* ^status = #draft
* ^experimental = false
* include codes from system ZMProductTypeCS


CodeSystem: ZMProductGroupCS
Id: product-group
Title: "Zambia eLMIS Product Group"
Description: "Short product group codes from the eLMIS Master list (e.g. ess, medsurge, equip...)."
* ^url = "http://hapi.moh.gov.zm/fhir/CodeSystem/product-group"
* ^status = #draft
* ^caseSensitive = true
* ^content = #fragment
* ^experimental = false

* #ess "Essential Medicines (ess)"
* #medsurge "Medical Surgicals (medsurge)"
* #equip "Equipment (equip)"
* #Micr "Microbiology (Micr)"
* #Che "Chemistry (Che)"
* #genreag "General Reagents (genreag)"
* #labeq "Laboratory Equipment (labeq)"
* #Haem "Haematology (Haem)"
* #Vir "Virology (Vir)"

ValueSet: ZMProductGroupVS
Id: product-group
Title: "Zambia eLMIS Product Group ValueSet"
Description: "Allowed Product Group values from the eLMIS Master list."
* ^url = "http://hapi.moh.gov.zm/fhir/ValueSet/product-group"
* ^status = #draft
* ^experimental = false
* include codes from system ZMProductGroupCS