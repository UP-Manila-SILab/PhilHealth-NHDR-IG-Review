Profile: PH_MedicationAdministration
Parent: MedicationAdministration
Id: PH-MedicationAdministration
Description: "Describes the event of a patient consuming or otherwise being administered a medication."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationAdministration"
* ^status = #draft
* extension contains
    ExtOrganization named extOrganization 0..* and
    ExtEncounter named extEncounter 0..* and
    RecordedDate named recordedDate 0..*
* extension[extOrganization] ^short = "The health facility code where the medication was administered."
* extension[extOrganization] ^definition = "The health facility code where the medication was administered."
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* extension[extEncounter] ^short = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^definition = "The encounter when the medicine was consumed or administered."
* extension[extEncounter] ^comment = "This is an extension"
* extension[extEncounter] ^isModifier = false
* extension[recordedDate] ^short = "The recordedDate represents when this particular Medication Administration record was uploaded into the NHDR."
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Medication Administration record was uploaded into the NHDR."
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* instantiates ..0
* partOf ..0
// * status from MedicalAdministrationStatus (required)
* status from $YesNoVS (required)
* statusReason ..0
* category ..0
* context ..0
* supportingInformation ..0
* performer ..0
* reasonCode ..1
* reasonReference ..1
* dosage ^definition = "Indicates how the medication is/was or should be taken by the patient."
* dosage.extension ..0
* eventHistory ..0