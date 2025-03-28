Profile: PH_Observation
Parent: Observation
Id: PH-Observation
Description: "Measurements and simple assertions made about a patient, device or other subject."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Observation"
* insert MetaData
* . ^definition = "Measurements and simple assertions made about a patient, device or other subject.\nUses: Vital signs such as body weight, blood pressure, and temperature; Laboratory Data like blood glucose, or an estimated GFR; Imaging results like bone density or fetal measurements; Clinical Findings* such as abdominal tenderness; Device measurements such as EKG data or Pulse Oximetry data; Clinical assessment tools such as APGAR or a Glasgow Coma Score; Personal characteristics: such as eye-color; Social history like tobacco use, family support, or cognitive status; Core characteristics like pregnancy status, or a death assertion.\nAlternate Name: Vital Signs; Measurement; Results; Tests"
* extension contains
    ExtAddress named address 0..* and
    ExtOrganization named extOrganization 0..* and
    RecordedDate named recordedDate 0..*
* extension[address] ^isModifier = false
* extension[address].value[x] only $SD_Address
* extension[extOrganization] ^short = "Health facility where the observation was made"
* extension[extOrganization] ^definition = "Health facility where the observation was made"
* extension[extOrganization] ^comment = "This is an extension"
* extension[extOrganization] ^isModifier = false
* extension[recordedDate] ^short = "Date when the observation was submitted to NHDDR"
* extension[recordedDate] ^definition = "Date when the observation was submitted to NHDDR"
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* basedOn ..0
* partOf ..0
* focus ..0
* issued ..0
* value[x] only Quantity or CodeableConcept or string or dateTime
* value[x] from ObservationValueVS (extensible)
* dataAbsentReason ..0
* bodySite ..0
* method from $ObservationMethodVS (extensible)
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component ..0