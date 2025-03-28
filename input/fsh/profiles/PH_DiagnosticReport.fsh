Profile: PH_DiagnosticReport
Parent: DiagnosticReport
Id: PH-DiagnosticReport
Description: "The findings and interpretation of diagnostic tests performed on patients, groups of patients, products, substances, devices, and locations, and/or specimens derived from these."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-DiagnosticReport"
* insert MetaData
* extension contains ExtOrganization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the diagnosis was made"
* extension[extOrganization] ^definition = "Health facility where the diagnosis was made"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* basedOn ..0
* code from DiagnosticReportCodeVS (preferred)
* performer ..0
* resultsInterpreter ..0
* imagingStudy ..0
* media ..0
* presentedForm ..0