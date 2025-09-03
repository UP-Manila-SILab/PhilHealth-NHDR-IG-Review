Profile: PH_Person
Parent: Person
Id: PH-Person
Title: "PH Person"
Description: "Demographics and administrative information about a person independent of a specific health-related context."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Person"
* insert MetaData
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
// * extension ..0
* extension contains 
  Sex named sex 0..1 and
  $MaritalStatus named maritalStatus 0..*  and
  $Nationality named nationality 0..*
  // MemberType named memberType 0..1 and //For Release02
  // Occupation named occupation 0..* //For Release02
* modifierExtension ..0
// * identifier ..0
* name
* name.extension ..0
* name.id ..0
* name.use ..0
* name.prefix ..0
* name.period ..0
* name.text ..0
* telecom.id ..0
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* gender ..0
// * birthDate ..0
// * address ..0
* address only $SD_Address
* photo ..0
* managingOrganization ..0
* active ..0
* link.extension ..0
* link.modifierExtension ..0
* link.id ..0
* link.assurance ..0
* link.target only Reference(PH_Patient or PH_Practitioner or PH_RelatedPerson or PH_Person)
