Profile: PH_Claim
Parent: Claim
Id: PH-Claim
Title: "PH Claim"
Description: "A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains $Signature named signature 0..*
* extension[signature] ^isModifier = false
* modifierExtension ..0
// * identifier ..0
// * status 0..0                    Can't disable elements that are mandatory by default
// * type 0..0                      Can't disable elements that are mandatory by default
* subType ..0
// * use 0..0                       Can't disable elements that are mandatory by default
// * patient 0..0                   Can't disable elements that are mandatory by default
* billablePeriod ..0
// * created 0..0                   Can't disable elements that are mandatory by default
* enterer ..0
* insurer ..0
// * provider 0..0                  Can't disable elements that are mandatory by default
// * priority 0..0                  Can't disable elements that are mandatory by default
* fundsReserve ..0
* related ..0
* prescription ..0
* originalPrescription ..0
* payee ..0
* referral ..0
* facility ..0
* careTeam ..0
* supportingInfo ..0
* diagnosis ..0
* procedure ..0
// * insurance 0..0                 Can't disable elements that are mandatory by default
* insurance.extension ..0
* insurance.modifierExtension ..0
* accident ..0
* item.id ..0
* item.extension ..0
* item.modifierExtension ..0
// * item.sequence 0..0             Can't disable elements that are mandatory by default
* item.careTeamSequence ..0
* item.diagnosisSequence ..0
* item.procedureSequence ..0
* item.informationSequence ..0
* item.revenue ..0
* item.category ..0
// * item.productOrService 0..0     Can't disable elements that are mandatory by default
* item.modifier ..0
* item.programCode ..0
* item.serviced[x] ..0
* item.location[x] ..0
* item.quantity ..0
* item.unitPrice ..0
* item.factor ..0
* item.udi ..0
* item.bodySite ..0
* item.subSite ..0
* item.encounter ..0
* item.detail ..0
* total ..0