Profile: PH_CoverageEligibilityRequest
Parent: CoverageEligibilityRequest
Id: PH-CoverageEligibilityRequest
Title: "PH CoverageEligibiityRequest"
Description: "The CoverageEligibilityRequest provides patient and insurance coverage information to an insurer for them to respond, in the form of an CoverageEligibilityResponse, with information regarding whether the stated coverage is valid and in-force and optionally to provide the insurance details of the policy.	"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-CoverageEligibilityRequest"
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
// * status ..0     Can't disable elements that are mandatory by default
* priority ..0
// * purpose ..0    Can't disable elements that are mandatory by default
// * patient ..0    Can't disable elements that are mandatory by default
* patient only Reference(PH_Patient)
* serviced[x] ..0
// * created ..0    Can't disable elements that are mandatory by default
* enterer ..0
* provider ..0
// * insurer ..0    Can't disable elements that are mandatory by default
* insurer only Reference(PH_Organization)
* facility ..0
* supportingInfo ..0
* insurance ..0
* item ..0