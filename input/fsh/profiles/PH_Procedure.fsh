Profile: PH_Procedure
Parent: Procedure
Id: PH-Procedure
Title: "PH Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Procedure"
* insert MetaData
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
// * identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* partOf ..0
// * status from ProcedureStatusVS (required) //Reference still on hold
* statusReason ..0
// * category ..0
* code from ProcedureCodeVS (required)
* subject only Reference(PH_Patient)
* encounter only Reference(PH_Encounter)
* performed[x] only dateTime or Period
* recorder ..0
* asserter ..0
// * performer ..0
* performer.id ..0
* performer.extension ..0
* performer.modifierExtension ..0
* performer.function ..0
// * performer.actor ..0
* performer.onBehalfOf ..0
* location ..0
// * reasonCode ..0
* reasonReference ..0
// * bodySite from ProcedureBodySiteVS (required) //Reference still on hold
* outcome from $ProcedureOutcomeVS (required)
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* focalDevice ..0
* usedReference ..0
* usedCode ..0

//  PHCDI uses performer.onBehalfOf instead of performer.actor, which seems more proper