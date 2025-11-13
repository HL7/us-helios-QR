// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Instance:		NBSExampleScenario
InstanceOf: 	ExampleScenario
Description: 	"Newborn Screening Query & Response Example"
Usage: 			#example
* version = "1.0.0"
* name = "Newborn Screening - Bedside Screening"
* status = #active "Active"
* publisher = "Helios FHIR Accelerator"
* purpose = "This ExampleScenario describes the workflow to exchange of early hearing detection and intervention (EHDI) and critical congenital heart disease (CCHD) results from EHRs to public health agency systems."
* actor[0].actorId = "PublicHealthProgram"
* actor[0].type = #entity
* actor[0].name = "Public Health Newborn Screening Program (EHDI/CCHD)"
* actor[0].description = "The Public Health Newborn Screening Program receives, and where appropriate, acts on the bedside screening results gathered by a healthcare provider at the bedside for early hearing detection and intervention (EHDI) and/or critical congenital heart disease (CCHD) screening results."
* actor[1].actorId = "HealthcareOrganization"
* actor[1].type = #entity
* actor[1].name = "Healthcare Organization Conducing Bedside Newborn Screening (EHDI/CCHD)"
* actor[1].description = "The healthcare organization performs and records the outcome of bedside screening results for early hearing detection and intervention (EHDI) and/or critical congenital heart disease (CCHD) for reporting to the appropriate Public Health Agency."
* actor[2].actorId = "Intermediary"
* actor[2].type = #entity
* actor[2].name = "Network or Intermediary Facilitating Data Exchange"
* actor[2].description = "An optional interoperability parnter facilitating the exchange of bedside screening results for early hearing detection and intervention (EHDI) and/or critical congenital heart disease (CCHD) between a healthcare organization and an appropriate Public Health Agency."
* instance[0].resourceId = "InfantPatientRecord"
* instance[0].resourceType = #Patient
* instance[0].name = "Infant Patient Record"
* instance[0].description = "The FHIR Patient resource representing the infant for whom bedside screening results are being sought."
* instance[1].resourceId = "ScreeningObservationRecord"
* instance[1].resourceType = #Observation
* instance[1].name = "Infant Bedside Screening Result Record"
* instance[1].description = "The FHIR Observation resource containing a result value related to either early hearing detection and intervention (EHDI) or critical congenital heart disease (CCHD)."
* process[0].title = "FHIR RESTful Query"
* process[0].description = "The process of generating  a FHIR RESTful API query to retrieve bedside screening results and consumption of the returned results."
* process[0].preConditions = "The Public Health Newvborn Screening Program must be aware of the existance of the infant and positively identify the infant in the Healthcare Organization's FHIR server."
* process[0].postConditions = "The Public Health Newborn Screening Program will have integrated any returned bedside screening results and made the data available to end users to support program activities."
* process[0].step[0].operation[0].number = "1.1"
* process[0].step[0].operation[0].type = "FHIR RESTful Query"
* process[0].step[0].operation[0].name = "FHIR RESTful Query for Bedside Screening Results"
* process[0].step[0].operation[0].initiator = "PublicHealthProgram"
* process[0].step[0].operation[0].receiver = "HealthcareOrganization"
* process[0].step[0].operation[0].description = "The Public Health Newvborn Screening Program generates a FHIR RESTful API query to retrieve bedside screening results for a known infant."
* process[0].step[1].operation[0].number = "1.2"
* process[0].step[1].operation[0].type = "FHIR RESTful Response"
* process[0].step[1].operation[0].name = "FHIR RESTful Response Returning Bedside Screening Results"
* process[0].step[1].operation[0].initiator = "HealthcareOrganization"
* process[0].step[1].operation[0].receiver = "PublicHealthProgram"
* process[0].step[1].operation[0].description = "The Healthcare Organization returns a FHIR RESTful API response containing bedside screening results for the appropriate infant."
