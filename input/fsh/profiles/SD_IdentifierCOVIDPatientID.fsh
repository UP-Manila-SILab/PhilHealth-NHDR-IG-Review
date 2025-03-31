Profile: COVIDPatientID
Parent: Identifier
Id: COVIDPatientID
Title: "COVID Patient Identification"
Description: "COVID Patient Identification"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/COVIDPatientID"
* insert MetaData
* type = $IdentifierType#COVID "COVID Kaya issued number." (exactly)
* type.text 1..
* type.text = "Patient number as assigned fro COVID Kaya" (exactly)
// * type.text ^short = "Must declare \"PDD Reg. No.\" in the identifier.type.text field"
* type.text ^definition = "COVID Kaya issued number"
* system ..0
* period ..0