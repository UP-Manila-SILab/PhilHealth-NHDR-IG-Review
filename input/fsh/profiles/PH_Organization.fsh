Profile: PH_Organization
Parent: Organization
Id: PH-Organization
Title: "PH Organization"
Description: "Refers to a formally or informally recognized grouping of people or entities that are formed to achieve a common goal, particularly in healthcare."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* insert MetaData
* . ^definition = "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.\n\nAlternate Name: Health Facility Registry."
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    HeadName named headName 0..* and
    HeadPosition named headPosition 0..* and
    HeadTelecom named headTelecom 0..*
* extension[headName] ^short = "Head of the organization."
* extension[headName] ^definition = "Head of the organization."
* extension[headName] ^isModifier = false
* extension[headPosition] ^short = "Position of the head of the facility."
* extension[headPosition] ^definition = "Position of the head of the facility."
* extension[headPosition] ^isModifier = false
* extension[headTelecom] ^short = "Contact information of the head of facility."
* extension[headTelecom] ^definition = "Contact information of the head of facility."
* extension[headTelecom] ^isModifier = false
* modifierExtension ..0
* identifier only $FHUDCode or $OtherID
// * active ..0
* type from $OrganizationTypeVS (required)
// * name ..0
* alias ..0
* telecom.id ..0
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* address only $SD_Address
* partOf ..0
// * contact ..0
* contact.id ..0
* contact.extension ..0
* contact.modifierExtension ..0
* contact.purpose ..0
* contact.name
* contact.address only $SD_Address
* endpoint ..0



//  Notes:
//  SD_DOHFHUDCode needs to be updated with specifics