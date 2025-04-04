Extension: ExtOrganization
Id: ExtOrganization
Context: AllergyIntolerance, Condition, Procedure, Observation, Specimen, DiagnosticReport, MedicationAdministration, MedicationStatement, Immunization
Title: "Organization (Extension)"
Description: "Refers to a formally or informally recognized grouping of people or entities that are formed to achieve a common goal, particularly in healthcare."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
* ^status = #draft
* value[x] only Reference(PH_Organization)
* value[x] ^type.aggregation = #referenced