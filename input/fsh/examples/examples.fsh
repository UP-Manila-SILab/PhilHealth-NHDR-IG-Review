//  We need to double check the alias list here eventually
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $ClinicalStatusValueSet = https://nhdr.gov.ph/fhir/ValueSet/ClinicalStatusValueSet
Alias: $ConditionVerificationStatusValueSet = http://nhdr.gov.ph/fhir/ValueSet/ConditionVerificationStatusValueSet
Alias: $ConditionCodeValueSet = http://nhdr.gov.ph/fhir/ValueSet/ConditionCodeValueSet
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $loinc = http://loinc.org
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $ProcedureCodeValueSet = http://nhdr.gov.ph/fhir/ValueSet/ProcedureCodeValueSet
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $sct = http://snomed.info/sct
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0286 = http://terminology.hl7.org/CodeSystem/v2-0286
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation


Instance: Allergy-Intolerance-1
InstanceOf: PH_AllergyIntolerance
Usage: #example
* meta.lastUpdated = "2024-07-18T08:23:58.665+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
* extension.valueReference = Reference(Organization/Organization-Lucena-General-Hospital)
* clinicalStatus = $allergyintolerance-clinical#active "Active"
// * verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
// * type = #allergy
* category = #medication
* code = $sct#764146007 "Penicillin"
* code.text = "Penicillin"
* patient = Reference(Patient/Patient-1)
// * onsetDateTime = "2024-07-01T10:00:00+08:00"
// * reaction.substance = $sct#91936005 "Allergy to Penicillin"
// * reaction.substance.text = "Allergy to Penicillin"
* reaction.manifestation = $sct#271807003 "Rash"
* reaction.manifestation.text = "Rash"
* reaction.description = "Patient developed a rash after taking penicillin."
// * reaction.onset = "2024-07-01T11:00:00+08:00"
* reaction.severity = #moderate

Instance: Appointment-1
InstanceOf: PH_Appointment
Usage: #example
* status = #Y
* start = "2024-07-20T09:00:00+08:00"
* end = "2024-07-20T09:30:00+08:00"
* participant.actor.reference = "Patient/Patient-1"
* participant.required = #required
* participant.status = #accepted
* requestedPeriod.start = "2024-07-20T09:00:00+08:00"
* requestedPeriod.end = "2024-07-20T09:30:00+08:00"

Instance: Care-Plan-1
InstanceOf: PH_CarePlan
Usage: #example
// * id = "3512b500-6b4e-47dd-9c28-0bdf01077a8a"
* meta.lastUpdated = "2024-12-10T14:28:43.909+00:00"
* status = #active
* intent = #plan
* subject.reference = "Patient/Patient-2"

Instance: Condition-1
InstanceOf: PH_Condition
Usage: #example
* meta.lastUpdated = "2024-07-18T07:25:23.888+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
* extension.valueReference = Reference(Organization/Organization-Lucena-General-Hospital)
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $ConditionVerificationStatusCS#ClinicallyCompatible "Clinically compatible"
* category = $condition-category#problem-list-item "Problem List Item"
* severity = $sct#24484000 "Severe"
* code = $sct#44054006 "Diabetes mellitus type 2 (disorder)"
* code.text = "Diabetes mellitus type 2"
* subject = Reference(Patient/Patient-2)
* onsetDateTime = "2024-07-18T08:00:00+08:00"
* recordedDate = "2024-07-18T08:00:00+08:00"

Instance: Condition-2
InstanceOf: PH_Condition
Usage: #example
* meta.lastUpdated = "2024-12-10T14:28:43.82+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
// * clinicalStatus = $ClinicalStatusValueSet#active
* verificationStatus = $ConditionVerificationStatusCS#Confirmed "Confirmed"
* code = $ConditionCodeValueSet#D123 "Diabetes Mellitus"
* subject = Reference(Patient/Patient-3)
* onsetDateTime = "2024-12-01T12:00:00+08:00"

