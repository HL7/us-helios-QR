Because measles is so highly contagious, healthcare providers often notify PHAs by phone as soon as measles is suspected instead of waiting for a confirmatory lab result. During this initial call, basic patient contact information is manually recorded to facilitate timely follow-up. Once the test result is available and returns positive, an Electronic Laboratory Report (ELR) is transmitted to the PHA for further investigation. 

To assess exposure risk and identify possible transmission chains, case investigators conduct interviews with the patient or their caregiver as well as anyone they have come in contact with during their infectious period. This may include family members, coworkers, classmates, or other patients in a clinic waiting room, creating significant burden for both case investigators and reporters. Additional context may be needed from the treating provider, especially for information not captured in ELRs. Key data collected at the point of care could be accessible via FHIR query, eliminating some need for manual collection. 

### Actors

-	**EHR:** Responds to FHIR queries from PHA and supplies patient, encounter, and clinical data. 
-	**PHA Case Investigation or Surveillance System:** Issues FHIR queries to retrieve relevant information from provider systems. 


### Benefits

By automating data retrieval from EHR systems, the need for manual outreach to providers is reduced, saving time and effort for both clinical staff and case investigators. Structured queries also ensure higher data accuracy, as information is pulled directly from the medical record without manual transcription. 

For a highly contagious disease like measles, rapid access to relevant patient and encounter data is critical. This enables PHAs to identify exposure settings, trace contacts, assess risk to vulnerable populations, and initiate timely containment measures.  

### Triggering Event

FHIR queries related to measles investigations could be initiated through both automated and manual triggers: 
-	**Automated:** Receipt of a positive lab result for measles 
-	**Manual:** Case investigator flags a case for follow-up 

### Query Content

The content of the FHIR queries focuses on retrieving clinical and contextual data relevant to measles exposure and transmission, including: 
-	**Patient Demographics:** Name, address, phone number, email, race/ethnicity 
-	**Encounter Data:** Visit dates, facility and provider information 
-	**Immunization Records:** Measles/Mumps/Rubella (MMR) vaccination history 
-	**Travel History:** Recent travel to areas with active outbreaks 
-	**Occupation and Employer:** Especially if working in schools, daycare centers, healthcare facilities, or other high-risk environments 
-	**Social and Religious History:** Attendance at group events, religious services, or community gatherings 
-	**Pregnancy Status:** To inform follow-up care and risk mitigation 
-	**Provider Notes:** Free-text entries that may contain additional exposure information 

## Data Usage

The information retrieved through FHIR queries can be used to support many aspects of measles case investigation and public health agency response. Once incorporated into the case management system, the data help investigators confirm diagnoses, identify potential exposure sites, and conduct effective contact tracing. Exposure context can be identified more quickly when these data are retrieved directly from the medical record. 