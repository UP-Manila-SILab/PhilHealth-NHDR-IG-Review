Profile: PH_Coverage
Parent: Coverage
Id: PH-Coverage
Title: "PH Coverage"
Description: "Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Coverage"
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
// * status ..0         Can't disable elements that are mandatory by default
// * type ..0
* policyHolder ..0
* subscriber ..0
* subscriberId ..0
// * beneficiary ..0    Can't disable elements that are mandatory by default
* dependent ..0
* relationship ..0
// * period ..0
* payor only Reference(PH_Organization or PH_Patient)
* class.id ..0
* class.extension ..0
* class.modifierExtension ..0
// * class.value ..0    Can't disable elements that are mandatory by default
* class.name ..0
* order ..0
* network ..0
* costToBeneficiary.extension ..0
* costToBeneficiary.modifierExtension ..0
* costToBeneficiary.id ..0
* costToBeneficiary.exception ..0
* costToBeneficiary.value[x] only Money
* subrogation ..0
* contract ..0