Profile: PH_MedicationStatement
Parent: MedicationStatement
Id: PH-MedicationStatement
Title: "PH MedicationStatement"
Description: "A record of a medication that is being consumed by a patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationStatement"
* insert MetaData
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    EncounterExtension named encounter 1..*
* modifierExtension ..0
// * identifier ..0
* basedOn ..0
* partOf ..0
* status from $MedicationStatusVS (required)
// * statusReason ..0
* category ..0
* medication[x] only CodeableConcept or Reference(PH_Medication)
* subject only Reference(PH_Patient)
* context ..0
* effective[x] ..0
* dateAsserted ..0
// * informationSource ..0
* informationSource only Reference(PH_Patient or PH_Practitioner or PH_PractitionerRole or PH_RelatedPerson or PH_Organization)
* derivedFrom ..0
* reasonCode from $ICD10VS (required) 
* reasonReference ..0
// * note ..0
// * dosage ..0