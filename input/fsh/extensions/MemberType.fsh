Extension: MemberType
Id: MemberType
Context: "Patient"
Title: "Membership Type"
Description: "Membership Type"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/MemberType"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $MemberTypeVS (required)