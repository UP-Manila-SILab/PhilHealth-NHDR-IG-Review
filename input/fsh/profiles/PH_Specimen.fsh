Profile: PH_Specimen
Parent: Specimen
Id: PH-Specimen
Description: "A sample to be used for analysis."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Specimen"
* insert MetaData
* extension contains
    RecordedDate named recordedDate 0..* and
    ResultDate named resultDate 0..* and
    ExtOrganization named extOrganization 0..* and
    Species named species 0..*
* extension[recordedDate] ^short = "The recordedDate represents when this particular Specimen record was uploaded into the NHDR."
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Specimen record was uploaded into the NHDR."
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* extension[resultDate] ^short = "The resultDate represents the date on which the outcome of the particular specimen was recorded."
* extension[resultDate] ^definition = "The resultDate represents the date on which the outcome of the particular specimen was recorded.."
* extension[resultDate] ^comment = "This is an extension"
* extension[resultDate] ^isModifier = false
* extension[extOrganization] ^short = "Health facility where the specimen was collected"
* extension[extOrganization] ^definition = "Health facility where the specimen was collected"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* extension[species] ^short = "Describes the type of species / organism [e.g. Malaria (Plasmodium falciparum, Plasmodium malariae, Plasmodium vivax, Plasmodium ovale, Plasmodium knowlesi)]"
* extension[species] ^definition = "Describes the type of species / organism [e.g. Malaria (Plasmodium falciparum, Plasmodium malariae, Plasmodium vivax, Plasmodium ovale, Plasmodium knowlesi)]"
* extension[species] ^comment = "This is an extension"
* extension[species] ^isModifier = false
* type from SpecimenTypeVS (example)
* collection.extension contains ReleaseDate named releaseDate 0..*
* collection.extension[releaseDate] ^short = "Date the specimen was released"
* collection.extension[releaseDate] ^definition = "Date the specimen was released"
* collection.extension[releaseDate] ^comment = "This is an extension"
* collection.extension[releaseDate] ^isModifier = false
* collection.method from SpecimenCollectionMethodVS (example)
* collection.bodySite ..0
* collection.fastingStatus[x] ..0
* processing.procedure from SpecimenProcessingProcedureVS (example)
* condition from SpecimenConditionVS (extensible)