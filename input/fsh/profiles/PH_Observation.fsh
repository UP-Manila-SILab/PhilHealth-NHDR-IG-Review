Profile: PH_Observation
Parent: Observation
Id: PH-Observation
Title: "PH Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* insert MetaData
* . ^definition = "Measurements and simple assertions made about a patient, device or other subject.\nUses: Vital signs such as body weight, blood pressure, and temperature; Laboratory Data like blood glucose, or an estimated GFR; Imaging results like bone density or fetal measurements; Clinical Findings* such as abdominal tenderness; Device measurements such as EKG data or Pulse Oximetry data; Clinical assessment tools such as APGAR or a Glasgow Coma Score; Personal characteristics: such as eye-color; Social history like tobacco use, family support, or cognitive status; Core characteristics like pregnancy status, or a death assertion.\nAlternate Name: Vital Signs; Measurement; Results; Tests"
// * id ..0
// * meta ..0
* meta.extension contains $RecordedDate named recordedDate 0..*
* meta.extension[recordedDate] only $RecordedDate
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    ExtAddress named address 0..*
* extension[address] ^isModifier = false
* extension[address].value[x] only $SD_Address
* modifierExtension ..0
// * identifier ..0
* basedOn ..0
* partOf ..0
// * status ..0
// * category ..0
// * code ..0
* subject only Reference(PH_Patient)
* focus ..0
* encounter only Reference(PH_Encounter)
* effective[x] only dateTime
* issued ..0
* performer only Reference(PH_Practitioner)
* value[x] only Quantity or CodeableConcept or string or dateTime or integer or Ratio
* value[x] from ObservationValueVS (required)
* dataAbsentReason ..0
// * interpretation ..0
// * note ..0
// * bodySite ..0
* method from $ObservationMethodVS (required)
* specimen only Reference(PH_Specimen)
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component ..0