Instance: Diagnostic-Report-1
InstanceOf: DiagnosticReport
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:31.836+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-DiagnosticReport"
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code = $loinc#LP16737-6 "Rabies virus"
* code.text = "Rabies Virus"
* subject = Reference(Patient/Patient-3)
* specimen = Reference(Specimen/Specimen-Saliva)
* result = Reference(Observation/Observation-Rabies-Antibody-Test)
* conclusion = "Positive for rabies virus antibodies"
* conclusionCode = $sct#14168008 "Rabies"

Instance: Encounter-1
InstanceOf: PH_Encounter
Usage: #example
// * meta.lastUpdated = "2024-07-18T06:52:48.696+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[=].valueInteger = 30
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeMonths"
* extension[=].valueInteger = 0
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeDays"
* extension[=].valueInteger = 0
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientClassification"
* extension[=].valueString = "Inpatient"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Interviewer"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Santos"
* extension[=].valueHumanName.given = "Maria"
* extension[=].valueHumanName.prefix = "Ms."
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/InvestigatorName"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Reyes"
* extension[=].valueHumanName.given = "Juan"
* extension[=].valueHumanName.prefix = "Dr."
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateInterview"
* extension[=].valueDateTime = "2024-07-18T08:00:00+08:00"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateInvestigation"
* extension[=].valueDateTime = "2024-07-19T10:00:00+08:00"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ReporterName"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Dela Cruz"
* extension[=].valueHumanName.given = "Luis"
* extension[=].valueHumanName.prefix = "Mr."
* identifier.use = #official
* identifier.type = $v2-0203#FI "Philhealth code"
* identifier.system = "https://nhdr.gov.ph/fhir/philHealthID"
* identifier.value = "PH123456"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#183452005 "General examination of patient (procedure)"
* subject = Reference(Patient/Patient-1)
* period.start = "2024-07-18T08:00:00+08:00"
* period.end = "2024-07-18T10:00:00+08:00"
* location.location = Reference(Location/Location-General-Hospital-Room-101) "General Hospital Room"
// * location.status = #completed

Instance: Encounter-2
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-10T21:58:34.129+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-AFP
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.499+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#FLACCIDPARALYSIS "Flaccid Paralysis Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-COVID
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.628+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* identifier.type.coding.code = #COVID
* identifier.type.text = "COVID Kaya issued number"
* identifier.value = "CV567432"
* type = $v3-ActCode#COVIDENC "COVID-19 Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Diphteria
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:04.041+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#DIPENC "Diphtheria Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-HFMD
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.468+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#HFMDENC "Hand, Foot, and Mouth Disease Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Influenza
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.428+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#FLUENC "Influenza Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Leptospirosis
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:32.378+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#LEPTENC "Leptospirosis Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Malaria
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:21:00.067+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#MALENC "Malaria Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Meningococcal
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.763+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#MENINGENC "Meningococcal Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Neonatal-Tetanus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.2+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#TETNEOENC "Neonatal Tetanus Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Non-Neonatal-Tetanus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.506+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#TETNNENC "Non-Neonatal Tetanus Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Pertussis
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:50.083+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#PERTENC "Pertussis Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Rotavirus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:08.573+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#ROTAENC "Rotavirus Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Immunization-Rabies
InstanceOf: PH_Immunization
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:31.924+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Immunization"
* status = #completed
* vaccineCode = $cvx#40 "Rabies vaccine, for intramuscular injection"
* vaccineCode.text = "Rabies Vaccine"
* patient = Reference(Patient/Patient-1)
* occurrenceDateTime = "2024-12-10"
* note.text = "Rabies vaccine administered as post-exposure prophylaxis."

Instance: Location-General-Hospital-Room-101
InstanceOf: PH_Location
Usage: #example
// * meta.lastUpdated = "2024-07-18T06:57:37.403+00:00"
* name = "General Hospital Room 101"
// * physicalType = $location-physical-type#ro "Room"
// * address.use = #work
* address.line = "1234 Health St."
// * address.city = "Health City"
// * address.state = "Health State"
* address.postalCode = "12345"
* address.country = "PH"

