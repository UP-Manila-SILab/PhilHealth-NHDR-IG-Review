Profile: PH_Specimen
Parent: Specimen
Id: PH-Specimen
Title: "PH Specimen"
Description: "A sample to be used for analysis."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Specimen"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
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
* modifierExtension ..0
// * identifier ..0
// * accessionIdentifier ..0
* status ..0
* type from SpecimenTypeVS (required)
* subject only Reference(PH_Patient)
// * receivedTime ..0
* parent ..0
* request ..0
* collection.extension contains ReleaseDate named releaseDate 0..*
* collection.extension[releaseDate] ^short = "Date the specimen was released"
* collection.extension[releaseDate] ^definition = "Date the specimen was released"
* collection.extension[releaseDate] ^comment = "This is an extension"
* collection.extension[releaseDate] ^isModifier = false
* collection.modifierExtension ..0
* collection.method from SpecimenCollectionMethodVS (required)
* collection.bodySite ..0
* collection.fastingStatus[x] ..0
* collection.collected[x] only dateTime
* collection.duration ..0
* collection.collector only Reference(PH_Practitioner or PH_PractitionerRole)
* processing.id ..0
* processing.extension ..0
* processing.modifierExtension ..0
* processing.description ..0
* processing.additive ..0
* processing.procedure from SpecimenProcessingProcedureVS (required)
* container.id ..0
* container.extension ..0
* container.modifierExtension ..0
* container.identifier ..0
* container.description ..0
* container.capacity ..0
* container.additive[x] ..0
* condition from SpecimenConditionVS (required)
// * note ..0
