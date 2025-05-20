Extension: MaritalStatus
Id: MaritalStatus
Title: "Marital Status"
Context: Practitioner
Description: "Extended Marital Status"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/MaritalStatus"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $MaritalStatusVS (required)