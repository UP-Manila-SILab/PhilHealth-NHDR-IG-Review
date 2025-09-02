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
// * extension ..0
* extension contains EncounterExtension named encounter ..*
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
// * prescription ..0
* originalPrescription ..0
// * payee ..0
* payee.id ..0
* payee.extension ..0
* payee.modifierExtension ..0
// * referral ..0
* facility ..0
// * careTeam ..0
* careTeam.responsible ..0
* careTeam.role ..0
* careTeam.qualification ..0
// * supportingInfo ..0
* supportingInfo.id ..0
* supportingInfo.extension ..0
* supportingInfo.modifierExtension ..0
// * supportingInfo.sequence ..0    Can't disable elements that are mandatory by default
// * supportingInfo.category ..0    Can't disable elements that are mandatory by default
* supportingInfo.code ..0
* supportingInfo.timing[x] ..0
* supportingInfo.reason ..0
// * diagnosis ..0
* diagnosis.id ..0
* diagnosis.extension ..0
* diagnosis.modifierExtension ..0
// * diagnosis.sequence ..0         Can't disable elements that are mandatory by default
// * diagnosis.diagnosis[x] ..0
* diagnosis.type ..0
* diagnosis.onAdmission ..0
* diagnosis.packageCode ..0
// * procedure ..0
* procedure.id ..0
* procedure.extension ..0
* procedure.modifierExtension ..0
// * procedure.sequence ..0         Can't disable elements that are mandatory by default
* procedure.type ..0
// * procedure.date ..0
// * procedure.procedure[x] ..0     Can't disable elements that are mandatory by default
* procedure.udi ..0
// * insurance 0..0                 Can't disable elements that are mandatory by default
* insurance.id ..0
* insurance.extension ..0
* insurance.modifierExtension ..0
// * insurance.sequence ..0         Can't disable elements that are mandatory by default
// * insurance.focal ..0            Can't disable elements that are mandatory by default
* insurance.identifier ..0
// * insurance.coverage ..0         Can't disable elements that are mandatory by default
* insurance.businessArrangement ..0
* insurance.preAuthRef ..0
* insurance.claimResponse ..0
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
// * item.serviced[x] ..0
* item.location[x] ..0
// * item.quantity ..0
* item.unitPrice ..0
* item.factor ..0
* item.udi ..0
* item.bodySite ..0
* item.subSite ..0
// * item.encounter ..0
// * item.detail ..0
* item.detail.id ..0
* item.detail.extension ..0
* item.detail.modifierExtension ..0
// * item.detail.sequence ..0       Can't disable elements that are mandatory by default
* item.detail.revenue ..0
* item.detail.category ..0
// * item.detail.productOrService ..0
* item.detail.modifier ..0
* item.detail.programCode ..0
* item.detail.quantity ..0
* item.detail.unitPrice ..0
* item.detail.factor ..0
// * item.detail.net ..0
* item.detail.udi ..0
* item.detail.subDetail ..0
// * item.detail.subDetail.id ..0
// * item.detail.subDetail.extension ..0
// * item.detail.subDetail.modifierExtension ..0
// * item.detail.subDetail.sequence ..0     Can't disable elements that are mandatory by default
// * item.detail.subDetail.revenue ..0
// * item.detail.subDetail.category ..0
// * item.detail.subDetail.productOrService ..0
// * item.detail.subDetail.modifier ..0
// * item.detail.subDetail.programCode ..0
// * item.detail.subDetail.quantity ..0
// * item.detail.subDetail.unitPrice ..0
// * item.detail.subDetail.factor ..0
// * item.detail.subDetail.net ..0
// * item.detail.subDetail.udi ..0
// * total ..0