Profile: PH_MedicationDispense
Parent: MedicationDispense
Id: PH-MedicationDispense
Title: "PH MedicationDispense"
Description: "Indicates that a medication product is to be or has been dispensed for a named person/patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationDispense"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains Cost named cost 0..*
* extension[cost] ^short = "Cost of the medication."
* extension[cost] ^definition = "Cost of the medication."
* extension[cost] ^comment = "This is an extension"
* extension[cost] ^isModifier = false
* modifierExtension ..0
* identifier ..0
* partOf ..0
// * status 0..0       Can't disable elements that are mandatory by default
* statusReason[x] ..0
* category ..0
// * medication[x] ..0      Can't disable elements that are mandatory by default
* subject ..0
* context ..0
* supportingInformation ..0
* performer ..0
* location ..0
* authorizingPrescription ..0
* type ..0
// * quantity ..0
* daysSupply ..0
* whenPrepared ..0
// * whenHandedOver ..0
* destination ..0
* receiver ..0
* note ..0
* dosageInstruction.extension ..0
* dosageInstruction.modifierExtension ..0
* dosageInstruction.sequence ..0
* dosageInstruction.text ..0
* dosageInstruction.additionalInstruction ..0
* dosageInstruction.patientInstruction ..0
// * dosageInstruction.timing ..0
* dosageInstruction.timing.id ..0
* dosageInstruction.timing.extension ..0
* dosageInstruction.timing.modifierExtension ..0
* dosageInstruction.timing.event ..0
* dosageInstruction.timing.code ..0
* dosageInstruction.timing.repeat.id ..0
* dosageInstruction.timing.repeat.extension ..0
* dosageInstruction.timing.repeat.bounds[x] ..0
* dosageInstruction.timing.repeat.count ..0
* dosageInstruction.timing.repeat.countMax ..0
* dosageInstruction.timing.repeat.duration ..0
* dosageInstruction.timing.repeat.durationMax ..0
* dosageInstruction.timing.repeat.durationUnit ..0
// * dosageInstruction.timing.repeat.frequency ..0
* dosageInstruction.timing.repeat.frequencyMax ..0
* dosageInstruction.timing.repeat.period ..0
* dosageInstruction.timing.repeat.periodMax ..0
* dosageInstruction.timing.repeat.periodUnit ..0
* dosageInstruction.timing.repeat.dayOfWeek ..0
* dosageInstruction.timing.repeat.timeOfDay ..0
* dosageInstruction.timing.repeat.when ..0
* dosageInstruction.timing.repeat.offset ..0
* dosageInstruction.asNeeded[x] ..0
* dosageInstruction.site ..0
* dosageInstruction.method ..0
* dosageInstruction.doseAndRate.type ..0
* dosageInstruction.doseAndRate.rate[x] ..0
* dosageInstruction.doseAndRate.id ..0
* dosageInstruction.doseAndRate.extension ..0
* dosageInstruction.maxDosePerAdministration ..0
* dosageInstruction.maxDosePerLifetime ..0
* dosageInstruction.maxDosePerPeriod ..0
* substitution ..0
* detectedIssue ..0
* eventHistory ..0