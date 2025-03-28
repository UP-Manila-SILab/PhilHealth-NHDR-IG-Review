Profile: PH_Organization
Parent: Organization
Id: PH-Organization
Description: "Refers to a formally or informally recognized grouping of people or entities that are formed to achieve a common goal, particularly in healthcare."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* insert MetaData
* . ^definition = "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.\n\nAlternate Name: Health Facility Registry."
* extension contains
    HeadName named headName 0..* and
    HeadPosition named headPosition 0..*
* extension[headName] ^definition = "Head of the organization"
* extension[headName] ^isModifier = false
* extension[headPosition] ^short = "Position of head of facility"
* extension[headPosition] ^definition = "Position of head of facility"
* extension[headPosition] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "id"
* identifier ^slicing.description = "These are the slices for the DOH facility code"
* identifier ^slicing.rules = #open
* identifier ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems."
* identifier contains
    DOHfhudcode 0..1 and
    otherID 0..1
* identifier[DOHfhudcode] ^short = "Health Facility Code (HFC)"
* identifier[DOHfhudcode] ^definition = "Health Facility Code (HFC)"
* identifier[otherID] ^short = "Use of other facility codes"
* identifier[otherID] ^definition = "PhilHealth Accreditation Number (PAN)\nPhilHealth Employer Number (PEN)"
* type from OrganizationTypeVS (extensible)
// * type.coding from OrganizationTypeVS (extensible)
* alias ..0
* partOf ..0
* contact ..1
* endpoint ..0
* contact.name only $SD_HumanName