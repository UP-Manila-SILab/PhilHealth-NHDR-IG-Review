Profile: PH_Signature
Parent: Signature
Id: PH-Signature
Title: "PH Signature"
Description: "The signature of an individual."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Signature"
* insert MetaData
* extension contains
    SignaturePosition named position 0..* and
    SignatureReason named reason 0..*
    // SignatureSubType named signatureSubType 0..* and
    // SignatureThumbmark named signatureThumbmark 0..*
* extension[position] ^isModifier = false
* extension[reason] ^isModifier = false
// * extension[signatureSubType] ^isModifier = false
// * extension[signatureThumbmark] ^isModifier = false
* type from $SignatureTypeVS (required)
* who only Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or PH_RelatedPerson or Device)
* onBehalfOf only Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or PH_RelatedPerson or Device)
* sigFormat ..0
* targetFormat ..0