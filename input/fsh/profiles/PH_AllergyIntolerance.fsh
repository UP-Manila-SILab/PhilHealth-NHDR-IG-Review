Profile: PH_AllergyIntolerance
Parent: AllergyIntolerance
Id: PH-AllergyIntolerance
Title: "PH AllergyIntolerance"
Description: "Risk of harmful or undesirable physiological response which is specific to an individual and associated with exposure to a substance."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-AllergyIntolerance"
* insert MetaData
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
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
* reaction.manifestation from $ICD10VS (required)
* reaction.id ..0
* reaction.modifierExtension ..0
* reaction.extension ..0
* reaction.substance ..0
* reaction.onset ..0
* reaction.exposureRoute ..0

