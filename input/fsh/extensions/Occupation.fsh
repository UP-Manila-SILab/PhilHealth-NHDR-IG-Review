Extension: Occupation
Id: Occupation
Context: Patient
Title: "Occupation / In Years"
Description: "Patient's occupation."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Occupation"
* ^status = #draft
// * value[x] only string or CodeableConcept
// * value[x] from $psoc (required)
* value[x] only integer or CodeableConcept
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from https://psa.gov.ph/classification/psoc/unit (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "Occupation Type"
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"
* valueInteger ^short = "Length in Years"