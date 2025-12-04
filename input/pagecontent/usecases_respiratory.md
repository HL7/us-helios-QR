The Respiratory Virus Hospitalization Surveillance Network (RESP-NET) monitors hospitalizations related to COVID-19, RSV, and influenza. This data comes from Syndromic Surveillance (SS), Electronic Laboratory Reporting (ELR), or from Local Health Jurisdictions (LHJs) adding in missing cases. Currently, any cases obtained from SS that do not have confirmed laboratory diagnoses must be sent back to LHJs where they must manually follow up on the case to find the necessary data before it can be sent back for reporting to RESP-NET. To improve this process, the Washington State Department of Health (DOH) and King County plan to test an automated system for querying Qualified Health Information Networks (QHINs) under the Trusted Exchange Framework and Cooperative Agreement (TEFCA) using Skylight’s Query Connector.  

### Actors

-	**FHIR Exchange Mechanism:** WA DOH queries a QHIN using demographics from V2 or FHIR messages through CDC’s Query Connector. The QHIN sends the query to the EHRs specified within the query and the response is sent back to WA DOH.  
-	**Data Source System:** Healthcare provider EHRs, connected through a QHIN 
-	**Data Destination System:** WA DOH’s Aidbox FHIR server. 

### Benefits

Using Query and Response for reporting cases to CDC’s RESP-NET will help in reducing manual efforts for WA DOH and the State’s participating jurisdictions through query automation while providing more comprehensive data for analysis and reporting.  

### Triggering Event

The triggering event is receipt of a HL7 V2 SS or ELR message being received through the Syndromic Surveillance system or the RAINIER suite as the data pipeline for Washington Disease Reporting System (WDRS). 

### Query Content

The query content includes demographics data, and the response contains all relevant information related to their test results and/or hospital stay. This includes, but is not limited to: 
-	Demographics 
-	Lab test results 
-	Conditions (i.e. RSV, FLU, or COVID-19) 
-	Observations 
-	Hospitalization status 

## Data Usage

The returned data will be used by WA DOH for enhancing the respiratory surveillance system through automation and more complete data gathering.