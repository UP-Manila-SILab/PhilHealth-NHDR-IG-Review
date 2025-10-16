Profile: PH_Claim_dummy
Parent: Claim
Id: PH-Claim-dummy
Title: "PH Claim - dummy"
Description: "This is just a sample template for slicing on Claim.item."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Claim-dummy"
* insert MetaData
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* id ^short = "test"
* meta ^short = "test"
* implicitRules ^short = "test"
* language ^short = "test"
* text ^short = "test"
* contained ^short = "test"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "productOrService"
* item ^slicing.rules = #closed
* item contains
    AnimalBites 0..1 and
    TBDOTS 0..1
* item[AnimalBites].productOrService from $MaritalStatusVS (required)
* item[TBDOTS].productOrService from $RelationshipTypeVS (required)