Instance: Medication-Amoxicillin
InstanceOf: PH_Medication
Usage: #example
* meta.lastUpdated = "2024-12-10T21:44:29.157+00:00"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateUpdated"
* extension[=].valueDateTime = "2024-12-10T20:00:00.157+00:00"
// * code.text = "Amoxicillin 500mg Capsule"

Instance: MedicationAdministration-Amoxicillin
InstanceOf: PH_MedicationAdministration
Usage: #example
* meta.lastUpdated = "2024-07-18T07:54:59.254+00:00"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
* extension[=].valueReference = Reference(Organization/Organization-Lucena-General-Hospital)
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtEncounter"
* extension[=].valueReference = Reference(Encounter/Encounter-Pertussis)
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/RecordedDate"
* extension[=].valueDateTime = "2024-07-18T10:00:00+08:00"
* status = #completed
// * medicationCodeableConcept = $rxnorm#860975 "Amoxicillin 250mg/5ml Suspension"
// * medicationCodeableConcept.text = "Amoxicillin 250mg/5ml Suspension"
* medicationReference = Reference(Medication/Medication-Amoxicillin)
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-07-18T09:00:00+08:00"
* reasonCode = $sct#65363002 "Infection"
* reasonCode.text = "Infection"
* dosage.text = "5 mL orally three times a day"
* dosage.site = $sct#181220002 "Oral cavity"
* dosage.site.text = "Oral cavity"
* dosage.route = $sct#26643006 "Oral route"
* dosage.route.text = "Oral route"
* dosage.method = $sct#421521009 "Swallow"
* dosage.method.text = "Swallow"
* dosage.dose = 5 'mL' "mL"
* dosage.rateRatio.numerator = 5 'mL' "mL"
* dosage.rateRatio.denominator = 1 'd' "d"

Instance: MedicationDispense-Completed
InstanceOf: PH_MedicationDispense
Usage: #example
* meta.lastUpdated = "2024-12-10T21:44:29.21+00:00"
* status = #completed
* medicationReference = Reference(Medication-Amoxicillin)

Instance: Observation-Glucose-in-Blood
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-07-14T08:14:50.38+00:00"
* identifier.use = #official
* identifier.system = "http://www.bmc.nl/zorgportal/identifiers/observations"
* identifier.value = "6323"
* status = #final
* code = $loinc#15074-8 "Glucose [Moles/volume] in Blood"
* subject = Reference(Patient/Patient-1) "P. van de Heuvel"
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
// * issued = "2013-04-03T15:30:10+01:00"
* performer = Reference(Practitioner/Practitioner-1) "A. Langeveld"
* valueQuantity = 6.3 'mmol/L' "mmol/l"
* interpretation = $v3-ObservationInterpretation#H "High"
// * referenceRange.low = 3.1 'mmol/L' "mmol/l"
// * referenceRange.high = 6.2 'mmol/L' "mmol/l"

Instance: Observation-AFP
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.453+00:00"
* status = #final
* code = $loinc#80358-3 "Observation of Acute Flaccid Paralysis"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits sudden onset of flaccid paralysis in one limb."

Instance: Observation-Rabies-Antibody-Test
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:32.041+00:00"
* status = #final
* code = $loinc#29965-3 "Rabies virus antibody test"
* code.text = "Rabies Virus Antibody Test Result"
* valueString = "Positive for rabies virus antibodies"

Instance: Observation-COVID
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.578+00:00"
* status = #final
* code = $loinc#94500-6 "Observation of COVID-19 Symptoms"
* subject = Reference(Patient/Patient-2)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, cough, difficulty breathing, and loss of taste or smell."

Instance: Observation-Diphtheria
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:03.986+00:00"
* status = #final
* code = $loinc#1234-5 "Observation of Diphtheria Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits sore throat, swollen neck, and hoarseness of voice."

Instance: Observation-HFMD
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.418+00:00"
* status = #final
* code = $loinc#80386-9 "Observation of Hand, Foot, and Mouth Disease Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, mouth sores, and rashes on hands and feet."

