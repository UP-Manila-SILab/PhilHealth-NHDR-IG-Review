<html>
    <style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>
    <ul class="nav nav-tabs">
        <li class="active"><a href="#">Content</a></li>
        <li><a href="CF3-mapping.html">Mappings</a></li>
        <li><a href="CF3-json.html">Sample JSON Bundles</a></li>
    </ul>
</html>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 3**

---

### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

---

### Questionnaire Fields in CF3:

```
    {
        "resourceType": "Questionnaire",
        "id": "CF3-Questionnaire",
        "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
            ]
        },
        "item": [
            {
                "linkId": "1",
                "text": "6. Orientation to MCP/Availment of Benefits (Yes/No)",
                "type": "boolean"
            },
            {
                "linkId": "2",
                "text": "13. Perineal wound care (done)",
                "type": "boolean"
            },
            {
                "linkId": "3",
                "text": "13. Perineal wound care (Remarks)",
                "type": "string"
            },
            {
                "linkId": "4",
                "text": "14. Signs of Maternal Postpartum Complications (done)",
                "type": "boolean"
            },
            {
                "linkId": "5",
                "text": "14. Signs of Maternal Postpartum Complications (Remarks)",
                "type": "string"
            },
            {
                "linkId": "6",
                "text": "15. Counselling and Education (Breastfeeding and Nutrition) (done)",
                "type": "boolean"
            },
            {
                "linkId": "7",
                "text": "15. Counselling and Education (Breastfeeding and Nutrition) (Remarks)",
                "type": "string"
            },
            {
                "linkId": "8",
                "text": "15. Counselling and Education (Family Planning) (done)",
                "type": "boolean"
            },
            {
                "linkId": "9",
                "text": "15. Counselling and Education (Family Planning) (Remarks)",
                "type": "string"
            },
            {
                "linkId": "10",
                "text": "16. Provided family planning service to patient (as requested by patient) (done)",
                "type": "boolean"
            },
            {
                "linkId": "11",
                "text": "16. Provided family planning service to patient (as requested by patient) (Remarks)",
                "type": "string"
            },
            {
                "linkId": "12",
                "text": "17. Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.) (done)",
                "type": "boolean"
            },
            {
                "linkId": "13",
                "text": "17. Referred to partner physician for Voluntary Surgical Sterilization (as requested by pt.) (Remarks)",
                "type": "string"
            },
            {
                "linkId": "14",
                "text": "18. Schedule the next postpartum follow-up (done)",
                "type": "boolean"
            },
            {
                "linkId": "15",
                "text": "18. Schedule the next postpartum follow-up (Remarks)",
                "type": "string"
            }
        ],
        "status": "active"
    }

```