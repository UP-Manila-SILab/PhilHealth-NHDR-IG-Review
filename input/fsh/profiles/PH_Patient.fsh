Profile: PH_Patient
Parent: Patient
Id: PH-Patient
Title: "PH Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
// * id ..0
* insert MetaElement
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    $Nationality named nationality 0..* and
    $Religion named religion 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    Occupation named occupation 0..* and
    Sex named sex 0..1 and
    Race named race 0..1 and
    MemberType named memberType 0..1 and
    PatientType named type 0..1 and
    EducationalAttainment named educationalAttainment 0..1
* extension[religion].value[x] from $ReligionVS (required)
* modifierExtension ..0
* identifier obeys PH-00002
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PhilHealthID 0..1 and
    PDD 0..1 and
    TIN 0..1 and
    SSS-GSIS 0..2 and
    DriversLicense 0..1 and
    PassportNumber 0..1
* identifier[PhilHealthID].system = "http://nhdr.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PhilHealthID].type.coding = #NIIP
* identifier[PhilHealthID].value obeys PH-00001
* identifier[PDD].system = "http://nhdr.gov.ph/fhir/Identifier/pdd-id"
* identifier[PDD].type.coding = #PDD
* identifier[TIN].system = "http://nhdr.gov.ph/fhir/Identifier/tin-id"
* identifier[TIN].type.coding = #TAX
* identifier[SSS-GSIS].system = "http://nhdr.gov.ph/fhir/Identifier/sss-gsis-id"
* identifier[SSS-GSIS].type.coding = #SB
* identifier[DriversLicense].system = "http://nhdr.gov.ph/fhir/Identifier/driverslicense"
* identifier[DriversLicense].type.coding = #DL
* identifier[PassportNumber].system = "http://nhdr.gov.ph/fhir/Identifier/passportnumber"
* identifier[PassportNumber].type.coding = #PPN
// * active ..0
* name
* name.extension ..0
* name.id ..0
* name.use ..0
* name.prefix ..0
* name.period ..0
* name.text ..0
* telecom.id ..0
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
// * birthDate ..0
* deceased[x]
* address only $SD_Address
* maritalStatus from $MaritalStatusVS (required)
* multipleBirth[x] ..0
// * photo ..0
* contact.modifierExtension ..0
* contact.relationship from $RelationshipTypeVS (required)
* contact.name.id ..0
* contact.name.use ..0
* contact.name.prefix ..0
* contact.name.period ..0
* contact.name.text ..0
* contact.telecom.id ..0
* contact.telecom.use ..0
* contact.telecom.rank ..0
* contact.telecom.period ..0
* contact.gender ..0
* contact.organization ..0
* contact.period ..0
* contact.address only $SD_Address
* communication ..0
* generalPractitioner only Reference(PH_Organization)
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"
* managingOrganization ..0
* link ..0