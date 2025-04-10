Profile: PH_Signature
Parent: Signature
Id: PH-Signature
Title: "PH Signature"
Description: "The signature of an individual."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Signature"
* insert MetaData
* extension contains
    SignaturePosition named signaturePosition 0..* and
    SignatureReason named signatureReason 0..* and
    SignatureSubType named signatureSubType 0..* and
    SignatureThumbmark named signatureThumbmark 0..*
* extension[signaturePosition] ^isModifier = false
* extension[signatureReason] ^isModifier = false
* extension[signatureSubType] ^isModifier = false
* extension[signatureThumbmark] ^isModifier = false
* who only Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or RelatedPerson or Device)
* onBehalfOf only Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or RelatedPerson or Device)