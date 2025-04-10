Profile: PH_Procedure
Parent: Procedure
Id: PH-Procedure
Title: "PH Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Procedure"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    ExtOrganization named extOrganization 0..* and
    RecordedDate named recordedDate 0..* and
    IllnessClass named illnessClass 0..*
* extension[extOrganization] ^short = "The facility where the procedure was done"
* extension[extOrganization] ^definition = "The facility where the procedure was done"
* extension[extOrganization] ^comment = "This is an entension"
* extension[extOrganization] ^isModifier = false
* extension[recordedDate] ^short = "This is the date the procedure was recorded in NHDR"
* extension[recordedDate] ^definition = "This is the date the procedure was recorded in NHDR"
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* extension[illnessClass] ^short = "Illness code of the disease as listed in Philhealth"
* extension[illnessClass] ^definition = "Illness code of the disease as listed in Philhealth"
* extension[illnessClass] ^comment = "This is an extension"
* extension[illnessClass] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* partOf ..0
* status from ProcedureStatusVS (required)
* statusReason ..0
// * category ..0
* code from ProcedureCodeVS (required)
* subject only Reference(PH_Patient)
* encounter only Reference(PH_Encounter)
* performed[x] only dateTime or Period
* recorder ..0
* asserter ..0
* performer ..0
* location ..0
* reasonCode ..0
* reasonReference ..0
* bodySite from ProcedureBodySiteVS (required)
// * outcome ..0
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* focalDevice ..0
* usedReference ..0
* usedCode ..0

