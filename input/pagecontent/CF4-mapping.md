{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="CF4.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="CF4-json.html">Sample JSON Bundles</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>ValueSet <br><i>(if any)</i></center> |
|:---------|:---------|:--------|:--------:|:----------:|
| Series # | Claim.identifier | Identifier | 0..* | |
| **Part I - Health Care Institution (HCI) Information** | | | | |
| Name of HCI | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.name | string | 0..1 | |
| Accreditation Number | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.identifier | Identifier | | |
| Address of HCI (Bldg. No. and Name/Lot/Block/Street) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.line | string | 0..* | |
| Address of HCI (Subdivision/Village) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.line | string | 0..* | |
| Address of HCI (**Barangay**/City/Municipality) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.extension:barangay | Coding | 0..1 | [Barangay](ValueSet-BarangayVS.html) |
| Address of HCI (Barangay/**City/Municipality**) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.extension:cityMunicipality | Coding | 0..1 | [CityMunicipality](ValueSet-CityVS.html) |
| Address of HCI (Province) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.extension:province | Coding | 0..1 | [Province](ValueSet-ProvinceVS.html) |
| Address of HCI (Zip Code) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.postalCode | Coding | 0..1 | |
| **Part II - Patient's Data** | | | | |
| Name of Patient (Last Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.family | string | 0..1 | |
| Name of Patient (First Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.given[**0**] | string | 0..* | Use first instance of `name.given` |
| Name of Patient (Middle Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.given[**1**] | string | 0..* | Use second instance of `name.given` |
| PhilHealth Identification Number (PIN) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.identifier | Identifier | 0..* | |
| Age | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.extension:ageYears | integer | 0..1 | |
| Sex | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.extension:sex | CodeableConcept | 0..1 | |
| Chief Complaint | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..* | |
| <center>►</center> | Observation.valueString | string | 0..1 | |
| Admitting Diagnosis | Claim.diagnosis.diagnosisReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 1..1 | Set `Claim.diagnosis.type` value as 'admitting' |
| <center>►</center> | Condition.code | CodeableConcept | 0..1 | |
| Discharge Diagnosis | Claim.diagnosis.diagnosisReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 1..1 | Set `Claim.diagnosis.type` value as 'discharge'|
| <center>►</center> | Condition.code | CodeableConcept | 0..1 | |
| 1st Case Rate Code | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 2nd Case Rate Code | Claim.item.productOrService | CodeableConcept | 1..1 | |
| Date Admitted (MM-DD-YYYY)(Time Admitted HH:MM)(AM/PM) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.period.start | dateTime | 0..1 | |
| Date Discharged (MM-DD-YYYY)(Time Discharged HH:MM)(AM/PM) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.period.end | dateTime | 0..1 | |
| **Part III - Reason for Admission** | | | | |
| 1. History of Present Illness | Claim.supportingInfo.valueReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 0..1 | |
| <center>►</center> | Condition.note | Annotation | 0..* | |
| 2. Pertinent Past Medical History | Claim.supportingInfo.valueReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 0..1 | |
| <center>►</center> | Condition.note | Annotation | 0..* | |
| 2. OB/GYN History **(G)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History (G) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueInteger | integer | 0..1 | |
| 2. OB/GYN History **(P)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History (P) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueInteger | integer | 0..1 | |
| 2. OB/GYN History (P)**(T)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History (P)**(T) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueInteger | integer | 0..1 | |
| 2. OB/GYN History (P)**(P)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History (P)**(P) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueInteger | integer | 0..1 | |
| 2. OB/GYN History (P)**(A)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History (P)**(A) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueInteger | integer | 0..1 | |
| 2. OB/GYN History (P)**(L)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History (P)**(L) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueInteger | integer | 0..1 | |
| 2. OB/GYN History **LMP** (MM-DD-YYYY) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 2. OB/GYN History LMP (MM-DD-YYYY) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueDateTime | dateTime | 0..1 | |
| 2. OB/GYN History (Checkbox **NA**) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.dataAbsentReason | CodeableConcept | 0..1 | If checked, expected value `not-applicable` or `not-performed` |
| 3. Pertinent Signs and Symptoms on Admission (tick applicable boxes) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.code | CodeableConcept | 1..1 | |
| 4. Referred from another health care institution (HCI) [Yes/No] | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.status | code | 1..1 | |
| 4. if Yes, Specify Reason | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..* | |
| <center>►</center> | Observation.valueString | string | 0..1 | |
| 4. Name of Originating HCI | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center> | Organization.name | string | 0..1 | |
| 5. Physical Examination on Admission (Pertinent Findings per System) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.code | CodeableConcept | 1..1 | |
| 5. **Height (cm)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. Height (cm) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueQuantity | Quantity | 0..1 | |
| 5. **Weight (kg)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. Weight (kg) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueQuantity | Quantity | 0..1 | |
| 5. **General Survey** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. General Survey **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | |
| 5. Vital Signs **(BP)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. Vital Signs **(BP) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueString | string | 0..1 | |
| 5. Vital Signs **(HR)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. Vital Signs **(HR) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueString | string | 0..1 | |
| 5. Vital Signs **(RR)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. Vital Signs **(RR) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueString | string | 0..1 | |
| 5. Vital Signs **(Temp)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. Vital Signs **(Temp) (value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueString | string | 0..1 | |
| 5. **HEENT** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. HEENT (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options:<br>1. Essentially normal<br>2. Icteric sclerae<br>3. Abnormal pupillary reaction<br>4. Pale conjunctivae<br>5. Cervical lymphadenopathy<br>6. Sunken eyeballs<br>7. Dry mucous membrane<br>8. Sunken fontanelle<br>9. Others |
| 5. **CHEST/LUNGS** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. CHEST/LUNGS (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options:<br>1. Essentially normal<br>2. Lump/s over breast(s)<br>3. Asymmetrical chest expansion<br>4. Rales/crackles/rhonchi<br>5. Decreased breath sounds<br>6. Intercostal rib/clavicular retraction<br>7. Wheezes<br>8. Others |
| 5. **CVS** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. CVS (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options: <br>1. Essentially normal<br>2. Irregular rhythm<br>3. Displaced apex beat<br>4. Muffled heart sound<br>5. Heaves and/or thrills<br>6. Murmur<br>7. Pericardial bulge<br>8. Others |
| 5. **ABDOMEN** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. ABDOMEN (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options:<br>1. Essentially normal<br>2. Palpable mass(es)<br>3. Abdominal rigidity<br>4. Tympanitic/dull abdomen<br>5. Abdomen tenderness<br>6. Uterine contraction<br>7. Hyperactive bowel sounds<br>8. Others |
| 5. **GU (IE)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. GU (IE) (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options:<br>1. Essentially normal<br>2. Blood stained in exam finger<br>3. Cervical dilatation<br>4. Presence of abnormal discharge<br>5. Others |
| 5. **SKIN/EXTREMITIES** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. SKIN/EXTREMITIES (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options:<br>1. Essentially normal<br>2. Edema/swelling<br>3. Rashes/petechiae<br>4. Clubbing<br>5. Decreased mobility<br>6. Weak pulses<br>7. Cold clammy skin<br>8. Pale nailbeds<br>9. Cyanosis/mottled skin<br>10. Poor skin tungor<br>11. Others |
| 5. **NEURO-EXAM** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.code | CodeableConcept | 1..1 | |
| 5. NEURO-EXAM (Check notes for options) **(value)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | |
| <center>►</center> | Observation.component.valueCodeableConcept | CodeableConcept | 0..1 | Options:<br>1. Essentially normal<br>2. Abnormal reflex(es)<br>3. Abnormal gait<br>4. Poor/altered memory<br>5. Abnormal position sense<br>6. Poor muscle tone/strength<br>7. Abnormal/decreased sensation<br>8. Poor coordination<br>9. Others |
| **IV. COURSE IN THE WARD** | | | | |
| Date (MM-DD-YYYY) | Claim.supportingInfo.valueReference | Reference([PH_ClinicalImpression](StructureDefinition-PH-ClinicalImpression.html)) | 0..1 | |
| <center>►</center> | ClinicalImpression.effectiveDateTime | dateTime | 0..1 | |
| DOCTOR'S ORDER/ACTION | Claim.supportingInfo.valueReference | Reference([PH_ClinicalImpression](StructureDefinition-PH-ClinicalImpression.html)) | 0..1 | |
| <center>►</center> | ClinicalImpression.description | string | 0..1 | |
| SURGICAL PROCEDURE / RVS CODE (Attach photocopy of OR technique) | Claim.procedure.procedureCodeableConcept | CodeableConcept | 0..1 | |
| **V. DRUGS / MEDICINES** | | | | |
| Generic Name | Claim.item.productOrService | CodeableConcept | 1..1 | |
| Quantity | Claim.item.quantity | SimpleQuantity | 0..1 | |
| Dosage | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | |
| <center>►</center> | MedicationRequest.dosageInstruction.doseAndRate.dose[x] | Range / SimpleQuantity | 0..1 | |
| Route | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | |
| <center>►</center> | MedicationRequest.dosageInstruction.route | CodeableConcept | 0..1 | |
| Frequency | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | |
| <center>►</center> | MedicatioNRequest.dosageInstruction.timing | Timing | 0..1 | |
| Total Cost | Claim.item.net | Money | 0..1 | |
| **Part VI - OUTCOME OF TREATMENT** | | | | |
| OUTCOME OF TREATMENT (Check notes for options) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.hospitalization.dischargeDisposition | CodeableConcept | 0..1 | |
| **Part VII - CERTIFICATION OF HEALTH CARE PROFESSIONAL** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | |
| Signature over **Printed Name** of Attending Health Care Professional | Provenance.signature.who | Reference([PH_Practitioner](StructureDefinition-PH-Practitioner.html)) | 0..1 | |
| <center>►</center> | Practitioner.name | HumanName | 0..1 | |
| **Signature** over Printed Name of Attending Health Care Professional | Provenance.signature.data | base64Binary | 0..1 | |
| Date Signed | Provenance.signature.when | instant | 1..1 | |

---

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Provenance.target | Reference([PH_Claim](StructureDefinition-PH-Claim.html)) | Reference the intact Claim resource |
| Provenance.recorded | instant | Must be system-generated timestamp |
| Provenance.agent.who | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | Reference the intact Organization (Health Facility) resource |
| Organization.name | string | Derive from the referenced Organization resource |
| Claim.status | code | Use expected value 'submitted' |
| Claim.type | CodeableConcept | Use expected value '(~~custom ValueSet to be provided later~~)' |
| Claim.use | code | Use expected value 'claim' |
| Claim.created | dateTime | "Resource creation date", should be the `instant` that the resource was created. |
| Claim.priority | CodeableConcept | Use expected value 'normal' |
| Claim.supportingInfo.sequence | positiveInt | Expected incrementing value per object |
| Claim.supportingInfo.category | CodeableConcept | TBD |
| Claim.diagnosis.sequence | positiveInt | Expected incrementing value per object |
| Claim.procedure.sequence | positiveInt | Expected incrementing value per object |
| Claim.insurance.sequence | positiveInt | Expected incrementing value per object |
| Claim.insurance.focal | boolean | Flag that determines the coverage to be used for the adjudication of this claim. |
| Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | To be resolved |
| Claim.item.sequence | positiveInt | Expected incrementing value per object |
| Questionnaire.status | code | Use expected value 'active' |
| Questionnaire.item.linkId | string | Expected incrementing value per questionnaire item. |
| Questionnaire.item.type | code | Indicates expected data type for the questionnaire item. |