Instance: Observation-Influenza
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.385+00:00"
* status = #final
* code = $loinc#LA6576-8 "Observation of Influenza Symptoms"
* subject = Reference(Patient/Patient-2)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits high fever, persistent cough, and difficulty breathing."

Instance: Observation-Leptospirosis
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:32.074+00:00"
* status = #final
* code = $loinc#80347-6 "Observation of Leptospirosis Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, muscle pain, and recent exposure to floodwaters."

Instance: Observation-Malaria
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:20:59.977+00:00"
* status = #final
* code = $loinc#80375-2 "Observation of Malaria Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, chills, and recent travel to malaria-endemic areas."

Instance: Observation-Measles
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T03:35:52.056+00:00"
* status = #final
* subject = Reference(Patient/Patient-2)
* code = #10582-5

Instance: Observation-Meningococcal
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.722+00:00"
* status = #final
* code = $loinc#80385-1 "Observation of Meningococcal Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits sudden fever, headache, stiff neck, and purpuric rash."

Instance: Observation-Neonatal-Tetanus
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.146+00:00"
* status = #final
* code = $loinc#80380-2 "Observation of Neonatal Tetanus Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Infant exhibits muscle stiffness, difficulty feeding, and history of unhygienic delivery."

Instance: Observation-Non-Neonatal-Tetanus
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.457+00:00"
* status = #final
* code = $loinc#80384-4 "Observation of Tetanus Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits muscle stiffness and spasms following a recent injury with exposure to potentially contaminated objects."

Instance: Observation-Pertussis
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:50.028+00:00"
* status = #final
* code = $loinc#12345-6 "Observation of Pertussis Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits prolonged coughing spells and vomiting after coughing."

Instance: Observation-Rotavirus
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:08.505+00:00"
* status = #final
* code = $loinc#80360-9 "Observation of Rotavirus Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits acute gastroenteritis with frequent loose stools."

Instance: Observation-Rubella
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T03:35:52.428+00:00"
* status = #final
* code = $loinc#20458-6 "Rubella virus IgG Ab [Interpretation] in Serum"
* subject = Reference(Patient/Patient-2)

// Instance: Observation-SARI
// InstanceOf: PH_Observation
// Usage: #example
// * meta.lastUpdated = "2024-12-12T03:37:36.595+00:00"
// * status = #final
// * subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)

Instance: Organization-1
InstanceOf: PH_Organization
Usage: #example
// * id = "12345"
* meta.lastUpdated = "2024-07-18T06:40:29.709+00:00"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 734-677-7777"
* telecom[+].system = #fax
* telecom[=].value = "(+1) 734-677-6622"
* telecom[+].system = #email
* telecom[=].value = "organization@org.com"

Instance: Organization-2
InstanceOf: PH_Organization
Usage: #example
* meta.lastUpdated = "2024-07-18T06:47:13.861+00:00"
* extension.url = "https://example.org/fhir/StructureDefinition/HeadName"
* extension.valueHumanName.family = "Quezon"
* extension.valueHumanName.given[0] = "Mark"
* extension.valueHumanName.given[+] = "John"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 734-677-7777"
* telecom[+].system = #fax
* telecom[=].value = "(+1) 734-677-6622"
* telecom[+].system = #email
* telecom[=].value = "organization@org.com"

Instance: Organization-Lucena-General-Hospital
InstanceOf: PH_Organization
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:32.005+00:00"
* type = $organization-type#prov "Healthcare Provider"
* name = "Lucena General Hospital"

