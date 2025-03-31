Profile: PH_Person
Parent: Person
Id: PH-Person
Description: "Demographics and administrative information about a person independent of a specific health-related context."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Person"
* insert MetaData
* extension contains Sex named sex 0..*
* extension[sex] ^short = "Sex assigned at birth"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^comment = "This is an extension"
* extension[sex] ^isModifier = false
* gender ..0
* photo ..0
* managingOrganization ..0
* active ..0
* name only $SD_HumanName
* address only $SD_Address
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* link.id ..0
* link.assurance ..0
// * id ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0