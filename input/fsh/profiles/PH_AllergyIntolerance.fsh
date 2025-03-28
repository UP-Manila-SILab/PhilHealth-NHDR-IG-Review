Profile: PH_AllergyIntolerance
Parent: AllergyIntolerance
Id: PH-AllergyIntolerance
Description: "Risk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-AllergyIntolerance"
* insert MetaData
* extension contains ExtOrganization named organization 0..*
* extension[organization] ^short = "Health facility where allergy intolerance was encountered"
* extension[organization] ^definition = "Health facility where allergy intolerance was encountered"
* extension[organization] ^comment = "This is an extension"
* extension[organization] ^isModifier = false
* criticality ..0
* recorder ..0
* asserter ..0
* lastOccurrence ..0