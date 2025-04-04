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
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    PatNationality named nationality 0..* and
    Religion named religion 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    SpouseName named spouseName 0..* and
    FatherName named fatherName 0..* and
    MotherName named motherName 0..* and
    RecordedDate named recordedDate 0..* and
    Occupation named occupation 0..* and
    Sex named sex 0..* and
    Race named race 0..1 and
    MemberCategory named memberCategory 0..1 and
    MemberType named memberType 0..1 and
    EducationalAttainment named educationalAttainment 0..1 and
    $Signature named signature 0..*
* extension[signature] ^isModifier = false
* extension[nationality] ^definition = "Code representing nationality of patient."
* extension[nationality] ^comment = "This is an extension"
* extension[nationality] ^isModifier = false
* extension[religion] ^comment = "This is an extension"
* extension[religion] ^isModifier = false
* extension[indigenousGroup] ^short = "Indigenous Group"
* extension[indigenousGroup] ^definition = "The indigenerous/ethnic group where the person belongs"
* extension[indigenousGroup] ^comment = "This is an extension"
* extension[indigenousGroup] ^isModifier = false
* extension[indigenousGroup] ^binding.description = "IndigenousGroup"
* extension[indigenousPeople].value[x] only boolean
* extension[indigenousPeople] ^short = "Indigenous People"
* extension[indigenousPeople] ^definition = "Identify whether a person belongs to an indigenous/ethnic group"
* extension[indigenousPeople] ^comment = "This is an extension"
* extension[indigenousPeople] ^isModifier = false
* extension[spouseName] ^short = "Name of Spouse"
* extension[spouseName] ^definition = "Name of the spouse"
* extension[spouseName] ^comment = "This is an extension"
* extension[spouseName] ^isModifier = false
* extension[fatherName] ^short = "Name of the Father"
* extension[fatherName] ^definition = "Name of the Father"
* extension[fatherName] ^comment = "This is an extension"
* extension[fatherName] ^isModifier = false
* extension[motherName] ^short = "Name of the Mother"
* extension[motherName] ^definition = "Name of the Mother"
* extension[motherName] ^comment = "This is an extension"
* extension[motherName] ^isModifier = false
* extension[recordedDate] ^short = "Date information was recorded"
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Patient record was created in the system, which is often a system-generated date."
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* extension[occupation] ^isModifier = false
* extension[sex] ^short = "Patient's sex at birth."
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration."
* extension[sex] ^isModifier = false
* extension[sex] ^binding.description = "Sex"
* extension[race] ^short = "Patient's race."
* extension[race] ^definition = "Patient's race."
* extension[race] ^isModifier = false
* extension[memberCategory] ^short = "Patient's membership category."
* extension[memberCategory] ^definition = "Patient's membership category."
* extension[memberCategory] ^isModifier = false
* extension[memberCategory] ^binding.description = "Membership category"
* extension[memberType] ^short = "Patient's membership type."
* extension[memberType] ^definition = "Patient's membership type."
* extension[memberType] ^isModifier = false
* extension[memberType] ^binding.description = "Membership type."
* extension[educationalAttainment] ^short = "Patient's educational attainment."
* extension[educationalAttainment] ^definition = "Patient's educational attainment."
* extension[educationalAttainment] ^isModifier = false
* extension[educationalAttainment] ^binding.description = "Educational attainment."
* modifierExtension ..0
* identifier only $PhilHealthID or $RegistrationNo or $OtherID 
* identifier ^definition = "An identifier for this patient.\nA numeric or alphanumeric string that is associated with a single object or entity within a given system."
// * active ..0
* name only $SD_HumanName
* name.id ..0
* name.use ..0
* name.prefix ..0
* name.period ..0
* name.text ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
// * gender ..0
// * birthDate ..0
* deceased[x] ^definition = "Indicates if the individual is deceased or not.\nThe \"\"[x]\"\" is replaced with the title-cased name of the type that is actually used."
* address only $SD_Address
* maritalStatus from $MaritalStatusVS (required)
* maritalStatus ^short = "This field contains a patient's most recent marital (civil) status."
* maritalStatus ^definition = "Refers to the personal status of each individual with reference to the marriage laws or customs of the country.  It is the same as \"\"civil status\"\", the term usually used in official and private records, documents, transactions, and others, in the country. \n\nAlternate Name: Civil Status"
* multipleBirth[x] ..0
// * photo ..0
* contact.modifierExtension ..0
* contact.name only $SD_HumanName
* contact.relationship from ContactRelationshipVS (required)
* contact.address only $SD_Address
* contact.extension contains $Signature named signature 0..*
* contact.extension[signature] ^isModifier = false
* communication ..0
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"
* managingOrganization ..0
* link ..0



//  Notes:
//      Patient.religion valueset to be discussed
//      Patient.memberType      -> patient.type in release 02
//      Patient.memberCategory  -> membertype in release 02