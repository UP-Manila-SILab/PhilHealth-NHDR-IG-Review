<!-- 
Resources To Do:
    Claim (needs to be remapped)
 -->

<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>

<ul class="nav nav-tabs">

<li>
    <a href="use-cases-CF1.html">Content</a>
</li>

<li>
    <a href="CF1-mapping.html">Mappings</a>
</li>

<li class="active">
    <a href="#">JSON</a>
</li>

</ul>

</html>

```json
    {
        "resourceType": "Bundle",
        "type": "transaction",
        "id": "Bundle-ClaimsForm1",
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
                        "valueCode": "F"
                        }
                    ],
                    "name": [
                        {
                        "family": "Razal",
                        "given": [
                            "Emily Frances Lourdes",
                            "Aberin"
                        ],
                        "suffix": [
                            "Mrs."
                        ]
                        }
                    ],
                    "birthDate": "1971-02-11",
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
                        "family": "Razal",
                        "given": [
                            "Emily Frances Lourdes",
                            "Aberin"
                        ],
                        "suffix": [
                            "Mrs."
                        ]
                        }
                    ],
                    "birthDate": "1971-02-11",
                    "address": [
                        {
                        "line": [
                            "Fordham Road"
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
                        "value": "earazal@email.com"
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
                            "valueBoolean": true
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