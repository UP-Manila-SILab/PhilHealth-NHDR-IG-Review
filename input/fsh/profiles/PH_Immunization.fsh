Profile: PH_Immunization
Parent: Immunization
Id: PH-Immunization
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Immunization"
* insert MetaData
* extension contains ExtOrganization named extOrganization 0..*
* extension[extOrganization] ^short = "Organization where the immunization was conducted"
* extension[extOrganization] ^definition = "Organization where the immunization was conducted."
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* status from ImmunizationStatusVS (required)
* vaccineCode from ImmunizationVaccineCodeVS (example)
* primarySource ..0
* reportOrigin from $ImmunizationOriginVS (example)
* location ..0
* manufacturer ..0
* lotNumber ..0
* expirationDate ..0
* site ..0
* route from ImmunizationRouteVS (example)
* performer ..0
* reasonCode from ImmunizationStatusReasonVS (example)
* reasonReference ..0
* isSubpotent ..0
* subpotentReason ..0
* education ..0
* programEligibility ..0
* fundingSource ..0
* protocolApplied ..0