Instance: Patient-1
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-07-12T14:07:16.25+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
// * language = #en-US
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH12345"
* active = true
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/IndigenousGroup"
* extension[=].valueCodeableConcept.coding[0] = $IndigenousGroupCS#Kalinga "Kalinga"
* extension[=].valueCodeableConcept.text = "Kalinga"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/IndigenousPeople"
* extension[=].valueBoolean = true
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Occupation"
* extension[=].valueCodeableConcept.coding[0] = https://psa.gov.ph/classification/psoc/unit#0110 "Commissioned Armed Forces Officers"
* extension[=].valueCodeableConcept.text = "Commissioned Armed Forces Officers"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Occupation"
* extension[=].valueInteger = 10
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Religion"
* extension[=].valueCode = #1009 "Baptist"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/FatherName"
* extension[=].valueHumanName.family = "Smith"
* extension[=].valueHumanName.given[0] = "John"
* extension[=].valueHumanName.given[=] = "Adams"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Race"
* extension[=].valueCodeableConcept.coding[0] = https://terminology.hl7.org/6.2.0/CodeSystem-v3-Race.html#2036-2 "Filipino"
* extension[=].valueCodeableConcept.text = "Filipino"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/MemberType"
* extension[=].valueCodeableConcept.coding[0] = https://nhdr.gov.ph/fhir/CodeSystem/MemberTypeCS#MM "Member"
* extension[=].valueCodeableConcept.text = "Member"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/MemberCategory"
* extension[=].valueCodeableConcept.coding[0] = https://nhdr.gov.ph/fhir/CodeSystem/MemberCategoryCS#90 "SOLO PARENT"
* extension[=].valueCodeableConcept.text = "SOLO PARENT"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension[=].valueCode = #M "Male"
* name.family = "Smith"
* name.given = "Avery"
* telecom.system = #phone
* telecom.value = "9121542"
* deceasedBoolean = false
* address.line = "137 Nowhere Street"
* address.district = "District III"
* address.postalCode = "1110"
* address.country = "Philippines"
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Region"
* address.extension[=].valueCoding = https://nhdr.gov.ph/fhir/CodeSystem/PSGCCS#1 "REGION I"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[=].valueCoding = https://nhdr.gov.ph/fhir/CodeSystem/PSGCCS#1028 "ILOCOS NORTE"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[=].valueCoding = https://nhdr.gov.ph/fhir/CodeSystem/PSGCCS#102801 "ADAMS"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[=].valueCoding = https://nhdr.gov.ph/fhir/CodeSystem/PSGCCS#102801001 "ADAMS"
* maritalStatus.coding = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#W "Widowed"
* maritalStatus.text = "Widowed"
* birthDate = 1990-12-15

Instance: Patient-2
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-07-18T04:48:00.401+00:00"
// * identifier[0].use = #PhilhealthID
// * identifier[=].value = "12345"
// * identifier[+].use = #PhilsysID
// * identifier[=].value = "678910"
* identifier.type.coding.code = #DL
* identifier.type.text = "Driver's License"
* identifier.value = "DL12345"
* active = true
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Rizal"
// * name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Pedro"
* name.given[+] = "Santos"
* telecom[0].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[+].system = #phone
* telecom[=].value = "(0939) 929 3814"
// * telecom[=].use = #mobile

Instance: Patient-3
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-12-10T01:35:07.723+00:00"
* identifier.type.coding.code = #PDD
* identifier.value = "PDD12435"
// * name.use = #official
* name.family = "Doe"
* name.given[0] = "John"
* name.given[+] = "A."
* telecom[0].system = #phone
* telecom[=].value = "+639171234567"
// * telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "john.doe@example.com"
// * telecom[=].use = #home
// * gender = #male
* birthDate = "1990-01-01"
// * address.use = #home
* address.line = "123 Barangay Street"
// * address.city = "Quezon City"
* address.district = "District 1"
// * address.state = "Metro Manila"
* address.postalCode = "1100"
* address.country = "PH"
* maritalStatus = $v3-MaritalStatus#M "Married"
// * contact.relationship = ContactRelationshipVS#C "Emergency Contact"
* contact.name.family = "Doe"
* contact.name.given = "Jane"
* contact.telecom.system = #phone
* contact.telecom.value = "+639181234567"
* contact.telecom.use = #mobile
* contact.address.line = "456 Barangay Lane"
// * contact.address.city = "Pasig City"
// * contact.address.state = "Metro Manila"
* contact.address.postalCode = "1600"
* contact.address.country = "PH"
// * communication[0].language = urn:ietf:bcp:47#en "English"
// * communication[=].preferred = true
// * communication[+].language = urn:ietf:bcp:47#tl "Tagalog"
// * communication[=].preferred = false

