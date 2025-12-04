Aligning public health activities with the broader realm of healthcare reduces burden, not only on public health agency programs, but also on healthcare organizations, HIT vendors, and other key partners by ensuring consistent and reusable patterns of exchange and infrastructure. The Query and Response pattern is an important tool as it enables the automation of public health data exchange, transitioning away from traditional methods such as phone calls, faxes, data abstraction, and other manual processes. There are several factors that public health should consider before initiating new data exchange patterns.

### Data prioritization across local and federal agencies

At the local level, public health agencies may prioritize reducing administrative burdens and decreasing response times for case investigations.

Federal priorities may encompass a broader scope, including TEFCA as the framework for future data exchange, which was established by the  [ASTP HTI-2 Final Rule](https://www.healthit.gov/sites/default/files/page/2024-12/ASTP_Fact_Sheet_HTI-2_TEFCA_508.pdf). TEFCA uses Cross-Community Patient Discovery (XCPD) to locate patients and uses FHIR queries to retrieve patient data.

### Similar FHIR activity in other healthcare related spaces

The broad adoption of TEFCA for Treatment and Payment purposes lays the groundwork for FHIR to be used for additional exchange purposes. As PHAs adopt TEFCA for data retrieval, they should also consider response use cases, ensuring the data they hold is made available:

- The Individual Access Use Case grants patients the right to retrieve their own data from the TEFCA network. Some states, like [Washington](https://doh.wa.gov/sites/default/files/2025-04/820316-WADOHFHIRRoadmap.pdf), are currently in the process of adopting direct access.
- As State PHAs adopt FHIR, they can choose to enable the exchange of data with other State’s PHAs. This is useful when investigating outbreaks, consolidating data for patients who move across state lines, and for jurisdictions that experience fluctuating or traveling populations.
- Some states mandate reporting to State Public Health Authorities, who then delegate investigations to County Health Departments. If both jurisdictions are using FHIR, it simplifies and standardizes the exchange of data between them.
- States often provide public dashboards with aggregated data to inform provider decision-making. With FHIR, it’s possible for Providers to incorporate this data directly into clinical workflows (e.g. Outbreak notifications and Clinical Decision Support services).

### Data governance requirements

Data governance requirements may vary across organizations. Many organizations interpret [HIPAA’s Minimum Necessary Requirement](https://www.hhs.gov/hipaa/for-professionals/privacy/guidance/minimum-necessary-requirement/index.html) as requiring PHAs to only retrieve data for patients with active cases (use individual patient query) and only retrieve minimum necessary data for those patients (using concise queries, use query parameters to restrict date range, etc.).

### Using Intermediaries

Whereas previous interoperability standards such as HL7 v2 and CDA provided public health agencies with the ability to receive data “pushed” by data submitters, FHIR offers exchange patterns beyond the typical messaging or document paradigm. RESTful API queries are just one example of this. While the Query and Response exchange pattern is a powerful tool for public health agencies to replace existing inefficient and manual data collecting workflows, it is not the only option. Public Health Agencies may also work with intermediaries such as state or regional HIEs to aggregate data to support population health and similar longitudinal use cases that exceed the scope of single patient investigations.

Query and Response is the most powerful exchange pattern for satisfying the data needs of Case Investigations by Public health agencies; the subject of interest is known (through an initial case report, electronic lab reporting, or other notification method), and data is held by exchange partners. This pattern complements other capabilities supported by FHIR and in some cases named in regulation.

### Resources and Scalability

Available resources and workforce capacity should also be taken into account. It is important to explore available tools and workforce education opportunities that may be supported by other public health agencies. 

The [Data Modernization Implementation Center](https://www.cdcfoundation.org/TEFCA-IC) program provides funding to drive public health data modernization. Three implementation centers (CRISP Shared Services; Guidehouse; Mathematica) provide support to state, local, and territorial jurisdictions. Chickasaw Health Consulting serves as the Data Modernization Implementation Center supporting Tribes and Tribal-serving organizations.

Public Health Agencies who are not already engaged with an Implementation Center can visit the [PHIG Partners webside](https://www.phinfrastructure.org/opportunities/)

The roadmap for implementation and adoption begins with a focus on electronic case reporting, immunization, and enabling FHIR connectivity between PHAs and Provider organizations through partnership with Qualified Health Information Networks (QHINs). Joining a QHIN provides scalable connectivity to Providers, HIEs, and other QHINs under TEFCA.

These efforts target high-volume, high priority use cases and engage Provider organizations who wish to enable the Public Health exchange purpose. Successful implementation strategies identified by the Implementation Centers will be shared with the public and serve as a model for broader adoption.

