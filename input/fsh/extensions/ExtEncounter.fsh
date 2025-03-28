Extension: ExtEncounter
Id: ExtEncounter
Context: MedicationAdministration, MedicationStatement
Title: "Encounter"
Description: "The encounter when the medicine was consumed or administered."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtEncounter"
* ^status = #draft
* value[x] only Reference(Encounter)
* value[x] ^type.aggregation = #referenced