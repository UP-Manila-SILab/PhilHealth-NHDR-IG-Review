Profile: PH_Encounter
Parent: Encounter
Id: PH-Encounter
Title: "PH Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient. Encounter is primarily used to record information about the actual activities that occurred, where Appointment is used to record planned activities."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* insert MetaData
* extension contains
    AgeYears named ageYears 0..* and
    AgeMonths named ageMonths 0..* and
    AgeDays named ageDays 0..* and
    PatientClassification named patientClassification 0..* and
    Interviewer named interviewer 0..* and
    InvestigatorName named investigatorName 0..* and
    DateInterview named dateInterview 0..* and
    DateInvestigation named dateInvestigation 0..* and
    ReporterName named reporterName 0..*
* modifierExtension ..0
// * id ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
// * identifier only $PhilHealthID or $COVIDDataID or $COVIDPatientID
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PhilHealthID 0..1 and
    COVIDDataID 0..* and
    COVIDPatientID 0..*
* identifier[PhilHealthID].system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PhilHealthID].type.coding = #NIIP
* identifier[COVIDDataID].system = "http://nhdr.gov.ph/fhir/Identifier/coviddata-id"
* identifier[COVIDDataID].type.coding = #placeholder
* identifier[COVIDPatientID].system = "http://nhdr.gov.ph/fhir/Identifier/covidpatient-id"
* identifier[COVIDPatientID].type.coding = #COVID
* status ^short = "NHDR will only use \"triaged\", \"in-progress\", \"cancelled\", and \"finished\"."
* statusHistory ..0
// * class ..0
* classHistory ..0
* type ..0
* serviceType from ServiceTypeVS (required)
* priority ..0
// * subject ..0
* subject only Reference(PH_Patient)
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* appointment ..0
// * period ..0
// * length ..0
// * reasonCode ..0
// * reasonReference ..0
* diagnosis.extension ..0
* diagnosis.modifierExtension ..0
* diagnosis.use ..0
* diagnosis.rank ..0
* diagnosis.id ..0
* diagnosis.condition only Reference(PH_Condition or PH_Procedure)
* account ..0
* hospitalization.extension ..0
* hospitalization.modifierExtension ..0
* hospitalization.id ..0
* hospitalization.preAdmissionIdentifier ..0
* hospitalization.admitSource ..0
* hospitalization.reAdmission ..0
* hospitalization.dietPreference ..0
* hospitalization.specialCourtesy ..0
* hospitalization.specialArrangement ..0
* hospitalization.dischargeDisposition from $DischargeDispositionVS (required)
* hospitalization.destination only Reference(Location or PH_Organization)
* location.extension ..0
* location.modifierExtension ..0
* location.id ..0
* location.status ..0
* location.period ..0
* location.physicalType from $LocationPhysicalTypeVS (required)
* partOf ..0
* serviceProvider only Reference(PH_Organization)


//  COVID Data ID has no defined code yet