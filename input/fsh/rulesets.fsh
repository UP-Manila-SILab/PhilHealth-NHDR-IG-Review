RuleSet: MetaData
* ^status = #draft
* ^version = "1.0.1"
* ^publisher = "EA-NHDR"
* ^language = #en-US
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #draft
// * ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"

//  Used for testing RuleSet in CS_RuleSetTest. Used on PSGC codes for easier filtering of ValueSets
RuleSet: HierarchyValues
* ^hierarchyMeaning = #is-a
* ^property[0].code = #subsumedBy
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].description = "The concept code of a parent concept"
* ^property[=].type = #code
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#status"
* ^property[=].description = "A property that indicates the status of the concept. One of active, experimental, deprecated, or retired."
* ^property[=].type = #code
* ^property[+].code = #notSelectable
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#notSelectable"
* ^property[=].description = "Indicates that the code is abstract - only intended to be used as a selector for other concepts"
* ^property[=].type = #boolean

RuleSet: PSGC-Data(code, valueset)
* #{code} ^property[0].code = #status
* #{code} ^property[=].valueCode = #active
* #{code} ^property[+].code = #subsumedBy
* #{code} ^property[=].valueCode = #{valueset}

RuleSet: ApplyRegion(code)
* insert PSGC-Data({code}, _Region)

RuleSet: ApplyProvince(code)
* insert PSGC-Data({code}, _Province)

RuleSet: ApplyCity(code)
* insert PSGC-Data({code}, _City)

RuleSet: ApplyBarangay(code)
* insert PSGC-Data({code}, _Barangay)