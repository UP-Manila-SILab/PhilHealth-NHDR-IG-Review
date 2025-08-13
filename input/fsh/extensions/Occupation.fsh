Extension: Occupation
Id: Occupation
Context: Patient, RelatedPerson
Title: "Occupation / In Years"
Description: "Patient's occupation."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/Occupation"
* insert MetaData
* value[x] only integer or CodeableConcept
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.coding.code from $OccupationClassificationVS (required)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "Occupation Classification"
* valueInteger 0..1
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"
* valueInteger ^short = "Length in Years"