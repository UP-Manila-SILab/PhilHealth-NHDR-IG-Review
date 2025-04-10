Extension: IndigenousGroup
Id: IndigenousGroup
Context: Patient
Title: "Indigenous Group"
Description: "Indigenous group that the patient belongs to."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/IndigenousGroup"
* ^status = #draft
* value[x] only CodeableConcept
* value[x].coding from IndigenousGroupVS (required)
* value[x].coding ^binding.description = "ValueSet"