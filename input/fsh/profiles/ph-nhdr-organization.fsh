Profile: PHNhdrOrganization
Parent: $Organization
Id: ph-nhdr-organization
* . ^definition = "\"A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.\n\nAlternate Name: Health Facility Registry\""
* extension contains
    ph-nhdr-head-name named headName 0..* and
    ph-nhdr-head-position named headPosition 0..*
* extension[headName] ^definition = "Head of the organization"
* extension[headPosition] ^short = "Position of head of facility"
* extension[headPosition] ^definition = "Position of head of facility"
* identifier ^slicing.description = "This are the slides for the DOH facility code"
* identifier ^slicing.rules = #open
* identifier contains
    DOHfhudcode 0..1 and
    otherID 0..1
* identifier[DOHfhudcode] ^short = "Health Facility Code (HFC)"
* identifier[DOHfhudcode] ^definition = "Health Facility Code (HFC)"
* identifier[otherID] ^short = "Use of other facility codes"
* identifier[otherID] ^definition = "PhilHealth Accreditation Number (PAN)\nPhilHealth Employer Number (PEN)"
* type from ph-nhdr-organization-type (example)
* type.coding from $OrganizationTypeValueSet (extensible)
* alias ..0
* partOf ..0
* contact ..1
* endpoint ..0