{% include table-layout.html %}
{% include form-popup.html %}
<ul class="nav nav-tabs">
    <li><a href="CF2.html">Content</a></li>
    <li class="active"><a href="#">Mappings</a></li>
    <li><a href="CF2-json.html">JSON</a></li>
</ul>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| Series # | Claim.identifier | Identifier | 0..* | |
| **Part I - Health Care Institution (HCI) Information** | | | | |
| PhilHealth Accreditation Number (PAN) of Health Care Institution | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.identifier | Identifier | 0..* | |
| Name of Health Care Institution | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.name | string | 0..1 | |
| Address (Building Number and Street Name) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.line | string | 0..* | |
| Address (City/Municipality) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.extension:cityMunicipality | Coding | 0..1 | ValueSet: [CityMunicipality](ValueSet-CityVS.html) |
| Address (Province) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.address.extension:province | Coding | 0..1 | ValueSet: [Province](ValueSet-ProvinceVS.html) |
| **Part II - Patient Confinement Information** | | | | |
| Name of Patient (Last Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.family | string | 0..1 | |
| Name of Patient (First Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.given[**0**] | string | 0..1 | Use first instance of `name.given` |
| Name of Patient (Name Extension) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.suffix | string | 0..* | |
| Name of Patient (Middle Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.given[**1**] | string | 0..1 | Use second instance of `name.given` |
| ~~Was patient reffered by another HCI? (Yes/No)~~ | ~~Claim.referral~~ | ~~Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html))~~ | ~~0..1~~ | |
| ~~<center>►</center>~~ | ~~ServiceRequest.status~~ | ~~code~~ | ~~0..1~~ | |
| Name of referring Health Care Institution | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..1 | |
| <center>►</center> | Organization.name | string | 0..1 | |
| Address of referring HCI (Building Number and Street Name) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..1 | |
| <center>►</center> | Organization.address.line | string | 0..* | |
| Address of referring HCI (City/Municipality) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..1 | |
| <center>►</center> | Organization.address.extension:cityMunicipality | Coding | 0..1 | ValueSet: [CityMunicipality](ValueSet-CityVS.html) |
| Address of referring HCI (Province) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..1 | |
| <center>►</center> | Organization.address.extension:province | Coding | 0..1 | ValueSet: [Province](ValueSet-ProvinceVS.html) |
| Address of referring HCI (ZIP Code) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..1 | |
| <center>►</center> | Organization.address.postalCode | string | 0..1 | |
| Confinement Period (**Date Admitted** MM-DD-YYYY)(Time Admitted HH:MM)(AM/PM) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.period.start | dateTime | 0..1 | |
| Confinement Period (**Date Discharge** MM-DD-YYY)(Time Discharge HH:MM)(AM/PM) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) || |
| <center>►</center> | Encounter.period.end | dateTime | 0..1 | |
| Patient Disposition (check notes for options: select only one) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.hospitalization.dischargeDisposition | CodeableConcept | 0..1 | ValueSet: [DischargeDisposition](http://hl7.org/fhir/ValueSet/encounter-discharge-disposition) |
| e. Expired (Date Format MM-DD-YYYY)(Time Format HH-MM)(AM/PM) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.deceasedDateTime | dateTime | 0..1 | |
| f. Transferred/Referred (Name of Referral Health Care Institution) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.performer | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..* | |
| <center>►</center> | Organization.name | string | 0..1 | |
| f. Transferred/Referred HCI Address (Building Number and Street Name) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.performer | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..* | |
| <center>►</center> | Organization.address.line | string | 0..* | |
| f. Transferred/Referred HCI Address (City/Municipality) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.performer | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..* | |
| <center>►</center> | Organization.address.extension:cityMunicipality | Coding | 0..1 | ValueSet: [CityMunicipality](ValueSet-CityVS.html) |
| f. Transferred/Referred HCI Address (Province) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.performer | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..* | |
| <center>►</center> | Organization.address.extension:province | Coding | 0..1 | ValueSet: [Province](ValueSet-ProvinceVS.html) |
| f. Transferred/Referred HCI Address (Postal Code) | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.performer | Reference([PH_Organization](StructureDefinition-PH-Organization)) | 0..* | |
| <center>►</center> | Organization.address.postalCode | string | 0..1 | |
| f. Reason/s for referral/transfer **(text)** | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation)) | 0..* | |
| <center>►</center> | Observation.valueString | string | 0..1 | [ReasonCode](http://hl7.org/fhir/ValueSet/encounter-reason) |
| f. Reason/s for referral/transfer **(code)** | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | |
| <center>►</center> | ServiceRequest.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation)) | 0..* | |
| <center>►</center> | Observation.valueString | string | 0..1 | [ReasonCode](http://hl7.org/fhir/ValueSet/encounter-reason) |
| Type of Accomodation (Private/Non-Private) | Claim.extension:encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | | |
| <center>►</center> | Encounter.location.physicalType | CodeableConcept | 0..1 | [Location-PhysicalType](http://hl7.org/fhir/ValueSet/location-physical-type) ~~Private/Non-Private?~~ |
| **Admission Diagnosis/es** | Claim.diagnosis.diagnosisCodeableConcept | CodeableConcept | 1..1 | [ICD-10](ValueSet-ICD10VS.html)|
| Discharge Diagnosis: Diagnosis - ICD-10 Code/s | Claim.diagnosis.diagnosisCodeableConcept | CodeableConcept | 1..1 | [ICD-10](ValueSet-ICD10VS.html) |
| Discharge Diagnosis: Related Procedure/s (if there's any) - RVS Code | Claim.procedure.procedureCodeableConcept | CodeableConcept | 1..1 | ~~RVS Codes~~ |
| Discharge Diagnosis: Date of Procedure | Claim.procedure.date | dateTime | 0..1 | |
| Discharge Diagnosis: Laterality (Left, Right, Both) | Claim.procedure.procedureReference | Reference([PH_Procedure](StructureDefinition-PH-Procedure.html)) | 1..1 | |
| <center>►</center> |  Procedure.bodySite | CodeableConcept | 0..* | [Body Site](https://terminology.hl7.org/ValueSet-v2-0550.html) |
| 8.a. For the following repetitive procedures, check box that applies and enumerate the procedure/sessions dates [mm-dd-yyyy]. For chemotherapy, see guidelines. | Claim.item.productOrService | CodeableConcept | 1..1 | ~~no ValueSet yet~~ |
| 8.a. procedure/session dates | Claim.item.servicedDate | date | 0..1 | |
| 8.b. For Z-Benefit Package **Z-Benefit Package Code:** | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 8.c. For MCP Package (enumerate four dates [mm-dd-year] of pre-natal check-ups) | Claim.item.servicedDate | date | 0..1 | |
| 8.d. For TB-DOTS Package | Claim.item.detail.productOrService | CodeableConcept | 1..1 | |
| 8.e. For Animal Bite Package: Day 0 ARV **(Date)** | Claim.item.servicedDate | date | 0..1 | |
| 8.e. For Animal Bite Package: Day 3 ARV **(Date)** | Claim.item.servicedDate | date | 0..1 | |
| 8.e. For Animal Bite Package: Day 7 ARV **(Date)** | Claim.item.servicedDate | date | 0..1 | |
| 8.e. For Animal Bite Package: RIG **(Date)** | Claim.item.servicedDate | date | 0..1 | |
| 8.e. For Animal Bite Package: **Others (Specify)** | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 8.e. For Animal Bite Package: Others (Specify) **(Date)** | Claim.item.servicedDate | date | 0..1 | |
| 8.f. For Newborn Care Package | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 8.f. For Newborn Care Package: **Essential Newborn Care** | Claim.item.detail.productOrService | CodeableConcept | 1..1 | |
| 8.g. For Outpatient HIV/AIDS Treatment Package: **Laboratory Number:** | Claim.item.encounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | 0..* | |
| <center>►</center> | Encounter.serviceProvider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center> | Organization.identifier | Identifier | 0..* | |
| 9. PhilHealth Benefits: First Case Rate: | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 9. PhilHealth Benefits: Second Case Rate: | Claim.item.productOrService | CodeableConcept | 1..1 | |
| 10. Accreditation number of Accredited Health Care Professional | Claim.supportingInfo.valueReference | Reference([PH_Practitioner](StructureDefinition-PH-Practitioner.html)) | 0..1 | |
| <center>►</center> |  Practitioner.identifier | Identifier | 0..* | |
| 10. Name of Accredited Health Care Professional | Claim.supportingInfo.valueReference | Reference([PH_Provenance](StructureDefinition-PH-Provenance.html)) | 0..1 | |
| <center>►</center> | Provenance.signature.who | ([PH_Practitioner](StructureDefinition-PH-Practitioner.html)) | 1..1 | |
| <center>►</center> | Practitioner.name | HumanName | 0..1 | |
| 10. Signature Over Printed Name (Name of Accredited Health Care Professional) | Claim.supportingInfo.valueReference | Reference([PH_Provenance](StructureDefinition-PH-Provenance.html)) | 0..1 | |
| <center>►</center> | Provenance.signature.data | base64Binary | 0..1 | |
| 10. Date Signed | Claim.supportingInfo.valueReference | Reference([PH_Provenance](StructureDefinition-PH-Provenance.html)) | 0..1 | |
| <center>►</center> | Provenance.signature.when | instant | 0..1 | |
| Details: Co-Pay | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.costToBeneficiary.type | CodeableConcept | 0..1 | [Coverage Co-Pay Type](ValueSet-CoverageCoPayTypeVS.html) |
| With co-pay on top of PhilHealth Benefit **(Amount)** | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.costToBeneficiary.valueMoney | Money | 1..1 | |
| **Part III - Certification of Consumption of Benefits and Consent to Access Patient Record/s** | | | | |
| A. Certification of Consumption of Benefits | Questionnaire.item.text | string | 0..1 | |
| A. if Yes, Total Health Care Institution Fees : Total Actual Charges* | Claim.item.net | Money | 0..1 | |
| A. if Yes, Total Professional Fees : Total Actual Charges* | Claim.item.net | Money | 0..1 | |
| A. if Yes, Grand Total : Total Actual Charges* | Claim.total | Money | 0..1 | |
| A. if No, Total Health Care Institution Fees : Total Actual Charges* | Claim.item.net | Money | 0..1 | |
| A. if No, Total Health Care Institution Fees : Amount after Application of Discount (i.e., personal discount, Senior Citizen / PWD) | Claim.item.detail.net | Money | 0..1 | |
| A. if No, Total Health Care Institution Fees : PhilHealth Benefit | Claim.item.net | Money | 0..1 | |
| A. if No, Total Health Care Institution Fees : Amount after PhilHealth Deduction **(Amount)** | Claim.total | Money | 0..1 | |
| A. if No, Total Health Care Institution Fees : Amount after PhilHealth Deduction **(Paid by (check all that applies))** | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.type | CodeableConcept | 0..1 | [Coverage Type](http://hl7.org/fhir/ValueSet/coverage-type) |
| A. if No, Total Professional Fees (for accredited and non-accredited professionals) : Total Actual Charges* | Claim.item.net | Money | 0..1 | |
| A. if No, Total Professional Fees (for accredited and non-accredited professionals) : Amount after Application of Discount (i.e., personal discount, Senior Citizen / PWD) | Claim.item.detail.net | Money | 0..1 | |
| A. if No, Total Professional Fees (for accredited and non-accredited professionals) : PhilHealth Benefit | Claim.item.net | Money | 0..1 | |
| A. if No, Total Professional Fees (for accredited and non-accredited professionals) : Amount after PhilHealth Deduction **(Amount)** | Claim.total | Money | 0..1 | |
| A. if No, Total Professional Fees (for accredited and non-accredited professionals) : Amount after PhilHealth Deduction **(Paid by (check all that applies))** | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.type | CodeableConcept | | |
| A. if No, Total cost of purchase/s for drugs/medicines and/or medical supplies bought by the patient/member within/outside the HCI during confinement | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.costToBeneficiary.type | CodeableConcept | | |
| A. if No, Total cost of purchase/s for drugs/medicines and/or medical supplies bought by the patient/member within/outside the HCI during confinement (Total Amount) | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.costToBeneficiary.valueMoney | Money | | |
| A. if No, Total cost of diagnostic/laboratory examinations paid by the patient/member done within/outside the HCI during confinement | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.costToBeneficiary.type | CodeableConcept | | |
| A. if No, Total cost of diagnostic/laboratory examinations paid by the patient/member done within/outside the HCDI during confinement **(Total Amount)** | Claim.insurance.coverage | Reference([PH_Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.costToBeneficiary.valueMoney | Money | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | |
| B. Signature Over **Printed Name** of Member/**Patient**/Authorized Representative | Provenance.signature.who | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 0..1 | |
| <center>►</center> | Patient.name | HumanName | 0..* | |
| B. **Signature** Over Printed Name of Member/**Patient**/Authorized Representative | Provenance.signature.data | base64Binary | 0..1 | |
| B. Signature Over **Printed Name** of **Member**/Patient/**Authorized Representative** | Provenance.signature.who | Reference([PH_RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.name | HumanName | 0..* | |
| B. **Signature** Over Printed Name of **Member**/Patient/**Authorized Representative** | Provenance.signature.data | base64Binary | 0..1 | |
| B. Date Signed: | Provenance.signature.when | instant | 0..1 | |
| B. Relationship of the representative to the member/patient | Provenance.signature.who | Reference([PH_RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..* | |
| <center>►</center> | RelatedPerson.relationship | CodeableConcept | 0..* | [RelationshipType](http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype) |
| B. Reason for signing on behalf of the member/patient | Provenance.signature.extension:reason | string | 0..1 | |
| B. If patient/representative is unable to write, put right **thumbmark**. Patient/Representative should be assisted by an HCI representative. | Provenance.signature.data | base64Binary | 0..1 | |
| **Part IV - Certification of Consumption of Health Care Institution** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | |
| Signature Over **Printed Name of Authorized HCI Representative** | Provenance.signature.who | Reference([PH_Practitioner](StructureDefinition-PH-Practitioner.html)) | 0..1 | |
| <center>►</center> | Practitioner.name | HumanName | 0..1 | |
| **Signature** Over Printed Name **of Authorized HCI Representative** | Provenance.signature.data | base64Binary | 0..1 | |
| Official Capacity / Designation | Provenance.signature.extension:position | CodeableConcept | 0..* | |
| Date Signed: | Provenance.signature.when | instant | 0..1 | |

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
| Claim.item.sequence | positiveInt | Expected incrementing value per object |
| Claim.item.detail.sequence | positiveInt | Expected incrementing value per object |
| Questionnaire.status | code | Use expected value 'active' |
| Questionnaire.item.linkId | string | Expected incrementing value per questionnaire item. |
| Questionnaire.item.type | code | Indicates expected data type for the questionnaire item. |