Profile: PhilHealthID
Parent: Identifier
Id: PhilHealthID
Title: "PIN - PhilHealth Identification Number"
Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PhilHealthID"
* insert MetaData
* type = $IdentifierType#NIIP "PIN - PhilHealth Identification Number" (exactly)
// * type ^fixedCodeableConcept.text = "PID"
* type.text 1..
* type.text = "PhilHealth ID" (exactly)
* type.text ^short = "Must declare \"PhilHealth ID\" in the identifier.type.text field" //  There seems to be a bug with declaring a fixed value for type.text.
* type.text ^definition = "PhilHealth ID"
* system ..0
* period ..0