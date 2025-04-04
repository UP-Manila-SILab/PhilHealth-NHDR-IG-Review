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
* extension[signature] ^isModifier = false
* extension[sex] ^short = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^comment = "This is an extension"
* extension[sex] ^isModifier = false
* modifierExtension ..0
* identifier ..1
// * active ..0
* name only $SD_HumanName
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* address only $SD_Address
* address.country ..0
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0



