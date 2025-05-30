<!-- 
Resources To Do:
    Claim
    Coverage
    MedicationAdministration
    CoverageEligibilityRequest
 -->

<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>

<ul class="nav nav-tabs">

<li>
    <a href="use-cases-CF2.html">Content</a>
</li>

<li>
    <a href="CF2-mapping.html">Mappings</a>
</li>

<li class="active">
    <a href="#">JSON</a>
</li>

</ul>

</html>

```json
    {
        "resourceType": "Bundle",
        "id": "Bundle-ClaimsForm2",
        "type": "transaction",
        "identifier": {
            "system": "http://nhdr.gov.ph/fhir/ValueSet-form-type",
            "value": "CF2"
        },
        "entry": [
            {
            "fullUrl": "urn:uuid:patient",
            "resource": {
                "resourceType": "Patient",
                "id": "CF2-Patient",
                "meta": {
                    "profile": [
                        "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
                    ]
                },
                "name": [
                    {
                        "family": "Doe",
                        "given": [
                            "John",
                            "Harris"
                        ],
                        "suffix": [
                            "Mr."
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
                "fullUrl": "urn:uuid:organization",
                "resource": {
                    "resourceType": "Organization",
                    "id": "CF2-Org",
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
                                "code": "AN"
                            }
                        ],
                        "text": "PhilHealth Accreditation Number (PAN)"
                        },
                        "value": "AN199513893"
                    }
                    ],
                    "name": "6th General Hospital",
                    "address": [
                    {
                        "line": [
                        "137 Fourth Street"
                        ],
                        "extension": [
                        {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                            "valueCoding": {
                            "code": "0123456",
                            "display": "Marikina City"
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
                        "postalCode": "1110"
                    },
                    {
                        "line": [
                        "125 Fordham"
                        ],
                        "extension": [
                        {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                            "valueCoding": {
                            "code": "0123457",
                            "display": "Pasay City"
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
                        "postalCode": "1101"
                    },
                    {
                        "line": [
                        "12 Riverdale Street"
                        ],
                        "extension": [
                        {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality",
                            "valueCoding": {
                            "code": "0123458",
                            "display": "Pasig City"
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
                        "postalCode": "1102"
                    }
                    ]
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
                    "id": "CF2-QuestionnaireResponse",
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
                            "linkId": "Was Patient referred by another HCI? [Yes/No]"
                        }
                    ],
                    "status": "in-progress"
                },
                "request": {
                    "method": "POST",
                    "url": "QuestionnaireResponse"
                }
            },
            {
                "fullUrl": "urn:uuid:encounter",
                "resource": {
                    "resourceType": "Encounter",
                    "id": "CF2-Encounter",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
                        ]
                    },
                    "hospitalization": {
                        "origin": {
                            "reference": "Location/Location-General-Hospital-Room-101",
                            "display": "General Hospital Room"
                        },
                        "destination": {
                            "reference": "Location/Location-General-Hospital-Room-101",
                            "display": "General Hospital Room"
                        }
                    },
                    "period": {
                        "start": "2024-07-18T08:00:00+08:00",
                        "end": "2024-07-18T10:00:00+08:00"
                    },
                    "reasonCode": [
                        {
                            "coding": [
                                {
                                    "code": "109006",
                                    "system": "http://snomed.info/sct",
                                    "display": "Anxiety disorder of childhood OR adolescence"
                                }
                            ],
                            "text": "Anxiety disorder of childhood OR adolescence"
                        }
                    ],
                    "location": [{
                        "location": {
                            "reference": "Location/Location-General-Hospital-Room-101",
                            "display": "General Hospital Room"
                        },
                        "physicalType": {
                        "coding": [
                            {
                                "code": "wa",
                                "system": "http://terminology.hl7.org/6.2.0/CodeSystem-location-physical-type.html",
                                "display": "Ward"
                            }
                        ]
                        }
                    }],
                    "diagnosis": [{
                        "condition": {
                            "reference": "Condition/Condition-1",
                            "display": "Diabetes mellitus type 2"
                        }
                    }],
                    "status": "triaged",
                    "class": {
                        "code": "EMER",
                        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                        "display": "emergency"
                    }
                },
                "request": {
                    "method": "POST",
                    "url": "Encounter"
                }
            },
            {
                "fullUrl": "urn:uuid:condition",
                "resource": {
                    "resourceType": "Condition",
                    "id": "CF2-Condition",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
                        ]
                    },
                    "clinicalStatus": {
                        "coding": [
                            {
                                "code": "0",
                                "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                                "display": "Active"
                            }
                        ],
                        "text": "Active"
                    },
                    "code": {
                        "coding": [
                            {
                                "code": "A00",
                                "system": "http://hl7.org/fhir/sid/icd-10",
                                "display": "A00"
                            }
                        ]
                    },
                    "subject": {
                        "reference": "Patient/CF2-Patient",
                        "display": "CF2 Patient"
                    }
                },
                "request": {
                    "method": "POST",
                    "url": "Condition"
                }
            },
            {
                "fullUrl": "urn:uuid:procedure",
                "resource": {
                    "resourceType": "Procedure",
                    "id": "CF2-Procedure",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Procedure"
                        ]
                    },
                    "code": {
                        "coding": [
                            {
                                "code": "10060",
                                "system": "https://nhdr.gov.ph/fhir/CodeSystem/RVSCodeCS",
                                "display": "INCISION AND DRAINAGE OF ABSCESS (E.G., CARBUNCLE, SUPPURATIVE HIDRADENITIS, CUTANEOUS OR SUBCUTANEOUS ABSCESS, CYST, FURUNCLE, OR PARONYCHIA)"
                            }
                        ]
                    },
                    "performedDateTime": "2025-04-15T10:00:00.000Z",
                    "bodySite": [
                        {
                            "coding": [
                                {
                                    "code": "108003",
                                    "system": "http://snomed.info/sct",
                                    "display": "Entire condylar emissary vein"
                                }
                            ]
                        }
                    ],
                    "extension": [
                        {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/IllnessClass",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "code": "108003",
                                        "system": "http://snomed.info/sct",
                                        "display": "Abscess"
                                    }
                                ]
                            }
                        }
                    ],
                    "status": "preparation",
                    "subject": {
                        "reference": "Patient/CF2-Patient",
                        "display": "CF2 Patient"
                    }
                },
                "request": {
                    "method": "POST",
                    "url": "Procedure"
                }
            },
            {
                "fullUrl": "urn:uuid:practitioner",
                "resource": {
                    "resourceType": "Practitioner",
                    "id": "CF2-Practitioner",
                    "meta": {
                        "profile": [
                            "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
                        ]
                    },
                    "identifier": "1231231",
                    "name": [
                        {
                            "family": "Dela Cruz",
                            "given": [
                                "Sheena",
                                "Abesamis"
                            ]
                        }
                    ],
                    "extension": [
                        {
                            "url": "https://nhdr.gov.ph/fhir/StructureDefinition/ExtSignature",
                            "when": "2025-04-15T10:30:00Z",
                            "data": "FGAD9FG9A0F8G97G09D"
                        }
                    ]
                        
                },
                "request": {
                    "method": "POST",
                    "url": "Practitioner"
                }
            }
        ]
    }
```