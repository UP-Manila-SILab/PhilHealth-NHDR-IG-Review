Profile: PH_Medication
Parent: Medication
Id: PH-Medication
Description: "This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Medication"
* insert MetaData
* extension 1..
* extension contains
    DosageInstruction named dosageInstruction 0..* and
    Packaging named packaging 1..* and
    DateUpdated named dateUpdated 0..*
* extension[dosageInstruction] ^short = "instruction on the medication dosage"
* extension[dosageInstruction] ^definition = "instruction on the medication dosage"
* extension[dosageInstruction] ^comment = "This is an extension"
* extension[dosageInstruction] ^isModifier = false
* extension[packaging] ^short = "Detailed description on the medication packaging"
* extension[packaging] ^definition = "Detailed description on the medication packaging"
* extension[packaging] ^comment = "This is an extension"
* extension[packaging] ^isModifier = false
* extension[dateUpdated] ^short = "Date of last update"
* extension[dateUpdated] ^definition = "Date of last update"
* extension[dateUpdated] ^comment = "This is an extension"
* extension[dateUpdated] ^isModifier = false
* status ..0
* manufacturer ..0
* amount ..0