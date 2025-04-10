Extension: Race
Id: Race
Context: Patient
Title: "Race"
Description: "Extension to capture the race of a patient."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Race"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $RaceVS (required)
* value[x] ^binding.description = "Race ValueSet"