Instance: Person-1
InstanceOf: PH_Person
Usage: #example
* meta.lastUpdated = "2024-07-18T07:21:35.241+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #male
// * name.use = #official
* name.family = "Garcia"
* name.given = "Juan"
// * name.prefix = "Mr."
* telecom[0].system = #phone
* telecom[=].value = "+1234567890"
// * telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "juan.garcia@example.org"
// * telecom[=].use = #home
* birthDate = "1990-01-01"
// * address.use = #home
* address.line = "1234 Health St."
// * address.city = "Health City"
// * address.state = "Health State"
* address.postalCode = "12345"
* address.country = "PH"
* link.target = Reference(Patient/Patient-3)

Instance: Person-2
InstanceOf: PH_Person
Usage: #example
* meta.lastUpdated = "2024-12-10T08:52:07.402+00:00"
// * name.use = #official
* name.family = "Doe"
* name.given = "Jane"
* birthDate = "1995-05-15"

Instance: Practitioner-1
InstanceOf: PH_Practitioner
Usage: #example
* meta.lastUpdated = "2024-07-18T06:13:47.993+00:00"
* identifier.use = #PRC
* identifier.value = "12345"
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Rizal"
// * name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Pedro"
* name.given[+] = "Santos"
* telecom[0].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[+].system = #phone
* telecom[=].value = "(0939) 929 3814"
// * telecom[=].use = #mobile

Instance: Practitioner-2
InstanceOf: PH_Practitioner
Usage: #example
* meta.lastUpdated = "2024-12-09T23:18:00.365+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #Male
* identifier.use = #PRC
* identifier.value = "12345"
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Rizal"
// * name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Pedro"
* name.given[+] = "Santos"
* telecom[0].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[+].system = #phone
* telecom[=].value = "(0939) 929 3814"
// * telecom[=].use = #mobile

Instance: PractitionerRole-Physician
InstanceOf: PH_PractitionerRole
Usage: #example
* meta.lastUpdated = "2024-07-18T06:26:14.058+00:00"
* code = $v2-0286#Physician

Instance: Procedure-Surgical
InstanceOf: PH_Procedure
Usage: #example
* meta.lastUpdated = "2024-07-18T07:30:27.458+00:00"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Organization"
* extension[=].valueReference = Reference(Organization/Organization-Lucena-General-Hospital)
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/RecordedDate"
* extension[=].valueDateTime = "2024-07-18T10:00:00+08:00"
// * extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/IllnessClass"
// * extension[=].valueCodeableConcept = $illness-class-codes#D123 "Diabetes mellitus type 2"
// * extension[=].valueCodeableConcept.text = "Diabetes mellitus type 2"
* status = #completed
* category = $sct#387713003 "Surgical procedure"
* code = $sct#80146002 "Appendectomy"
* code.text = "Appendectomy"
* subject = Reference(Patient/Patient-3)
* performedDateTime = "2024-07-18T09:00:00+08:00"

Instance: Procedure-Appendectomy
InstanceOf: PH_Procedure
Usage: #example
* meta.lastUpdated = "2024-12-10T14:28:43.739+00:00"
* status = #completed
* code = $ProcedureCodeValueSet#12345 "Appendectomy"
* subject = Reference(Patient/Patient-1)
* performedPeriod.start = "2024-12-05T08:00:00+08:00"

Instance: QuestionnaireResponse-1
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T08:38:43.941+00:00"
// * questionnaire = "http://example.org/fhir/Questionnaire/MemberCheck"
* status = #completed
// * subject = Reference(Person/Person-1)
// * authored = "2024-12-10T12:00:00Z"
* item.linkId = "1"
// * item.text = "Person is the member?"
* item.answer.valueBoolean = true

Instance: QuestionnaireResponse-2
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T13:41:21.79+00:00"
* status = #completed
// * subject = Reference(Person/Person-2)
* item.linkId = "philhealth-member"
// * item.text = "Is a PhilHealth member?"
* item.answer.valueBoolean = true

