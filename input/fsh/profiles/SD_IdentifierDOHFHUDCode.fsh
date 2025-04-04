Profile: DOHfhudCode
Parent: Identifier
Id: DOHfhudCode
Title: "DOH FHUD Code"
Description: "Health Facility Code (HFC) from the National Health Facility Registry"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/DOHfhudCode"
* insert MetaData
// * type = $IdentifierType#PDD "PDD - PhilHealth Dialysis Database Registration Number" (exactly)
* type.text 1..
// * type.text = "PDD Reg. No." (exactly)
// * type.text ^short = "Must declare \"PDD Reg. No.\" in the identifier.type.text field"
// * type.text ^definition = "PDD Reg. No."
* system ..0
* period ..0