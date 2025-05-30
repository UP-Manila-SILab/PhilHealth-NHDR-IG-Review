Profile: PH_Medication
Parent: Medication
Id: PH-Medication
Title: "PH Medication"
Description: "This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Medication"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    Packaging named packaging 0..* and
    MedicationType named medicationType 0..1
* extension[packaging] ^short = "Detailed description on the medication packaging"
* extension[packaging] ^definition = "Detailed description on the medication packaging"
* extension[packaging] ^comment = "This is an extension"
* extension[packaging] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
* code from $DrugCodesVS (required)  
* status ..0
* manufacturer ..0
* form from $MedicationFormVS (required)  
* amount ..0
* ingredient.id ..0
* ingredient.extension ..0
* ingredient.modifierExtension ..0
// * ingredient.item[x] 0..0    Can't disable elements that are mandatory by default
* ingredient.isActive ..0
* batch ..0

//  Waiting for suggestion to consider ingredient.item[x]