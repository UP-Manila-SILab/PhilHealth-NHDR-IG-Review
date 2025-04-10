Profile: PH_AllergyIntolerance
Parent: AllergyIntolerance
Id: PH-AllergyIntolerance
Title: "PH AllergyIntolerance"
Description: "Risk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-AllergyIntolerance"
* insert MetaData
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains ExtOrganization named organization 0..*
* extension[organization] ^short = "Health facility where allergy intolerance was encountered"
* extension[organization] ^definition = "Health facility where allergy intolerance was encountered"
* extension[organization] ^comment = "This is an extension"
* extension[organization] ^isModifier = false
* modifierExtension ..0
// * clinicalStatus ..0
* verificationStatus ..0
* type ..0
// * category ..0
* criticality ..0
// * code ..0
* patient only Reference(PH_Patient)
* encounter only Reference(PH_Encounter)
* onset[x] ..0
// * recordedDate ..0
* recorder ..0
* asserter ..0
* lastOccurrence ..0
// * note ..0
* reaction.id ..0
* reaction.modifierExtension ..0
* reaction.extension ..0
* reaction.substance ..0
* reaction.onset ..0
* reaction.exposureRoute ..0

