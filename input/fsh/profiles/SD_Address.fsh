Profile: PH_Address
Parent: Address
Id: PH-Address
Title: "PH Address"
Description: "An address for the individual."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Address"
* insert MetaData
* id ..0
* extension contains
    Region named region 0..* and
    Province named province 0..* and
    CityMunicipality named cityMunicipality 0..* and
    Barangay named barangay 0..*
* extension[region] ^isModifier = false
* extension[province] ^isModifier = false
* extension[cityMunicipality] ^isModifier = false
* extension[barangay] ^isModifier = false
// * line ..0
* use ..0
* type ..0
* text ..0
* city ..0
* state ..0
* period ..0