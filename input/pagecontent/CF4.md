<ul class="nav nav-tabs">
    <li class="active"><a href="#">Content</a></li>
    <li><a href="CF4-mapping.html">Mappings</a></li>
    <li><a href="CF4-json.html">Sample JSON Bundles</a></li>
</ul>

This is a sample representation of the **Use Case** implementation guide for **Claims Form 3**

---

### Implementation Rules

* name.given is an array that captures the first name and middle name.
    1. name.`given[0]` is used to capture a person's **first name**.
    1. name.`given[1]` is used to capture a person's **middle name**.

* For Admitting Diagnosis, set **Claim.diagnosis.type** to `admitting`.
* For Discharge Diagnosis, set **Claim.diagnosis.type** to `discharge`.