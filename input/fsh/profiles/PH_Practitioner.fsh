Profile: PH_Practitioner
Parent: Practitioner
Id: PH-Practitioner
Title: "PH Practitioner"
Description: "A person who is directly or indirectly involved in the provisioning of healthcare or related services."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* insert MetaData
* . ^definition = "A person who is directly involved in the provisioning of healthcare."
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    Sex named sex 0..1 and
    $Nationality named nationality 0..* and
    $MaritalStatus named maritalStatus 0..* //For Release02
* modifierExtension ..0
* identifier ..1
// * active ..0
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
* address only $SD_Address
* address.id ..0
* address.country ..0
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0



