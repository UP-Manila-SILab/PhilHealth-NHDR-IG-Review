Profile: PH_Practitioner
Parent: Practitioner
Id: PH-Practitioner
Title: "PH Practitioner"
Description: "A person who is directly or indirectly involved in the provisioning of healthcare or related services."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* insert MetaData
* . ^definition = "A person who is directly involved in the provisioning of healthcare."
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    Sex named sex 0..* and
    $Signature named signature 0..*
    // $MaritalStatus named maritalStatus 0..* //For Release02
* extension[signature] ^isModifier = false
* extension[sex] ^short = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^comment = "This is an extension"
* extension[sex] ^isModifier = false
// * extension[maritalStatus] ^short = "Practitioner Marital Status"
// * extension[maritalStatus] ^definition = "This field contains a Practitioner's most recent marital (civil) status."
// * extension[maritalStatus] ^isModifier = false
// * extension[maritalStatus] ^binding.description = "Marital Status"
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



