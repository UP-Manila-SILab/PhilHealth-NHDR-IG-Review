<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style></html>


This is a sample representation of the **Use Case** implementation guide for **Claims Form 1**


# FHIR Mapping

| **Form Field** | **FHIR Mapping** *(profile)* | **Data Type** *(profile)* | **Cardinality** | **Length** | **ValueSet (if any)** |
|:---------|:------------|:---------|:--------:|:-----------:|:---------|
| **Part I - Member Information** | | | | | |
| Series #| Claim.identifier| Identifier | 0..1 | 15 | --- |
| PhilHealth Identification Number (PIN) of Member | Person.identifier | Identifier([PhilHealthID](StructureDefinition-PhilHealthID.html)) | 0..* | 12 | --- |
| Name of Member (Last Name) | Person.name.family | String | 0..* | 60 | --- |
| Name of Member (First Name) | Person.name.given[0] | String | 0..* | 60 | --- |
| Name of Member (Name Extension) | Person.name.suffix | String | 0..* | 5 | --- |
| Name of Member (Middle Name) | Person.name.extension:middleName  Person.name.given[1]  | String | 0..* | 60 | --- |
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
| PhilHealth Identification Number (PIN) of Patient | Patient.identifier | Identifier([PhilHealthID](StructureDefinition-PhilHealthID)) | 0..1 | 12 | --- |
| Name of Patient (Last Name) | Patient.name.family | String | 0..* | 60 | --- |
| Name of Patient (First Name) | Patient.name.given[0] | String | 0..* | 60 | --- |
| Name of Patient (Name Extension) | Patient.name.suffix | String | 0..* | 5 | --- |
| Name of Patient (Middle Name) | Patient.name.extension:middleName  Patient.name.given[1] | String | 0..* | 60 | --- |
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

---

```json
    {
        "resourceType": "Bundle",
        "type": "transaction",
        "identifier": {
            "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
            "value": "CF1"
        },
        "entry": [
            {
                "fullUrl": "urn:uuid:patient",
                "resource": {
                    "resourceType": "Patient",
                    "meta": {
                        "profile": [
                        "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
                        ]
                    },
                    "identifier": [
                        {
                        "type": {
                            "coding": [
                            {
                                "code": "NIIP"
                            }
                            ],
                            "text": "PhilHealth Identification Number"
                        },
                        "value": "PH12345"
                        }
                    ],
                    "extension": [
                        {
                        "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Sex",
                        "valueCode": "M"
                        }
                    ],
                    "name": [
                        {
                        "family": "Smith",
                        "given": [
                            "Avery",
                            "Adams"
                        ],
                        "suffix": [
                            "Mr."
                        ],
                        "extension": [
                            {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName",
                            "valueString": "Adams"
                            }
                        ]
                        }
                    ],
                    "birthDate": "1990-12-15",
                    "contact": [
                        {
                        "relationship": [
                            {
                            "coding": [
                                {
                                "code": "E",
                                "display": "Employer"
                                }
                            ]
                            }
                        ]
                        }
                    ]
                },
                "request": {
                    "method": "POST",
                    "url": "Patient"
                }
            },
            {
                "fullUrl": "urn:uuid:person",
                "resource": {
                    "resourceType": "Person",
                    "meta": {
                        "profile": [
                        "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Person"
                        ]
                    },
                    "identifier": [
                        {
                        "type": {
                            "coding": [
                            {
                                "code": "NIIP"
                            }
                            ],
                            "text": "PhilHealth Identification Number"
                        },
                        "value": "PH54321"
                        }
                    ],
                    "name": [
                        {
                        "family": "Doe",
                        "given": [
                            "John",
                            "Cena"
                        ],
                        "suffix": [
                            "Mr."
                        ],
                        "extension": [
                            {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName",
                            "valueString": "Cena"
                            }
                        ]
                        }
                    ],
                    "birthDate": "1994-06-25",
                    "address": [
                        {
                        "line": [
                            "Wayward Road"
                        ],
                        "extension": [
                            {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay",
                            "valueCoding": {
                                "code": "0123456789",
                                "display": "Blue Ridge"
                            }
                            },
                            {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                            "valueCoding": {
                                "code": "0123456",
                                "display": "Quezon City"
                            }
                            },
                            {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Province",
                            "valueCoding": {
                                "code": "01234",
                                "display": "Metro Manila"
                            }
                            }
                        ],
                        "country": "PH",
                        "postalCode": "1110"
                        }
                    ],
                    "extension": [
                        {
                        "url": "https://nhdr.gov.ph/fhir/StructureDefinition/Sex",
                        "valueCode": "M"
                        }
                    ],
                    "telecom": [
                        {
                        "value": "912-00-00"
                        },
                        {
                        "value": "0927-000-0000"
                        },
                        {
                        "value": "johndoe@gmail.com"
                        }
                    ]
                },
                "request": {
                    "method": "POST",
                    "url": "Person"
                }
            },
            {
                "fullUrl": "urn:uuid:organization",
                "resource": {
                    "resourceType": "Organization",
                    "id": "Org-1",
                    "meta": {
                        "profile": [
                        "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
                        ]
                    },
                    "identifier": [
                        {
                        "type": {
                            "coding": [
                            {
                                "code": "EN"
                            }
                            ],
                            "text": "PhilHealth Employer Number (PEN)"
                        },
                        "value": "EN15243"
                        }
                    ],
                    "telecom": [
                        {
                        "value": "080-00-00"
                        }
                    ],
                    "name": "PhilHealth"
                },
                "request": {
                    "method": "POST",
                    "url": "Organization"
                }
            },
            {
                "fullUrl": "urn:uuid:questionnaireresponse",
                "resource": {
                    "resourceType": "QuestionnaireResponse",
                    "id": "QuestionnaireResponse-1",
                    "meta": {
                        "profile": [
                        "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
                        ]
                    },
                    "item": [
                        {
                        "answer": [
                            {
                            "valueBoolean": false
                            }
                        ],
                        "linkId": "Patient is the member?"
                        }
                    ],
                    "status": "in-progress"
                },
                "request": {
                    "method": "POST",
                    "url": "QuestionnaireResponse"
                }
            }
        ]
    }
```