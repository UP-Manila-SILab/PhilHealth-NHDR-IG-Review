### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

* For fields under **Part I - Member Information**, if `Patient is the member?` is true, all `Person` resources <span style="color:red">**SHOULD**</span> be changed to `Patient`. For example:
    
    ```
        Patient is the member:
            QuestionnaireResponse.item = true
        Name of Member (Last Name):
            Patient.name.family = "Smith"
    ```

    ```
        Patient is the member:
            QuestionnaireResponse.item = false
        Name of Member (Last Name):
            Person.name.family = "Smith"
    ```

---


<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>

<ul class="nav nav-tabs">

<li>
    <a href="use-cases-CF1.html">Content</a>
</li>

<li class="active">
    <a href="#">Mappings</a>
</li>

<li>
    <a href="CF1-json.html">JSON</a>
</li>

</ul>

</html>

| <center>Form Field</center> | <center>FHIR Mapping <i>(profile)</i></center> | <center>Data Type <i>(profile)</i></center> | <center>Cardinality</center> | <center>Length</center> | <center>ValueSet</center> |
|:---------|:------------|:---------|:--------:|:-----------:|:--------:|
| **Part I - Member Information** | | | | | |
| Series #| Claim.identifier| Identifier | 0..1 | 15 | --- |
| PhilHealth Identification Number (PIN) of Member | Person.identifier | Identifier([PhilHealthID](StructureDefinition-PhilHealthID.html)) | 0..* | 12 | --- |
| Name of Member (Last Name) | Person.name.family | String | 0..* | 60 | --- |
| Name of Member (First Name) | Person.name.given[0] | String | 0..* | 60 | --- |
| Name of Member (Name Extension) | Person.name.suffix | String | 0..* | 5 | --- |
| Name of Member (Middle Name) | Person.name.given[1]  | String | 0..* | 60 | --- |
| Date of Birth | Person.birthDate | date | 0..1 | 10 | --- |
| Mailing Address (Unit/Room No./Floor) | Person.address.line | String | 0..* | 150 | --- |
| Mailing Address (Building Name) | Person.address.line | String | 0..* | 150 | --- |
| Mailing Address (Lot/Blk/House/Bldg. No.) | Person.address.line | String | 0..* | 150 | --- |
| Mailing Address (Street) | Person.address.line | String | 0..* | 150 | --- |
| Mailing Address (Subdivision/Village) | Person.address.line | String | 0..* | 150 | --- |
| Mailing Address (Barangay) | Person.address.extension:barangay | ~~Coding~~ **String** | 0..* | 150 | [Barangay](ValueSet-BarangayVS.html) |
| Mailing Address (City/Municipality) | Person.address.extension:cityMunicipality | ~~Coding~~ **String** | 0..* | 150 | [City](ValueSet-CityVS.html) |
| Mailing Address (Province) | Person.address.extension:province | ~~Coding~~ **String** | 0..* | 150 | [Province](ValueSet-ProvinceVS.html) |
| Mailing Address (Country) | Person.address.country | ~~Coding~~ **String** | 0..* | 150 | --- |
| Mailing Address (Zip Code) | Person.address.postalCode | Integer | 0..* | 4 | --- |
| Sex | Person.extension:sex | CodeableConcept | 0..1 | 1 | [Sex](ValueSet-SexVS.html) |
| Contact Information Landline # (Area Code + Tel. No.) | Person.telecom.value | ContactPoint | 0..* | 20 | --- |
| Contact Information (Mobile #) | Person.telecom.value | ContactPoint | 0..* | 20 | --- |
| Contact Information (Email Address) | Person.telecom.value | ContactPoint | 0..* | 156 | --- |
| Patient is the member? | QuestionnaireResponse.item | boolean | 0..1 | 1 | --- |
| **Part II - Patient Information** | | | | | |
| PhilHealth Identification Number (PIN) of Patient | Patient.identifier | Identifier([PhilHealthID](StructureDefinition-PhilHealthID.html)) | 0..1 | 12 | --- |
| Name of Patient (Last Name) | Patient.name.family | String | 0..* | 60 | --- |
| Name of Patient (First Name) | Patient.name.given[0] | String | 0..* | 60 | --- |
| Name of Patient (Name Extension) | Patient.name.suffix | String | 0..* | 5 | --- |
| Name of Patient (Middle Name) | Patient.name.given[1] | String | 0..* | 60 | --- |
| Date of Birth | Patient.birthDate | date | 0..1 | 10 | --- |
| Relationship to Member | Patient.contact.relationship | CodeableConcept | 0..* | --- | [Contact Relationship](ValueSet-ContactRelationshipVS.html) |
| Sex | Patient.extension:sex | CodeableConcept | 0..1 | 1 | [Sex](ValueSet-SexVS.html) |
| **Part III - Member Certification** | | | | | |
| Signature Type | Claim.extension:signature.type | CodeableConcept | --- | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature SubType | Claim.extension:signature.extension:signatureSubType | CodeableConcept | --- | --- | --- |
| Signature Image | Claim.extension:signature.data | ~~base64Binary~~ **HumanName** | 1..1 | --- | --- |
| Signature Name | Claim.extension:signature.who | ~~Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or or RelatedPerson or Device)~~ **Signature** | 0..* | --- | --- |
| Date Signed (MM-DD-YYYY) | Claim.extension:signature.when | ~~instant~~ **date** | 1..1 | --- | --- |
| Printed Thumbmark | Claim.extension:signature.extension:signatureThumbmark | --- | --- | --- | --- |
| Relationship of the representative to the member | Claim.extension:signature.onBehalfOf | ~~Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or or RelatedPerson or Device)~~ **CodeableConcept** | 0..* | --- | --- |
| Reason for signing on behalf of the member | Claim.extension:signature.extension:signatureReason | CodeableConcept | 0..1 | --- | --- |
| **Part IV - Employer's Certification** *(for employed members only)* | | | | | |
| PhilHealth Employer Number (PEN) | Organization.identifier | Identifier([OtherID](StructureDefinition-OtherID.html)) | 0..1 | 12 | --- |
| Contact No. | Organization.telecom | ContactPoint | 0..* | --- | --- |
| Business Name (Business Name of Employer) | Organization.name | String | 0..* | 100 | --- |
| Signature Type | Claim.extension:signature.type | CodeableConcept | --- | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature SubType | Claim.extension:signature.extension:signatureSubType | CodeableConcept | --- | --- | --- |
| Signature Image | Claim.extension:signature.data | ~~base64Binary~~ **HumanName** | 1..1 | --- | --- |
| Signature Name | Claim.extension:signature.who | ~~Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or or RelatedPerson or Device)~~ **Signature** | 0..* | --- | --- |
| Official Capacity.Designation | Claim.extension:signature.extension:signaturePosition | ~~CodeableConcept~~ **String** | 0..* | --- | PSOC |
| Certification of Employer (Date Signed) | Claim.extension:signature.when | ~~instant~~ **date** | 1..1 | --- | --- |
| **Part V - For PhilHealth Use Only** | | | | | |
| Signature Type | Claim.extension:signature.type | CodeableConcept | --- | --- | [Signature Type](https://hl7.org/fhir/R4/valueset-signature-type.html) |
| Signature SubType | Claim.extension:signature.extension:signatureSubType | CodeableConcept | --- | --- | --- |
| Date Received | Claim.extension:signature.when | ~~instant~~ **date** | 1..1 | --- | --- |
| Signature Image | Claim.extension:signature.data | ~~base64Binary~~ **HumanName** | 1..1 | --- | --- |
| Signature Name | Claim.extension:signature.who | ~~Reference(PH_Patient or PH_Organization or PH_Practitioner or PH_PractitionerRole or or RelatedPerson or Device)~~ **Signature** | 0..* | --- | --- |