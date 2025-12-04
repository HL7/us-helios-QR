The goal of the Newborn Screening (NBS) query use case is to ensure that public health agency programs have access to the data they need to effectively care for newborns with potential hearing and cardiac conditions. The application of the FHIR query & response paradigm can help to ensure that newborns identified for follow-up through bedside screening at birthing facilities receive the follow up and care they require. These results typically come in the form of an interpretation of screening data resulting in a value of either “pass” or “refer”, where “refer” often triggers further diagnostic testing and/or services provided to the newborn and their family. While HL7 version 2 (v2) standards for transmitting early hearing detection and intervention (EHDI) and critical congenital heart disease (CCHD) results from EHRs to public health agency systems have existed for many years, there is very little practical implementation of these standards and data is still largely exchanged through manual and paper-based workflows. 
FHIR offers new opportunities for NBS programs to proactively access screening results captured by birthing facilities. The data exchange pattern described here can be extended to additional reportable conditions, such as cystic fibrosis or other congenital diagnoses. 

### Actors

-  The newborn screening system in use by the jurisdictional program will play the role of the FHIR client querying for data. 
-  Alternatively, an intermediary system (such as an integration engine) or third-party tool may play the role of the FHIR client on behalf of the NBS system. 
-  The EHR system in use at a birth facility will play the role of the FHIR server. Intermediaries such as a Health Information Network (HIN) may facilitate the FHIR query. 

### Benefits

Benefits for NBS programs include improving the accuracy, completeness and timeliness of EHDI and CCHD reporting as well as saving staff time by replacing manual processes with automated ones. Benefits for birthing facilities include the automation of existing manual reporting processes, a reduction in redundant documentation of screening results in multiple systems and ensuring the best care for newborns with potential hearing or cardiac conditions. 


### Triggering Event

The query for newborn screening results may be initiated by any number of triggering events that notify the NBS program of the birth of the child. This may include HL7v2 ADT messages, the receipt of a dried blood spot order or specimen or notification from the local Vital Records Office. Any triggering event must contain enough demographic information on the newborn to be able to uniquely identify the patient in the birthing facility EHR system. 

### Query Content

The first FHIR interaction is for positive identification of the newborn in the birthing facility EHR system. Demographics from the triggering event are used by the FHIR client to formulate a FHIR query to retrieve the Patient resource. Depending on the capabilities of the FHIR server, this may use either a standard Patient search or the $match operation. Once a matching Patient resource has been returned to the FHIR client, one or more subsequent queries for clinical data are constructed. Common Observations queried for, typically via LOINC code, include: 

**CCHD  - Critical Congenital Heart Defects**
-	CCHD Newborn Screening Interpretation (LOINC: 73700-7) 
-	Infant factors that affect newborn screening interpretation (LOINC: 57713-0) 
-	Birth weight (LOINC: 8339-4) 

**EHDI  - Early Hearing Detection and Intervention**
-	Newborn hearing screen of Ear - right (LOINC: 54109-4) 
-	Newborn hearing screen of Ear - left (LOINC: 54108-6) 
-	Hearing loss risk indicators [Identifier] (LOINC: 58232-0) 

## Data Usage

The triggering events received by the NBS program contribute to the denominator of infants in the jurisdiction. NBS staff use the data returned by the FHIR queries to ensure that all infants have received screening (or have been identified as abstaining from screening) and ensure that additional diagnostic testing is provided to those newborns who have outcomes of “refer”. 