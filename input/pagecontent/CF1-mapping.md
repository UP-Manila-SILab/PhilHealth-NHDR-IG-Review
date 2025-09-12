<html>
    {% include table-header.html -%}
    <ul class="nav nav-tabs">
        <li><a href="CF1.html">Content</a></li>
        <li class="active"><a href="#">Mappings</a></li>
        <li><a href="CF1-1.html">Sample JSON Bundles</a></li>
        <!-- <li><a href="CF1-2-json.html">JSON 2</a></li> -->
    </ul>
</html>

### Mapped Fields

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>Notes</center> |
|:---------|:---------|:--------|:--------:|:----------|
| Series #| Claim.identifier | Identifier | 0..* | |
| **Part I - Member Information** | | | | |
| PhilHealth Identification Number (PIN) of Member | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.identifier | Identifier | 0..* | |
| Name of Member (Last Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.name.family | string | 0..1 | |
| Name of Member (First Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.name.given[**0**] | string | 0..* | Use first instance of `name.given` |
| Name of Member (Name Extension) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.name.suffix | string | 0..* | |
| Name of Member (Middle Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.name.given[**1**] | string | 0..* | Use second instance of `name.given` |
| Date of Birth | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.birthDate | date | 0..1 | |
| Mailing Address (Unit/Room No./Floor) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.line | string | 0..* | |
| Mailing Address (Building Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.line | string | 0..* | |
| Mailing Address (Lot/Blk/House/Bldg. No.) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> |  RelatedPerson.address.line | string | 0..* | |
| Mailing Address (Street) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.line | string | 0..* | |
| Mailing Address (Subdivision/Village) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.line | string | 0..* | |
| Mailing Address (Barangay) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.extension:barangay | Coding | 0..1 | ValueSet: [Barangay](ValueSet-BarangayVS.html) |
| Mailing Address (City/Municipality) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.extension:cityMunicipality | Coding | 0..1 | ValueSet: [CityMunicipality](ValueSet-CityVS.html) |
| Mailing Address (Province) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.extension:province | Coding | 0..1 | ValueSet: [Province](ValueSet-ProvinceVS.html) |
| Mailing Address (Country) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.country | Coding | 0..1 | ValueSet: ~~[Country](ValueSet-CountryVS.html)~~ |
| Mailing Address (Zip Code) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.address.postalCode | string | 0..1 | ~~ValueSet: [PostalCodes](ValueSet-PostalCodesVS.html)~~ |
| Sex | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.extension:sex | code | 0..1 | ValueSet: [Sex](ValueSet-SexVS.html) |
| Contact Information Landline # (Area Code + Tel. No.) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.telecom | ContactPoint | 0..* | `telecom.system` = 'phone' |
| Contact Information (Mobile #) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.telecom | ContactPoint | 0..* | `telecom.system` = 'sms' |
| Contact Information (Email Address) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | |
| <center>►</center> | RelatedPerson.telecom | ContactPoint | 0..* | `telecom.system` = 'email' |
| Patient is the member?<br>[Yes, Proceed to Part III / No, Proceed to Part II] | Questionnaire.item.text | string | 0..1 | |
| **Part II - Patient Information** | *(To be filled-out only if the patient is a dependent)* | | | |
| PhilHealth Identification Number (PIN) of Dependent | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.identifier | Identifier | | |
| Name of Patient (Last Name) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.family | string | 0..1 | |
| Name of Patient (First Name) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.given[**0**] | string | 0..* | Use first instance of `name.given` |
| Name of Patient (Name Extension) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> |  Patient.name.suffix | string | 0..* | |
| Name of Patient (Middle Name) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.name.given[**1**] | string | 0..* | Use second instance of `name.given` |
| Date of Birth | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.birthDate | date | 0..1 | |
| Relationship to Member | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.contact.relationship | CodeableConcept | 0..1 | ValueSet: [Contact Relationship](http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype) |
| Sex | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | |
| <center>►</center> | Patient.extension:sex | code | 0..1 | ValueSet: [Sex](ValueSet-SexVS.html) |
| **Part III - Member Certification** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | |
| **Signature** Over Printed Name of Member | Provenance.signature.data | base64Binary | 0..1 | |
| Signature Over **Printed Name** of Member | Provenance.signature.who | Reference([PH Patient](StructureDefinition-PH-Patient.html) or [PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 1..1 | |
| <center>►</center> | Patient.name <br> RelatedPerson.name | HumanName | 0..* | |
| Date Signed (MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | |
| **Signature** Over Printed Name of Member's Representative | Provenance.signature.data | base64Binary | 0..1 | |
| Signature Over **Printed Name** of Member's Representative | Provenance.signature.who | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 1..1 | |
| <center>►</center> | RelatedPerson.name | HumanName | 0..1 | |
| Date Signed (MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | |
| Printed Thumbmark | Provenance.signature.data | base64Binary |  0..1 | |
| Relationship of the representative to the member | Provenance.signature.who | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 1..1 | |
| <center>►</center> | RelatedPerson.relationship | CodeableConcept | 0..* | ValueSet: [Contact Relationship](ValueSet-ContactRelationshipVS.html) |
| Reason for signing on behalf of the member | Provenance.signature.extension:reason | string | 0..* | |
| **Part IV - Employer's Certification** | *(for employed members only)* | | | |
| PhilHealth Employer Number (PEN) | Claim.insurance.coverage | Reference([PH Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.policyHolder | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center> | Organization.identifier | Identifier | 0..* | |
| Contact No. | Claim.insurance.coverage | Reference([PH Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.policyHolder | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center> | Organization.telecom.value | string | 0..1 | |
| Business Name (Business Name of Employer) | Claim.insurance.coverage | Reference([PH Coverage](StructureDefinition-PH-Coverage.html)) | 1..1 | |
| <center>►</center> | Coverage.policyHolder | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 0..1 | |
| <center>►</center> | Organization.name | string | 0..1 | |
| Signature Type | Provenance.signature.type | Coding | 1..* | |
| **Signature** Over Printed Name of Employer/Authorized Representative | Provenance.signature.data | base64Binary | 0..1 | |
| Signature Over **Printed Name** of Employer/Authorized Representative | Provenance.signature.who | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> | Organization.contact.name | HumanName | 0..1 | |
| Official Capacity / Designation | Provenance.signature.extension:position | CodeableConcept | 0..* | |
| CERTIFICATION OF EMPLOYER (Date Signed MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | |
| **Part V - For PhilHealth Use Only** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | |
| Date Received | Provenance.recorded | instant | 1..1 | |
| LHIO / PRO **Signature** Over Printed Name | Provenance.signature.data | base64Binary | 0..1 | |
| LHIO / PRO Signature Over **Printed Name** | Provenance.signature.who | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 1..1 | |
| <center>►</center> |  Organization.contact.name | HumanName | 0..1 | |

---

### Mandatory Elements Not in the Form

| <center>Use-Case Mapping / Target Element</center> | <center>Data Type</center> | <center>Notes</center> |
|:---------|:---------|:--------|
| Provenance.target | Reference([PH_Claims](StructureDefinition-PH-Claims.html)) | Reference the intact Claim resource |
| Provenance.agent.who | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | Reference the intact Organization (Health Facility) resource |
| Organization.name | string |  Derive from the referenced Organization resource |
| Claim.status | code | Use expected value 'submitted' |
| Claim.type | CodeableConcept | Use expected value '(~~custom ValueSet to be provided later~~)' |
| Claim.use | code | Use expected value 'claim' |
| Claim.created | dateTime | "Resource creation date", should be the `instant` that the resource was created. |
| Claim.provided | Reference(Practitioner/PractitionerRole/Organization) | "The provider which is responsible for the claim, predetermination or preauthorization." |
| Claim.priority | CodeableConcept | Use expected value 'normal' |
| Claim.payee.type | CodeableConcept | Use expected value 'subscriber/provider/other' |
| Claim.insurance.sequence | positiveInt | Expected incrementing value per object. |
| Claim.insurance.focal | boolean | Flag that determines the coverage to be used for the adjudication of this claim. |
| Questionnaire.status | code | Use expected value 'active' |
| Questionnaire.item.linkId | string | Expected incrementing value per questionnaire item. |
| Questionnaire.item.type | code | Indicates expected data type for the questionnaire item. |

{% include datatables.js -%}