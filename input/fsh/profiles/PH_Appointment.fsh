Profile: PH_Appointment
Parent: Appointment
Id: PH-Appointment
Title: "PH Appointment"
Description: "A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific date/time."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Appointment"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
* identifier ..0
* status from $AppointmentStatusVS (required)
// * status ^short = "Yes or No indicator if the patient have an appointment."
* cancelationReason ..0
* serviceCategory ..0
* serviceType ..0
* specialty ..0
* appointmentType ..0
* reasonCode ..0
* reasonReference ..0
* priority ..0
* description ..0
* supportingInformation ..0
// * start ..0
// * end ..0    Enabled to fulfill constraint. Re-mapped in the next release.
* minutesDuration ..0
* slot ..0
* created ..0
* comment ..0
* patientInstruction ..0
* basedOn ..0
// * participant ..0    Can't disable elements that are mandatory by default
* participant.extension ..0
* participant.modifierExtension ..0
* requestedPeriod ..1
