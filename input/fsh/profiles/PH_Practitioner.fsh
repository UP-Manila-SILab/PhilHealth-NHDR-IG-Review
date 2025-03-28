Profile: PH_Practitioner
Parent: Practitioner
Id: PH-Practitioner
Description: "A person who is directly or indirectly involved in the provisioning of healthcare or related services."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* insert MetaData
* . ^definition = "A person who is directly involved in the provisioning of healthcare."
* extension contains
    Sex named sex 0..*
* extension[sex] ^short = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^comment = "This is an extension"
* extension[sex] ^isModifier = false
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0
* name only $SD_HumanName