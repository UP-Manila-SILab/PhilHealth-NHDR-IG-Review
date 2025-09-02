Profile: PH_MedicationRequest
Parent: MedicationRequest
Id: PH-MedicationRequest
Title: "PH MedicationRequest"
Description: "An order or request for both supply of the medication and the instructions for administration of the medication to a patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-MedicationRequest"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
// * identifier ..0
// * status ..0         //  Can't disable elements that are mandatory by default
* statusReason ..0
// * intent ..0         //  Can't disable elements that are mandatory by default
* category ..0
* priority ..0
* doNotPerform ..0
* reported[x] ..0
// * medication[x] ..0  //  Can't disable elements that are mandatory by default
// * subject ..0        //  Can't disable elements that are mandatory by default
// * encounter ..0
// * supportingInformation ..0
* authoredOn ..0
// * requester ..0
* performer ..0
* performerType ..0
* recorder ..0
* reasonCode ..0
* reasonReference ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* groupIdentifier ..0
* courseOfTherapyType ..0
* insurance ..0
* note ..0
// * dosageInstruction ..0
* dosageInstruction.id ..0
* dosageInstruction.extension ..0
* dosageInstruction.modifierExtension ..0
* dosageInstruction.sequence ..0
* dosageInstruction.text ..0
* dosageInstruction.additionalInstruction ..0
* dosageInstruction.patientInstruction ..0
// * dosageInstruction.timing ..0
* dosageInstruction.asNeeded[x] ..0
* dosageInstruction.site ..0
// * dosageInstruction.route ..0
* dosageInstruction.method ..0
* dosageInstruction.doseAndRate.id ..0
* dosageInstruction.doseAndRate.extension ..0
* dosageInstruction.doseAndRate.type ..0
* dosageInstruction.doseAndRate.dose[x] only SimpleQuantity
* dosageInstruction.doseAndRate.rate[x] only SimpleQuantity
* dosageInstruction.maxDosePerPeriod ..0
* dosageInstruction.maxDosePerAdministration ..0
* dosageInstruction.maxDosePerLifetime ..0
// * dispenseRequest ..0
* dispenseRequest.id ..0
* dispenseRequest.extension ..0
* dispenseRequest.modifierExtension ..0
* dispenseRequest.initialFill ..0
* dispenseRequest.dispenseInterval ..0
* dispenseRequest.validityPeriod ..0
* dispenseRequest.numberOfRepeatsAllowed ..0
// * dispenseRequest.quantity ..0
* dispenseRequest.expectedSupplyDuration ..0
* dispenseRequest.performer ..0
* substitution ..0
* priorPrescription ..0
* detectedIssue ..0
* eventHistory ..0