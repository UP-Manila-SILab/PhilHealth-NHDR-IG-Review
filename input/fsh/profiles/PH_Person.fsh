Profile: PH_Person
Parent: Person
Id: PH-Person
Title: "PH Person"
Description: "Demographics and administrative information about a person independent of a specific health-related context."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Person"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains 
  Sex named sex 0..* and
  $MaritalStatus named maritalStatus 0..*  and
  MemberType named memberType 0..1 and 
  Occupation named occupation 0..* 

* extension[sex] ^short = "Sex assigned at birth"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^comment = "This is an extension"
* extension[sex] ^isModifier = false
* extension[maritalStatus] ^short = "Person's Marital Status"
* extension[maritalStatus] ^definition = "This field contains a Person's most recent marital (civil) status."
* extension[maritalStatus] ^isModifier = false
* extension[maritalStatus] ^binding.description = "Marital Status"
* extension[memberType] ^short = "Person's membership type."
* extension[memberType] ^definition = "Person's membership type."
* extension[memberType] ^isModifier = false
* extension[memberType] ^binding.description = "Membership type."
* extension[occupation] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
// * name only $SD_HumanName
* name 
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* gender ..0
// * birthDate ..0
* address only $SD_Address
* photo ..0
* managingOrganization ..0
* active ..0
* link.extension ..0
* link.modifierExtension ..0
* link.id ..0
* link.assurance ..0
