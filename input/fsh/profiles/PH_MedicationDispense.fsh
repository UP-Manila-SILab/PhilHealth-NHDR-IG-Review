Profile: PH_MedicationDispense
Parent: MedicationDispense
Id: PH-MedicationDispense
Description: "Indicates that a medication product is to be or has been dispensed for a named person/patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationDispense"
* insert MetaData
* extension contains Cost named cost 0..*
* extension[cost] ^short = "Cost of the medication"
* extension[cost] ^definition = "Cost of the medication"
* extension[cost] ^comment = "This is an extension"
* extension[cost] ^isModifier = false
* identifier ..0
* partOf ..0
* statusReason[x] ..0
* category ..0
* subject ..0
* context ..0
* supportingInformation ..0
* performer ..0
* location ..0
* authorizingPrescription ..0
* type ..0
* daysSupply ..0
* whenPrepared ..0
* destination ..0
* receiver ..0
* note ..0
* substitution ..0
* detectedIssue ..0
* eventHistory ..0