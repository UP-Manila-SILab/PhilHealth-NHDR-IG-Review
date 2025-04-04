Profile: PH_MedicationStatement
Parent: MedicationStatement
Id: PH-MedicationStatement
Title: "PH MedicationStatement"
Description: "A record of a medication that is being consumed by a patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationStatement"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    ExtOrganization named extOrganization 0..* and
    ExtEncounter named extEncounter 0..*
* extension[extOrganization] ^short = "The health facility code where the medication was administered."
* extension[extOrganization] ^definition = "The health facility code where the medication was administered."
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* extension[extEncounter] ^short = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^definition = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^comment = "This is an extension"
* extension[extEncounter] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
* basedOn ..0
* partOf ..0
// * status ..0
// * statusReason ..0
* category ..0
* medication[x] only CodeableConcept or Reference(PH_Medication)
* subject only Reference(PH_Patient)
* context ..0
* effective[x] ..0
* dateAsserted ..0
* informationSource ..0
* derivedFrom ..0
// * reasonCode ..0
* reasonReference ..0
// * note ..0
// * dosage ..0