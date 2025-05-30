Profile: PH_Immunization
Parent: Immunization
Id: PH-Immunization
Title: "PH Immunization"
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Immunization"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
// * identifier ..0
* status from $ImmunizationStatusVS (required)
* statusReason from $ImmunizationStatusReasonVS (required)
* vaccineCode from $DrugCodesVS (required)
* patient only Reference(PH_Patient)
* encounter only Reference(PH_Encounter)
// * occurrence[x] ..0
// * recorded ..0
* primarySource ..0
* reportOrigin from $ImmunizationOriginVS (required)
* location ..0
* manufacturer ..0
* lotNumber ..0
* expirationDate ..0
* site ..0
* route from $ImmunizationRouteVS (required)
// * doseQuantity ..0
// * performer ..0
* performer.extension ..0
* performer.modifierExtension ..0
* performer.function ..0
// * note ..0
* reasonCode from $ImmunizationStatusReasonVS (required)
* reasonReference ..0
* isSubpotent ..0
* subpotentReason ..0
* education ..0
* programEligibility ..0
* fundingSource ..0
* reaction.id ..0
* reaction.extension ..0
* reaction.modifierExtension ..0
* protocolApplied ..0

