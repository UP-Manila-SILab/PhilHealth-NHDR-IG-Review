Invariant: PH-00001
Description: "Not a valid PIN format."
* severity = #error
* expression = "matches('^[0-9]{2}-[0-9]{9}-[0-9]{1}$')"

Invariant: PH-00002
Description: "Identifier.system must be identified."
* severity = #error
* expression = "system.exists()"