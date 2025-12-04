### Data Governance

Data governance for public health FHIR Query and Response is essential to ensure responsible management, access, and exchange of protected health information. It establishes clear policies and procedures for data quality, security, privacy, and interoperability across participating entities. In the context of FHIR-based public health reporting, data governance defines who can query or respond to clinical data requests, the conditions for doing so, and the standards for data validation. A key element of this governance is the use of Data Use Agreements (DUAs) or Participation Agreements, such as [New York’s SCPA](https://nyehealth.org/wp-content/uploads/2024/09/SCPA-package.pdf), which outline the specific terms under which data may be shared between providers and Public Health Agencies, including permitted uses and security protocols. These agreements ensure compliance with regulations such as HIPAA, clarify roles and responsibilities among partners, and foster trust by safeguarding patient privacy while enabling accurate, timely, and actionable data sharing to enhance public health surveillance and response efforts.

### Legally Appropriate Access

TEFCA encourages, but does not require, providers to respond to queries. Healthcare providers need information about the requestor to determine whether to respond to a public health agency query. In some jurisdictions, providers may have legal obligations to respond to certain public health authorities while being prohibited from responding to others. Existing regulations, workflows, and data-sharing agreements should guide public health authorities in selecting which provider organizations to query for data.

FHIR facilitates both “business-to-business” trust between provider organizations and public health authorities (PHAs) and access for individual users through SMART on FHIR. When authorizing a FHIR client, provider organizations implement policies that dictate the conditions for approving requests. For example, a provider may choose to respond to requests from organizations within their state while declining those from organizations outside their state.

### Authority to Query

Some jurisdictions interpret governing statutes as prohibiting case investigation queries—posing significant challenges for healthcare organizations. This interpretation obstructs investigations within systems and fails to reduce the need for manual case follow-up processes currently performed by jurisdictions. 

In contrast, other jurisdictions have established cooperative Data Use Agreements (DUA) to support public health initiatives both within states, such as [Washington’s Common Agreement for OHP HIE](https://www.onehealthport.com/hie/contracting), [Maryland with CRISP](https://www.crisphealth.org/about-crisp/policies/), and across state lines, like [New York's tri-state DUA](https://health.ny.gov/health_care/medicaid/redesign/dos/mcds/dua_instructions.htm). These agreements facilitate data sharing for outbreak responses, cancer cases (N-IDEAS), and immunization data ([IZ Gateway](https://www.cdc.gov/iis/iz-gateway/index.html)), informing new agreements under TEFCA.

### Federal Regulatory and HIT Certification Requirements

A description of the existing federal certification requirements and the types of data likely to be available via FHIR API query may be found on the [Support](support.html) page. 

### Relationship to the Trusted Exchange Framework and Common Agreement (TEFCA)

Guidance on using [TEFCA](https://rce.sequoiaproject.org/tefca/) to facilitate queries and TEFCA Exchange Purposes are outlined in the [Public Health standard operating procedure (SOP)](https://rce.sequoiaproject.org/wp-content/uploads/2024/08/XP-Implementation-SOP-Public-Health-PH.pdf).

The Trusted Exchange Framework provides the infrastructure for patient discovery, FHIR Push, and FHIR Query capabilities. It encourages responding nodes to return, at a minimum, USCDI data classes and data elements maintained and requested by the Initiating Node, in accordance with Applicable Law.

The [Common Agreement](https://rce.sequoiaproject.org/wp-content/uploads/2024/11/Common-Agreement-2.1_ASTP-508.pdf) authorizes six types of Exchange Purposes (XPs), including Public Health, allowing TEFCA participants to securely share and request information from PHAs. However, due to the complexities and variations in laws regarding public health exchange purposes, the Common Agreement states that PHAs are not required to respond to any queries from requesters, although they are encouraged to do so as appropriate under Applicable Law.

### Security, Authentication, Authorization, Access

TEFCA defines an automated mechanism for Client Registration, but until the FHIR at Scale Taskforce (FAST) [SSRAA Implementation Guide](https://hl7.org/fhir/us/udap-security/) is widely adopted, PHAs will need to manually register their clients at responding organizations or work with intermediaries who provide FHIR connectivity. 

Automated data retrieval that supports a Public Health workflow, requires either: 

-	A backend system trust between PHAs and responders (including HIEs), or 
-	A patient’s authorization for data retrieval on file at the requesting organization 

In addition to the audit and logging requirements defined in the [HIPAA Security Rule](https://www.hhs.gov/hipaa/for-professionals/security/index.html) and TEFCA Common Agreement, PHAs should consider implementing the [Privacy and Security requirements defined by the ASTP’s Certified EHR Technology](https://www.ecfr.gov/current/title-45/subtitle-A/subchapter-D/part-170/subpart-C/section-170.315). Generally, this means retaining a tamper-resistant log of all transactions made to retrieve data and to access data and assigning appropriate role-based security to Case Investigators to minimize and detect misuse. 

The current state of Public Health data exchange relies on three different models of authorization: 

1.	**Backend system trust** 
A PHA may establish FHIR connectivity with the State HIE that receives data from member healthcare organizations. A data use agreement, signed by the PHA, HIE, and its members allows the PHA to retrieve data without requiring individual user authentication. This approach simplifies connectivity as compared to connecting to each member organization directly. 

2.	**Patient-authorized data exchange (Individual Access Use Case)** 
Patients can initiate data sharing by authenticating themselves with a state portal and querying for their data. This is useful for preparing International Patient Summaries and consolidating immunization records but is less useful for case investigation. 

3.	**Case Investigator log in to an intermediary, such as an HIE, or directly into an EHR (including SMART on FHIR)**  
Case Investigators may be granted individual logins to access EHRs, web portals hosted by HIEs, or other online data repositories, however this approach is heavily manual and can be time consuming.

