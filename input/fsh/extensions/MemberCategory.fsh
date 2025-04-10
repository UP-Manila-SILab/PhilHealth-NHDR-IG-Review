Extension: MemberCategory
Id: MemberCategory
Title: "Membership Category"
Context: "Patient"
Description: "Membership Category"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/MemberCategory"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $MemberCategoryVS (required)