Profile: PH_RelatedPerson
Parent: RelatedPerson
Id: PH-RelatedPerson
Title: "PH RelatedPerson"
Description: "Information about a person that is involved in the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
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
    Occupation named occupation 0..* and
    $Nationality named nationality 0..* and
    $MaritalStatus named maritalStatus 0..*
* modifierExtension ..0
// * identifier ..0
* active ..0
// * patient ..0    Can't disable elements that are mandatory by default
// * relationship ..0
// * name ..0
* name.extension ..0
* name.id ..0
* name.use ..0
* name.prefix ..0
* name.period ..0
* name.text ..0
// * telecom ..0
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
* period ..0
* communication ..0

// To add: OccupationLength, OccupationDuration