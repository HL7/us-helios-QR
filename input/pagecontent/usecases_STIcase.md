When a reportable STI case is received by a public health agency via electronic laboratory reporting (ELR), electronic case reporting (eCR), or manual reporting, public health agency case investigators may require supplemental clinical and epidemiological data from healthcare providers to complete case evaluation. This data supports accurate case classification, appropriate treatment verification, and partner services coordination. 

Traditionally, investigators obtain this supplemental information through manual processes such as telephone outreach, fax, secure email, or direct access to provider electronic health record systems. These methods are often time-consuming and resource intensive. 

FHIR provides a standardized framework to enable automated querying of provider EHR systems for supplemental case data. Implementing FHIR-based workflows can significantly reduce manual workload, improve data completeness and timeliness, and enhance public health agency response efficiency. 

### Actors

The FHIR client responsible for querying supplemental data can be implemented in several forms: 
-	**A dedicated third-party application** with a user interface may be hosted by the public health agency to facilitate query initiation and data review. 
-	**An integration engine** may act as the FHIR client, automatically initiating queries based on predefined triggers, such as the receipt of an ELR message. 
-	**The disease surveillance system** itself may be configured to function as a FHIR client, initiating queries based on triggers defined within its database or workflow engine. 

In all cases, the healthcare provider’s electronic health record (EHR) system functions as the FHIR server, responding to authorized query requests from the FHIR client. 

### Benefits

Using FHIR queries to retrieve supplemental data for STI investigations offers several key benefits. It improves timeliness and efficiency by automating data retrieval, reducing reliance on manual processes like phone or fax. FHIR enables standardized, real-time access to structured clinical information such as symptoms, treatment, and pregnancy status, leading to more complete and accurate case assessments. This approach reduces the burden on case investigators and health care providers, supports faster treatment verification and partner services, and enhances the overall public health agency response. Additionally, it provides a scalable solution that can be applied across multiple diseases and healthcare systems. 

### Triggering Event

The primary trigger for retrieving supplemental data in an STI case investigation is the receipt of a reportable condition notification, typically through an electronic laboratory report (ELR). This prompts the public health agency system to identify missing clinical or epidemiological information needed for case completion. Additional triggers may include receipt of an electronic case report (eCR), manual case entry, or automated detection of incomplete data within the surveillance system. Once triggered, a FHIR query can be initiated to retrieve the missing information directly from the provider’s EHR. 

### Query Content

The supplemental data elements typically requested for STI cases include: 
-	Full Patient demographics such as name, age, gender, ethnicity, address, phone number, etc 
-	Reason for Visit 
-	Risk History 
-	Clinical Symptoms 
-	Pregnancy status 
-	Diagnosis 
-	Treatment  
-	Medications 

### Data Usage

Public health agencies rely on this supplemental information to implement effective strategies for controlling STIs, improving health outcomes, preventing transmission, and addressing the social and structural factors that contribute to higher risks of infection.  