Profile: PH_DiagnosticReport
Parent: DiagnosticReport
Id: PH-DiagnosticReport
Title: "PH DiagnosticReport"
Description: "The findings and interpretation of diagnostic tests performed on patients, groups of patients, products, substances, devices, and locations, and/or specimens derived from these."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-DiagnosticReport"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains ExtOrganization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the diagnosis was made"
* extension[extOrganization] ^definition = "Health facility where the diagnosis was made"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
* basedOn ..0
// * status ..0
// * category ..0
* code from DiagnosticReportCodeVS (required)
* subject only Reference(PH_Patient)
* encounter only Reference(PH_Encounter)
// * effective[x] ..0
// * issued ..0
* performer ..0
* resultsInterpreter ..0
* specimen only Reference(PH_Specimen)
* result only Reference(PH_Observation)
* imagingStudy ..0
* media ..0
// * conclusion ..0
* conclusionCode from $ICD10VS
* presentedForm ..0
