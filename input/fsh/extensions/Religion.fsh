Extension: Religion
Id: Religion
Context: Patient, Person
Title: "Religion"
Description: "Extension to capture the religious affiliation of a patient, or person."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Religion"
* ^status = #draft
* value[x] only code
* value[x] from $ReligionVS (required)
* value[x] ^binding.description = "Religion ValueSet"