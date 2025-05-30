### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

* Encounter.reasonCode <span style="color:red">**SHALL**</span> be supported if `Patient Disposition` is *Transferred/Referred*.

* **ICD 10 or RVS Code** field will either be `Condition.code` or `Procedure.code` respectively. If the data fits in `Procedure.code`, you <span style="color:red">**SHOULD**</span> use a separate resource as `Procedure.code` has a maximum cardinality of 1.

---


<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>

<ul class="nav nav-tabs">

<li>
    <a href="use-cases-CF2.html">Content</a>
</li>

<li class="active">
    <a href="#">Mappings</a>
</li>

<li>
    <a href="CF2-json.html">JSON</a>
</li>

</ul>

</html>

| <center>Form Field</center> | <center>FHIR Mapping <i>(profile)</i></center> | <center>Data Type <i>(profile)</i></center> | <center>Cardinality</center> | <center>Length</center> | <center>ValueSet</center> |
|:---------|:------------|:---------|:--------:|:-----------:|:--------:|
| Series #| Claim.identifier| Identifier | 0..1 | 15 | --- |
| **Part I - Health Care Institution (HCI) Information** | | | | | |
| PhilHealth Accreditation No. (PAN) - Institutional Health Care Provider | Organization.identifier | Identifier([OtherIDs](StructureDefinition-OtherID.html)) | 0..1 | --- | #AN "Accreditation Number" |
| Name of Health Care Institution | Organization.name | string | 0..1 | --- | --- |
| Address (Building Number and Street Name) | Organization.address.line | string | 0..* | --- | --- |
| Address (City/Municipality) | Organization.address.extension:cityMunicipality | ~~Coding~~ **String** | 0..* | --- | [City](ValueSet-CityVS.html) |
| Address (Province) | Organization.address.extension:province | ~~Coding~~ **String** | 0..* | --- | [Province](ValueSet-ProvinceVS.html) |
| **Part II - Patient Confinement Information** | | | | | |
| Name of Patient (Last Name) | Patient.name.family | string | 0..* | 60 | --- |
| Name of Patient (First Name) | Patient.name.given[0] | string | 0..* | 60 | --- |
| Name of Patient (Name Extension) | Patient.name.suffix | string | 0..* | 5 | --- |
| Name of Patient (Middle Name) | Patient.name.given[1]  | String | 0..* | 60 | --- |
| Was Patient referred by another HCI? [Yes/No] | QuestionnaireResponse.item.answer.value[x] | boolean | 0..1 | 1 | --- |
| Name of referring Health Care Institution | Encounter.hospitalization.origin | string | 0..1 | 12 | --- |
| Address of referring HCI (Building Number and Street Name) | Organization.address.line | string | 0..* | --- | --- |
| Address of referring HCI (City/Municipality) | Organization.address.extension:cityMunicipality | ~~Coding~~ **String** | 0..* | --- | [City](ValueSet-CityVS.html) |
| Address of referring HCI (Province) | Organization.address.extension:province | ~~Coding~~ **String** | 0..* | --- | [Province](ValueSet-ProvinceVS.html) |
| Address of referring HCI (ZIP Code) | Organization.address.postalCode | integer | 0..* | --- | --- |
| Confinement Period (Date & Time Admitted) | Encounter.period | Period | --- | --- | --- |
| Confinement Period (Date & Time Discharged) | Encounter.period | Period | --- | --- |--- |
| Patient Disposition | Condition.clinicalStatus | CodeableConcept | 0..1 | 1 | [ClinicalStatus](https://hl7.org/fhir/R4/valueset-condition-clinical.html) |
| Patient Disposition: Expired | Patient.deceased[x] | dateTime | 0..1 | --- | --- |
| Patient Disposition: Transferred/Referred (Name of Referral Health Care Institution) | Encounter.hospitalization.destination | string | 0..* | --- | --- |
| Patient Disposition: Transferred/Referred HCI Address (Building Number and Street Name) | Organization.address.line | string | 0..* | --- | --- |
| Patient Disposition: Transferred/Referred HCI Address (City/Municipality) | Organization.address.extension:province | ~~Coding~~ **String** | 0..* | --- | [City](ValueSet-CityVS.html) |
| Patient Disposition: Transferred/Referred HCI Address (Province) | Organization.address.extension:province | ~~Coding~~ **String** | 0..* | --- | [Province](ValueSet-ProvinceVS.html) |
| Patient Disposition: Transferred/Referred HCI Address (Postal Code) | Organization.address.postalCode | integer | 0..* | --- | --- |
| Patient Disposition: Reason/s for referral/transfer | Encounter.reasonCode | CodeableConcept | 0..1 | --- | [ReasonCode](https://hl7.org/fhir/R4/valueset-encounter-reason.html) |
| Type of Accomodation [Private/Non-Private] | Encounter.location.physicalType | CodeableConcept | 0..1 | 4 | [Location Physical Type](ValueSet-EncounterLocationPhysicalTypeVS.html) |
| Admission Diagnosis/es | Encounter.diagnosis.condition | string | 0..1 | 500 | --- |
| Discharge Diagnosis/es: Diagnosis | ~~Encounter.diagnosis.condition~~ | ~~string~~ | ~~0..*~~ 0..1 | ~~500~~ | |
| Discharge Diagnosis/es: ICD-10 Code/s | ~~Encounter.diagnosis.condition.code.coding~~ | ~~CodeableConcept~~ | --- | ~~15~~ | --- |
| Discharge Diagnosis/es: Related Procedure/s (if there's any) | Procedure.code.text | string | 0..1 | 150 | --- |
| Discharge Diagnosis/es: RVS Code | Procedure.code | CodeableConcept | 0..1 | 6 | [RVS Codes](ValueSet-ProcedureCodeVS.html) |
| Discharge Diagnosis/es: Date of Procedure | Procedure.performed[x] | dateTime | 0..1 | 10 | --- |
| Discharge Diagnosis/es: Laterality (Left, Right, Both) | Procedure.bodySite | CodeableConcept | 0..* | ~~1~~ 6 | [Procedure Body Site](ValueSet-ProcedureBodySiteVS.html) |
| Package Code | Coverage.identifier | CodeableConcept | --- | --- | 
| Package (Procedure) | Procedure.extension:illnessClass | CodeableConcept | --- | --- | --- |
| Package (Session) | Encounter.extension:illnessClass | CodeableConcept | --- | --- | --- |
| Date of Package | Coverage.period | Period | --- | --- | --- |
| TB DOTS Phase | Coverage.class.type | CodeableConcept | --- | --- | --- |
| Animal Bite Vaccination | MedicalAdministrataion.medication[x] | Reference([PH_Medication](StructureDefinition-PH-Medication.html)) | --- | --- | --- |
| Animal Bite Vaccination Date | MedicationAdministration.effective[x] | dateTime | --- | --- | --- |
| Newborn Care Screening | Coverage.class.type | CodeableConcept | --- | --- | ~~[Coverage Class](https://hl7.org/fhir/R4/valueset-coverage-class.html)~~ |
| Newborn Care Sub-screening | Coverage.class.type | CodeableConcept | --- | --- | ~~[Coverage Class](https://hl7.org/fhir/R4/valueset-coverage-class.html)~~ |
| Laboratory Number | Coverage.identifier | Identifier | --- | --- | --- |
| ICD10 or RVS Code | Condition.code / Procedure.code | CodeableConcept | --- | --- | [ICD-10](ValueSet-ICD10VS.html) / [RVS Codes](ValueSet-ProcedureCodeVS.html) |
| Accreditation No. | Practitioner.identifier | Identifier([OtherIDs](StructureDefinition-OtherID.html)) | 0..1 | 12 | #AN "Accreditation Number" |
| Practitioner Name (Last Name) | Practitioner.name.family | string | 0..1 | 60 | --- |
| Practitioner Name (First Name) | Practitioner.name.given[0] | string | --- | --- | --- |
| Practitioner Name (Name Extension) | Practitioner.name.suffix | string | --- | --- | --- |
| Practitioner Name (Middle Name) | Practitioner.name.given[1] | string | --- | --- | --- |
| Practitioner Signature | Practitioner.extension:signature.data | ~~base64Binary~~ Signature | --- | --- | --- |
| Date Signed (MM-DD-YYYY) | Practitioner.extension:signature.when | ~~instant~~ date | --- | --- | --- |
| Co-Pay Details | Coverage.costToBeneficiary.type | CodeableConcept | 0..1 | ~~14~~ 1 | [Coverage Co-Pay Type](https://hl7.org/fhir/R4/valueset-coverage-copay-type.html) |
| Co-Pay Amount | Coverage.costToBeneficiary.value[x] | Money | ~~1..1~~ 0..1 | **1** | --- |
| **Part III - Certification of Consumption of Benefits and Consent to Access Patient Record/s** | | | | | |
| Certification of Consumption of Benefits | CoverageEligibilityRequest.identifier | CodeableConcept | --- | 1 | --- |
| A0 Total Health Care Institution Fees (Total Actual Charges) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| A0 Total Professional Fees (Total Actual Charges) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| A0 Grand Total (Total Actual Charges) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total HCI Fees (Total Actual Charges) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total HCI Fees (Amount after Application of Discount) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total HCI Fees (Amount after PhilHealth Deduction) | Coverage.costToBeneficiary.value[x] | Money| 1..1 | 12 | --- |
| B0 Total HCI Fees (Amount after PhilHealth Deduction) Paid By: | Coverage.payor | Reference([PH_Patient](StructureDefinition-PH-Patient.html) or [PH_Organization](StructureDefinition-PH-Organization.html)) | 1..* | 1 | --- |
| B0 Total Professional Fees (Total Actual Charges) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total Professional Fees (Amount after Application of Discount) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total Professional Fees (PhilHealth Benefit) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total Professional Fees (Amount after PhilHealth Deduction) | Coverage.costToBeneficiary.value[x] | Money | 1..1 | 12 | --- |
| B0 Total Professional Fees (Amount after PhilHealth Deduction) Paid By: | Coverage.payor | Reference([PH_Patient](StructureDefinition-PH-Patient.html) or [PH_Organization](StructureDefinition-PH-Organization.html)) | 1..* | 1 | --- |
| B1 Total cost of purchase/s for drugs/medicines and/or medical supplies bought by the patient.member within/outside the HCI during confinement | Claim.item.net | Money | 0..1 | 12 | --- |
| B1 Total cost of diagnostic/laboratory examinations paid by the patient/member done within/outside the HCI during confinement | Claim.item.net | Money | 0..1 | 12 | --- |
| Signature Type | Claim.extension:signature.type | CodeableConcept | --- | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature SubType | Claim.extension:signature.extension:signatureSubType | CodeableConcept | --- | --- | --- |
| ~~Date Signed~~ Date Recevied | Claim.extension:signature.when | ~~instant~~ **date** | 1..1 | --- | --- |
| Signature Image | Claim.extension:signature.data | ~~base64Binary~~ **Signature** | 1..1 | --- | --- |
| Signature Name | Claim.extension:signature.who | ~~Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or or RelatedPerson or Device)~~ **HumanName** | 0..* | --- | --- |
| ~~Designation | Claim.extension:signature.extension:signaturePosition | ~~CodeableConcept~~ **String** | 0..* | --- | ---~~ |
| Relationship of the representative to the member/patient: | ~~extension:signature.who~~ Claim.extension:signature.extension:relationship | ~~Reference~~ CodeableConcept | 0..* | --- | --- |
| Reason for signing on behalf of the member/patient: | Claim.extension:signature.extension:signatureReason | CodeableConcept | 0..1 | --- | --- |
| Thumbmark Validation (Patient or Representative?) | Questionnaire.Response.item.answer.value[x] | **boolean?** | 0..1 | --- | --- |
| Printed Thumbmark | Claim.extension:signature.extension:**signatureThumbmark** | ~~base64Binary~~ | --- | --- | --- |
| **Part IV - Certification of Consumption of Health Care Institution** | | | | | |
| Signature Type | Claim.extension:signature.type | CodeableConcept | --- | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature SubType | Claim.extension:signature.extension:signatureSubType | CodeableConcept | --- | --- | --- |
| ~~Date Signed~~ Date Recevied | Claim.extension:signature.when | ~~instant~~ **date** | 1..1 | --- | --- |
| Signature Image | Claim.extension:signature.data | ~~base64Binary~~ **Signature** | 1..1 | --- | --- |
| Signature Name | Claim.extension:signature.who | ~~Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or or RelatedPerson or Device)~~ **HumanName** | 0..* | --- | --- |
| Designation | Claim.extension:signature.extension:signaturePosition | ~~CodeableConcept~~ **String** | 0..* | --- | --- |
