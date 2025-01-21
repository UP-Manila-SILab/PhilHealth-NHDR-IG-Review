Profile: PH_Medication
Parent: Medication
Id: PH_Medication
* ^url = "https://example.org/fhir/StructureDefinition/PH_Medication"
* ^status = #draft
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
* extension[packaging].value[x].extension[packcode] only $originalText
* extension[packaging].value[x].extension[packcode] ^sliceName = "packcode"
* extension[packaging].value[x].extension[packcode] ^short = "Package Code"
* extension[packaging].value[x].extension[packcode] ^isModifier = false
* extension[packaging].value[x].extension[packdesc] only $originalText
* extension[packaging].value[x].extension[packdesc] ^sliceName = "packdesc"
* extension[packaging].value[x].extension[packdesc] ^short = "Package Description"
* extension[packaging].value[x].extension[packdesc] ^isModifier = false
* extension[dateUpdated] ^short = "Date of last update"
* extension[dateUpdated] ^definition = "Date of last update"
* extension[dateUpdated] ^comment = "This is an extension"
* extension[dateUpdated] ^isModifier = false
* status ..0
* manufacturer ..0
* amount ..0