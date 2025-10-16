<ul class="nav nav-tabs">
    <li class="active"><a href="#">Content</a></li>
    <li><a href="CF2-mapping.html">Mappings</a></li>
    <li><a href="CF2-json.html">JSON</a></li>
</ul>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 2**

This can be viewed as an instance [CF2 Bundle](Bundle-ClaimsForm2.html) to also see downloadable XML, JSON, and TTL formats.

---

### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.


---

### Questionnaire Fields in CF2:

```
    {
        "resourceType": "Questionnaire",
        "id": "CF2-Questionnaire",
        "meta": {
            "profile": [
                "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
            ]
        },
        "item": [
            {
                "linkId": "1",
                "text": "A. Certification of Consumption of Benefits",
                "type": "boolean"
            }
        ],
        "status": "active"
    }

```