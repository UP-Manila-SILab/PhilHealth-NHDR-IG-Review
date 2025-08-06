<html>
    <style>
        table, thead, td{
            border:2px solid #ccc; 
            border-collapse:collapse; 
        }
        table {
            table-layout: fixed;
            width: 100%;
        }
        table th:nth-child(4) { width: 10%; }
        table th:nth-child(5) { width: 10%; }
    </style>
    <ul class="nav nav-tabs">
        <li><a href="CF3.html">Content</a></li>
        <li class="active"><a href="#">Mappings</a></li>
        <li><a href="CF3-json.html">Sample JSON Bundles</a></li>
    </ul>
</html>

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>ValueSet <br><i>(if any)</i></center> |
|:---------|:---------|:--------|:--------:|:----------:|
| **Part I - Patient's Clinical Record** |||||
| PhilHealth Accreditation No. (PAN) - Institutional Health Care Provider | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.identifier | Identifier | 0..* |
| Name of Patient (Last Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.family | string | 0..1 | --- |
| Name of Patient (First Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.given[**0**] | string | 0..* | --- |
| Name of Patient (Middle Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.given[**1**] | string | 0..* | --- |
| Chief Complaint / Reason for Admission | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | 0..* |
| <center>►</center> | Encounter.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..* | --- |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Date Admitted (MM-DD-YYYY)(Time Admitted HH:MM(AM/PM)) | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html))| 0..* |
| <center>►</center> | Encounter.period.start | dateTime | 0..1 | --- |
| Date Discharged (MM-DD-YYYY)(Time Discharge HH:MM)(AM/PM) | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html))| 0..* |
| <center>►</center> | Encounter.period.end | dateTime | 0..1 | --- |
| Brief History of Present Illness / OB History | Claim.diagnosis.diagnosisReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 1..1 |
| <center>►</center> | Condition.note | Annotation | 0..* | --- |
| General Survey | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Vital Signs (BP) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Vital Signs (CR) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Vital Signs (RR) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Vital Signs (Temperature) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Abdomen | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| HEENT | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| GU (IE) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Chest / Lungs | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Skin / Extremities | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| CVS | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Neuro Examination | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | 0..1 | --- |
| Course in the Wards (attach additional sheets if necessary) | Claim.supportingInfo.valueReference | Reference([PH_ClinicalImpression](StructureDefinition-PH-ClinicalImpression.html)) | 1..1 |
| <center>►</center> | ClinicalImpression.description | string | --- | --- |
| Pertinent Laboratory and Diagnostic Findings: **(CBC, Urinalysis, Fecalysis, X-ray, Biopsy, etc.)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.code | CodeableConcept | --- | --- |
| **Pertinent Laboratory** and Diagnostic Findings: (CBC, Urinalysis, Fecalysis, X-ray, Biopsy, etc.) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 1..1 |
| <center>►</center> | Observation.valueString | string | --- | --- |
| Pertinent Laboratory and **Diagnostic Findings:** (CBC Urinalysis, Fecalysis, X-ray, Biopsy, etc.) | Claim.supportingInfo.valueReference | Reference([PH_DiagnosticReport](StructureDefinition-PH-DiagnosticReport.html)) | 1..1 |
| <center>►</center> | DiagnosticReport.conclusion | string | --- | --- |
| Disposition on Discharge (Check notes for options) | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | 0..* |
| <center>►</center> | Encounter.hospitalization.dischargeDisposition | CodeableConcept | --- | --- |
| **Part II - Maternity Care Package** |||||
| 1. Initial Prenatal Consultation (MM-DD-YYYY) | Claim.item.servicedDate | date | --- | --- |
| 2. Clinical History and Physical Examination: a. Vital signs are normal | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 |
| <center>►</center> | Observation.interpretation | CodeableConcept | --- | --- |
| 2. Clinical History and Physical Examination: b. Ascertain the present Pregnancy is low-Risk | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 |
| <center>►</center> | Observation.valueBoolean <br>~~valueCodeableConcept~~ | boolean | --- | --- | 
| 2. Clinical History and Physical Examination: c. Menstrual History LMP (MM-DD-YYYY) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 |
| <center>►</center> | Observation.valueDateTime | dateTime | --- | --- |
| 2. Clinical History and Physical Examination: d. Menstrual History (Age of Menarche) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html))| 0..1 |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. Obstetric History (G) | ClaimsupportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. Obstetric History (P) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. Obstetric History (P)**[T]** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. Obstetric History (P)**[P]** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. Obstetric History (P)**[A]** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. Obstetric History (P)**[L]** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 3. Obstetric risk factors (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | |
| 4. Medical / Surgical risk factors (Check notes for options) | Claim.diagnosis.diagnosisCodeableConcept | CodeableConcept | 1..1 | |
| 5. Admitting Diagnosis | Claim.diagnosis.diagnosisReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 1..1 | --- |
| <center>►</center> | Observation | --- | | |
| 6. Orientation to MCP / Availment of Benefits (Yes / No) | Questionnaire.item.text | string | 0..1 | --- |
| 6. Expected date of delivery (MM-DD-YYYY) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.effectiveDateTime | dateTime | 0..1 | --- |
| 7. Prenatal Consultation No. | Claim.item.sequence | positiveInt | 1..1 | --- |
| 7. Date of visit (MM-DD-YYYY) | Claim.item.servicedDate | date | 0..1 | --- |
| 7. AOG in weeks | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 7.1 Weight | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 7.2 Cardiac Rate | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 7.3 Respiratory Rate | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 7.4 Blood Pressure | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 7.5 Temperature | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| **Part II - Maternity Care Package (Delivery Outcome)** | | | | |
| 8. Date of Delivery (MM-DD-YYYY)(AM/PM)[HH:MM] | Claim.item.servicedDate | date | 0..1 | --- |
| 9. Maternal Outcome (Obstetric Index) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 9. Pregnancy Uterine (AOG by LMP) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 9. Pregnancy Uterine (Manner of Delivery) | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 9. Pregnancy Uterine (Presentation) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | |
| 10. Birth Outcome (Fetal Outcome) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 10. Birth Outcome (Sex) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | |
| 10. Birth Outcome (Birth Weight (grm)) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.valueInteger | integer | | |
| 10. Birth Outcome (APGAR Score) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | | 
| <center>►</center> | Observation.valueInteger | integer | | |
| 11. Scheduled Postpartum follow-up consultation 1 week after delivery | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.period.start | dateTime | | |
| 12. Date of Discharge | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.period.end | dateTime | | |
| **Part II - Maternity Care Package (Postpartum Care)** | | | | |
| 13. Perineal wound care (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 13. Perineal wound care (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 14. Signs of Maternal Postpartum Complications (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 14. Signs of Maternal Postpartum Complications (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 15a. Counselling and Education (Breastfeeding and Nutrition) (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 15a. Counselling and Education (Breastfeeding and Nutrition) (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 15b. Counselling and Education (Family Planning) (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 15b. Counselling and Education (Family Planning) (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 16. Provided family planning service to patient (as requested by patient) (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 16. Provided family planning service to patient (as requested by patient) (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 17. Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.) (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 17. Refereed to partner physician for Voluntary Surgical Sterilization (as requested by pt.) (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 18. Schedule the next postpartum follow-up (checkbox) | Questionnaire.item.text | string | 0..1 | --- |
| 18. Schedule the next postpartum follow-up (Remarks) | Questionnaire.item.text | string | 0..1 | --- |
| 19. Signature Type | Provenance.signature.type | 1..* | Coding | --- |
| 19. Signature Over **Printed Name** of Attending Physician / Midwife | Provenance.signature.who | Reference([PH_Practitioner](StructureDefinition-PH-Practitioner.html)) | 1..1 | --- |
| <center>►</center> | Practitioner.name | HumanName | --- | --- |
| 19. **Signature** Over Printed Name of Attending Physician / Midwife | Provenance.signature.data | 0..1 | --- |
| 19. Date Signed | Provenance.signature.when | instant | 1..1 | --- |