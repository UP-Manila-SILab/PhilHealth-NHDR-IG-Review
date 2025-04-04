<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style></html>

The purpose of this page is to test and sample the presentation of the **Philippine Use Cases** implementation guide.

# Sample Use Cases:


## Claims Form 1
```json
{
    "resourceType": "Bundle",
    "type": "transaction",
    "identifier": {
        "system": "http://example.org/form-type",
        "value": "CF1"
    },
    "entry": [
        {
            "fullUrl": "urn:uuid:patient",
            "resource": {
                "resourceType": "Patient",
                "name": [
                    {
                        "use": "official",
                        "family": "Deer",
                        "given": [
                            "Jane"
                        ]
                    }
                ],
                "identifier": {
                    "value": "040118" //Sample Patient ID
                },
                "gender": "female",
                "birthDate": "2001-07-21",
                "deceasedBoolean": false,
                "address": [
                    {
                        "use": "home",
                        "line": [
                            "19 Paris Street",
                            "St. Ignatius Village"
                        ],
                        "country": "PHL",
                        "city": "Quezon City"
                    }
                ],
                "maritalStatus": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
                            "code": "S"
                        }
                    ]
                }
            },
            "request": {
                "method": "POST",
                "url": "Patient"
            }
        },
        {
            "fullUrl": "urn:uuid:encounter",
            "resource": {
                "resourceType": "Encounter",
                "subject": {
                    "reference": "urn:uuid:patient"
                },
                "status": "in-progress",
                "class": {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                    "code": "EMER",
                    "display": "emergency"
                },
                "type": [
                    {
                        "coding": [
                            {
                                "system": "http://snomed.info/sct",
                                "code": "183807002",
                                "display": "Inpatient stay for nine days"
                            }
                        ]
                    }
                ],
                "priority": {
                    "coding": [
                        {
                            "system": "http://snomed.info/sct",
                            "code": "394849002",
                            "display": "High priority"
                        }
                    ]
                },
                "period": {
                    "start": "2024-01-22T08:00:00Z",
                    "end": "2024-01-31T08:00:00Z"
                }
            },
            "request": {
                "method": "POST",
                "url": "Encounter"
            }
        },
        {
            "fullUrl": "urn:uuid:diagnosticreport",
            "resource": {
                "resourceType": "DiagnosticReport",
                "encounter": {
                    "reference": "urn:uuid:encounter"
                },
                "subject": {
                    "reference": "urn:uuid:patient"
                },
                "status": "final",
                "category": [
                    {
                        "coding": [
                            {
                                "system": "http://terminology.hl7.org/CodeSystem/v2-0074",
                                "code": "HM"
                            }
                        ]
                    }
                ],
                "issued": "2021-08-20T19:32:52+01:00",
                "conclusionCode": [
                    {
                        "text": "Normal"
                    }
                ]
            },
            "request": {
                "method": "POST",
                "url": "DiagnosticReport"
            }
        },
        {
            "fullUrl": "urn:uuid:immunization",
            "resource": {
                "resourceType": "Immunization",
                "encounter": {
                    "reference": "urn:uuid:encounter"
                },
                "patient": {
                    "reference": "urn:uuid:patient"
                },
                "status": "completed",
                "vaccineCode": {
                    "text": "Flu Vaccine"
                },
                "occurrenceDateTime": "2021-02-15",
                "expirationDate": "2024-02-14",
                "primarySource": true,
                "note": [
                    {
                        "text": "Completed dosage"
                    }
                ]
            },
            "request": {
                "method": "POST",
                "url": "Immunization"
            }
        },
        {
            "fullUrl": "urn:uuid:condition",
            "resource": {
                "resourceType": "Condition",
                "subject": {
                    "reference": "urn:uuid:patient"
                },
                "encounter": {
                    "reference": "urn:uuid:encounter"
                },
                "clinicalStatus": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                            "code": "active"
                        }
                    ]
                },
                "verificationStatus": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                            "code": "confirmed"
                        }
                    ]
                },
                "category": [
                    {
                        "coding": [
                            {
                                "system": "http://snomed.info/sct",
                                "code": "439401001",
                                "display": "diagnosis"
                            }
                        ]
                    }
                ],
                "code": {
                    "coding": [
                        {
                            "system": "http://snomed.info/sct",
                            "code": "368009",
                            "display": "Heart valve disorder"
                        }
                    ]
                },
                "recordedDate": "2019-11-05"
            },
            "request": {
                "method": "POST",
                "url": "Condition"
            }
        },
        {
            "fullUrl": "urn:uuid:practitioner",
            "resource": {
                "resourceType": "Practitioner",
                "name": [
                    {
                        "use": "official",
                        "family": "Adams",
                        "given": [
                            "Jason"
                        ],
                        "prefix": [
                            "Dr."
                        ]
                    }
                ],
                "gender": "male",
                "address": [
                    {
                        "use": "work",
                        "line": [
                            "23 Fordham Street"
                        ],
                        "city": "Makati City",
                        "country": "PHL"
                    }
                ],
                "telecom": [
                    {
                        "system": "phone",
                        "value": "+6321234567",
                        "use": "work"
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