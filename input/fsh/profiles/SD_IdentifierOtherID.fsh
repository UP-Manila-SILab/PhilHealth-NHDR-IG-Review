Profile: OtherID
Parent: Identifier
Id: OtherID
Title: "List of other acceptable IDs"
Description: "List of other acceptable IDs"


* ^purpose = "
<html>
    <style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style>
    <table>
        <thead>
            <tr>
                <td>Code</td>
                <td>Display</td>
                <td>Use</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>TAX</td>
                <td>TIN</td>
                <td>Patient.identifier</td>
            </tr>
            <tr>
                <td>SB</td>
                <td>SSS / GSIS</td>
                <td>Patient.identifier</td>
            </tr>
            <tr>
                <td>DL</td>
                <td>Driver's License</td>
                <td>Patient.identifier</td>
            </tr>
            <tr>
                <td>PPN</td>
                <td>Passport Number</td>
                <td>Patient.identifier</td>
            </tr>
            <tr>
                <td>EN</td>
                <td>PEN - PhilHealth Employer Number</td>
                <td>Organization.identifier</td>
            </tr>
            <tr>
                <td>AN</td>
                <td>PAN - Accreditation Number</td>
                <td>Organization.identifier</td>
            </tr>
        </tbody>
    </table>

    <br>
    <table>
        <thead>
            <tr>Patient IDs</tr>
            <tr>
                <td>Code</td>
                <td>Display</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>TAX</td>
                <td>TIN</td>
            </tr>
            <tr>
                <td>SB</td>
                <td>SSS / GSIS</td>
            </tr>
            <tr>
                <td>DL</td>
                <td>Driver's License</td>
            </tr>
            <tr>
                <td>PPN</td>
                <td>Passport Number</td>
            </tr>
        </tbody>
    </table>

    <br>
    <table>
        <thead>
            <tr>Organization IDs</tr>
            <tr>
                <td>Code</td>
                <td>Display</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>EN</td>
                <td>PEN - PhilHealth Employer Number</td>
            </tr>
            <tr>
                <td>AN</td>
                <td>PAN - Accreditation Number</td>
            </tr>
        </tbody>
    </table>
</html>"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/OtherID"
* insert MetaData
* type.text 1..
* type.text ^definition = "Other Philippine IDs such as TIN, SSS, GSIS, Divers License, Passport no., National ID"
* system ..0
* period ..0