Instance: QuestionnaireResponse-3
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T21:58:33.912+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-1)

Instance: QuestionnaireResponse-4
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T08:52:07.638+00:00"
// * questionnaire = "http://example.org/fhir/Questionnaire/MemberCheck"
* status = #completed
// * subject = Reference(Patient/Patient-2)
// * authored = "2024-12-10T12:00:00Z"
// * author = Reference(Organization/Organization-2)
* item.linkId = "1"
// * item.text = "Patient is the member?"
* item.answer.valueBoolean = true

Instance: QuestionnaireResponse-5
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T13:48:50.596+00:00"
* status = #completed
// * subject = Reference(Person/Person-1)
* item.linkId = "philhealth-member"
// * item.text = "Is a PhilHealth member?"
* item.answer.valueBoolean = true

Instance: QuestionnaireResponse-6
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T21:44:28.939+00:00"
// * questionnaire = "https://example.org/Questionnaire/Example4"
* status = #completed
// * subject = Reference(Patient/Patient-3)

Instance: QuestionnaireResponse-7
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T21:32:57.562+00:00"
// * questionnaire = "https://example.org/Questionnaire/Example2"
* status = #completed
// * subject = Reference(Patient/Patient-1)
// * authored = "2024-12-11T12:00:00Z"
// * author = Reference(Practitioner/Practitioner-1)

Instance: QuestionnaireResponse-8
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T14:28:44.132+00:00"
* status = #completed
* item.linkId = "referral"
// * item.text = "Was the patient referred by another HCI?"
* item.answer.valueBoolean = true

Instance: QuestionnaireResponse-9
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-10T21:32:57.497+00:00"
// * questionnaire = "https://example.org/Questionnaire/Example1"
* status = #completed
// * subject = Reference(Patient/Patient-1)
// * authored = "2024-12-11T12:00:00Z"
// * author = Reference(Practitioner/Practitioner-2)

Instance: QuestionnaireResponse-AFP
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.406+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-1)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Has the patient received recent vaccinations?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Was the patient recently exposed to any infectious diseases?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-COVID
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.519+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-2)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Does the patient have a fever, cough, or difficulty breathing?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Has the patient been in close contact with a confirmed COVID-19 case?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Has the patient experienced loss of taste or smell?"
* item[=].answer.valueBoolean = true

Instance: QuestionnaireResponse-Diphtheria
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:03.938+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-3)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Has the patient reported symptoms of sore throat or difficulty breathing?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Has the patient experienced swelling in the neck or hoarseness of voice?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Was the patient exposed to anyone diagnosed with diphtheria?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-HFMD
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.375+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-1)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Does the patient have a fever and sores in the mouth?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Are there rashes or blisters on the hands, feet, or buttocks?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Has the patient been in close contact with another case of HFMD?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-Influenza
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.319+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-2)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Does the patient have a history of recent travel to high-risk areas?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Has the patient experienced fever, cough, or difficulty in breathing?"
* item[=].answer.valueBoolean = true

Instance: QuestionnaireResponse-Leptospirosis
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:32.026+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-3)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Has the patient been exposed to floodwaters or contaminated water sources?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Has the patient experienced symptoms like fever, muscle pain, or headache?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Has the patient reported jaundice, reduced urine output, or respiratory distress?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-Malaria
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:20:59.925+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-1)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Has the patient traveled to malaria-endemic areas recently?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Has the patient experienced fever, chills, or night sweats?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Has the patient experienced any symptoms like vomiting, diarrhea, or headaches?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-Meningococcal
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.669+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-2)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Is the patient experiencing sudden fever, headache, or stiff neck?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Has the patient been in close contact with a confirmed meningococcal case?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "4"
// * item[=].text = "Are there signs of rash or purpura on the patient?"
* item[=].answer.valueBoolean = true

Instance: QuestionnaireResponse-NeonatalTetanus
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.088+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-3)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Was the mother immunized with tetanus toxoid during pregnancy?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "3"
// * item[=].text = "Was the delivery conducted under unhygienic conditions?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Is the infant experiencing muscle stiffness or difficulty feeding?"
* item[=].answer.valueBoolean = true

