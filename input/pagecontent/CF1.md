<ul class="nav nav-tabs">
    <li class="active"><a href="#">Content</a></li>
    <li><a href="CF1-mapping.html">Mappings</a></li>
    <li><a href="CF1-1.html">Sample JSON Bundles</a></li>
</ul>


This is a sample representation of the **Use Case** implementation guide for **Claims Form 1**

This can be viewed as instances ["Member is not the Patient"](Bundle-ClaimsForm1-1.html) & ["Member is the Patient"](Bundle-ClaimsForm1-2.html) to also see downloadable XML, JSON, and TTL formats.

---

### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

* For the field under **Part I - Member Information**, if `Patient is the member?` is true, you <span style="color:red">**must**</span> add a `Patient` resource to the bundle and use `Patient.link` to reference this `RelatedPerson` resource. For example:

**QuestionnaireResponse:**

    "resource": {
        "resourceType": "QuestionnaireResponse",
        "id": "QuestionnaireResponse-2",
        "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
            ]
        },
        "questionnaire": "Questionnaire/Questionnaire-2",
        "item": [
            {
                "linkId": "1",
                "text": "Patient is the member?",
                "answer": [
                    {
                        "valueBoolean": true
                    }
                ]
            }
        ],
        "status": "in-progress"
    }

---

**Patient:**

    "resource": {
        "resourceType": "Patient",
        "id": "Patient-2",
        "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
            ]
        },
        "link": [
            {
                "other": {
                    "reference": "RelatedPerson/RelatedPerson-2"
                },
                "type": "refer"
            }
        ]
    }

---
  
**RelatedPerson:**

    "resource": {
        "resourceType": "RelatedPerson",
        "id": "RelatedPerson-2",
        "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
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
        "patient": {
            "reference": "Patient/Patient-2"
        }
        
        <!-- Rest of the resource -->

    }

---

### Questionnaire Fields in CF1:

```
    {
        "resourceType": "Questionnaire",
        "id": "CF1-Questionnaire",
        "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
            ]
        },
        "item": [
            {
                "linkId": "1",
                "text": "Patient is the member? [Yes, Proceed to Part III | No, Proceed to Part II]",
                "type": "boolean"
            }
        ],
        "status": "active"
    }

```