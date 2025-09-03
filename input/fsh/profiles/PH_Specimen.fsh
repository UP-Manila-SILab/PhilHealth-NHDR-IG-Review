Profile: PH_Specimen
Parent: Specimen
Id: PH-Specimen
Title: "PH Specimen"
Description: "A sample to be used for analysis."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Specimen"
* insert MetaData
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    ResultDate named resultDate 0..* and
    Species named species 0..*
* modifierExtension ..0
// * identifier ..0
// * accessionIdentifier ..0
* status ..0
* type from $SpecimenTypeVS (required)
* subject only Reference(PH_Patient)
// * receivedTime ..0
* parent ..0
* request ..0
* collection.extension contains DateReleased named dateReleased 0..*
* collection.extension[dateReleased] ^short = "Date the specimen was released"
* collection.extension[dateReleased] ^definition = "Date the specimen was released"
* collection.extension[dateReleased] ^comment = "This is an extension"
* collection.extension[dateReleased] ^isModifier = false
* collection.modifierExtension ..0
// * collection.method from SpecimenCollectionMethodVS (required) //Reference still on hold
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
// * processing.procedure from SpecimenProcessingProcedureVS (required) //Reference still on hold
* container.id ..0
* container.extension ..0
* container.modifierExtension ..0
* container.identifier ..0
* container.description ..0
* container.capacity ..0
* container.additive[x] ..0
* condition from $SpecimenConditionVS (required)
// * note ..0


