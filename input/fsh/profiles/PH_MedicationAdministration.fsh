Profile: PH_MedicationAdministration
Parent: MedicationAdministration
Id: PH-MedicationAdministration
Title: "PH MediationAdministration"
Description: "Describes the event of a patient consuming or otherwise being administered a medication."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationAdministration"
* insert MetaData
// * id ..0
// * meta ..0
* meta.extension contains $RecordedDate named recordedDate 0..*
* meta.extension[recordedDate] only $RecordedDate
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    ExtEncounter named extEncounter 0..*
* extension[extEncounter] ^short = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^definition = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^comment = "This is an extension"
* extension[extEncounter] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
* instantiates ..0
* partOf ..0
* status from $MedicationAdministrationStatusVS (required)
* statusReason ..0
// * category ..0
* medication[x] from $DrugCodesVS (required)
* subject only Reference(PH_Patient)
* context ..0
* supportingInformation ..0
// * performer ..0
* reasonCode ..1
* reasonReference ..1
* reasonReference only Reference(PH_Condition or PH_Observation or PH_DiagnosticReport)
* request ..0
* device ..0
// * note ..0
* dosage ^definition = "Indicates how the medication is/was or should be taken by the patient."
* dosage.route from $MedicationRouteVS (required)
* dosage.extension ..0
* dosage.modifierExtension ..0
* dosage.id ..0
* eventHistory ..0


//  Possible change in category and performer. Awaiting confirmation on PHCDI.