Profile: PH_HumanName
Parent: HumanName
Id: PH-HumanName
Description: "A name of a human."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-HumanName"
* insert MetaData
* extension contains $SD_MiddleName named middleName 0..*
* extension[middleName] ^isModifier = false