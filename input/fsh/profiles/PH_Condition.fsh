Profile: PH_Condition
Parent: Condition
Id: PH-Condition
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
* insert MetaData
* extension contains ExtOrganization named extOrganization 0..*
* extension[extOrganization] ^short = "Health facility where the encounter was"
* extension[extOrganization] ^definition = "Health facility where the encounter was"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* clinicalStatus.coding from ConditionClinicalStatusVS (required)
* verificationStatus from ConditionVerificationStatusVS (required)
* category from ConditionCategoryVS (extensible)
* severity from ConditionSeverityVS (preferred)
* code from ConditionCodeVS (example)
* bodySite from ConditionBodySiteVS (example)
* abatement[x] ..0
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0