Instance: QuestionnaireResponse-NonNeonatalTetanus
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.414+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-1)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Was the patient injured recently with potential exposure to contaminated objects?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Is the patient experiencing muscle stiffness or spasms?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "4"
// * item[=].text = "Has the patient been vaccinated against tetanus?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-Pertussis
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:49.978+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-2)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Has the patient reported prolonged coughing spells?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Does the patient have a history of recent exposure to someone diagnosed with pertussis?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "4"
// * item[=].text = "Is the patient experiencing symptoms like vomiting after coughing or difficulty breathing?"
* item[=].answer.valueBoolean = true

Instance: QuestionnaireResponse-Rotavirus
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:08.437+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-3)
* item[0].linkId = "1"
// * item[=].text = "Has the specimen been sent to RITM?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "2"
// * item[=].text = "Has the patient experienced diarrhea or vomiting?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "3"
// * item[=].text = "Is the patient currently dehydrated?"
* item[=].answer.valueBoolean = false

Instance: QuestionnaireResponse-SARI
InstanceOf: PH_QuestionnaireResponse
Usage: #example
* meta.lastUpdated = "2024-12-12T03:37:36.545+00:00"
* status = #completed
// * subject = Reference(Patient/Patient-1)
* item.linkId = "1"
// * item.text = "Has the specimen been sent to RITM?"
* item.answer.valueBoolean = true

Instance: Service-Request-Fluid-Analysis
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-11T04:44:42.475+00:00"
* status = #active
* intent = #order
// * code = $loinc#90381-3 "CSF culture for pathogens"
// * code.text = "Cerebrospinal Fluid Analysis for AMES"
* subject = Reference(Patient/Patient-2)
// * requester = Reference(Practitioner/Dr-Maria-Reyes) "Dr. Maria Reyes"
// * specimen = Reference(Specimen/7994709b-4350-4f91-b06f-4da782993a8b)

Instance: Service-Request-AFP
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.353+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-3)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#441861000000107 "Acute Flaccid Paralysis"

Instance: Service-Request-COVID
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.472+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-1)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#840539006 "COVID-19"

Instance: Service-Request-Diphtheria
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:03.891+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-3)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#302830006 "Diphtheria"

Instance: Service-Request-HFMD
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.329+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-2)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#703937007 "Hand, foot and mouth disease"

Instance: Service-Request-Influenza
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.254+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-3)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#6142004 "Influenza"

Instance: Service-Request-Leptospirosis
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:31.966+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-1)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#3212001 "Leptospirosis"

Instance: Service-Request-Malaria
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:20:59.856+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-2)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#386661006 "Malaria"

Instance: Service-Request-Measles
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T03:35:51.436+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-3)

Instance: Service-Request-Meningococcal
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.579+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-1)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#19039008 "Meningococcal infection"

Instance: Service-Request-Neonatal-Tetanus
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.022+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-2)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#103279000 "Neonatal tetanus"

Instance: Service-Request-Non-Neonatal-Tetanus
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.352+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-3)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#76902006 "Tetanus (non-neonatal)"

Instance: Service-Request-Pertussis
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:49.922+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-1)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#27836007 "Pertussis"

Instance: Service-Request-Rotavirus
InstanceOf: PH_ServiceRequest
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:07.569+00:00"
* status = #active
* intent = #order
* subject = Reference(Patient/Patient-2)
// * authoredOn = "2024-12-11T15:00:00Z"
// * requester = Reference(Practitioner/4140bf45-3fc0-49b7-87da-34ab57f4bbd7)
// * reasonCode = $sct#123456000 "Rotavirus Infection"

Instance: Specimen-Saliva
InstanceOf: PH_Specimen
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:31.874+00:00"
// * status = #available
* type = $sct#122555007 "Saliva specimen"
* type.text = "Saliva specimen"
* subject = Reference(Patient/Patient-3)
* note.text = "Saliva specimen collected for rabies virus testing."