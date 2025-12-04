The development and implementation of FHIR-based RESTful queries for public health data exchange involves several key partner roles. Later sections of this document outline the specific expectations and activities for each role during this process. The major roles include:

-  Public health agency program (e.g., state, tribal, local, territorial agency)
-  Data source organization (e.g., clinical healthcare organization)
-  FHIR client health information technology (HIT) vendor (e.g., the system requesting data)
-  FHIR server HIT vendor (e.g., the system responding to data requests)
-  Qualified Health Information Network (QHIN), Health Information Network (HIN), Health Information Exchange (HIE)

Both FHIR client and FHIR server functionalities may integrate directly into the primary systems used by public health agency programs and data source organizations or operate as standalone applications. The technical implementation of these functionalities is largely independent of the considerations discussed in this document.

Different public health agency use cases may involve various types of data source organizations, including:

-  Healthcare providers (e.g., hospitals and clinics)
-  Payers
-  Other public health agency programs (within the jurisdiction or neighboring jurisdictions)
-  Community-based organizations
-  Additional entities as determined by the public health agency program sharing the data
-  Health Information Networks/Health Information Exchanges (HIN/HIE)


### Role Expectations

Public Health Agencies, Federal Agencies, QHINs, HIEs, EHRs, and payers represent key roles involved in exchanging data using FHIR RESTful queries. Each of these roles is expected to implement basic technical and operational functionalities to support FHIR queries, regardless of the technology chosen by trading partners. The basic functionalities are described below, and additional requirements may be documented on a use-case-specific basis.

#### Foundational Technical Requirements

**FHIR Client HIT Vendors**

Develop functionality to:
- Identify one or more query trigger events to initiate the Query and Response workflow. The nature of the triggering event will vary by use case and may include, but is not limited to, the receipt and parsing of data from a submitter (e.g., v2 message, CDA), ingestion of a flat file from a data submitter, or end-user actions in a public health agency system.
- Use the demographics provided in the triggering event to execute a patient lookup in the FHIR server of the data holder, supporting Patient.search and/or the Patient $match operation.
- Validate the returned Patient resource(s) before searching for clinical data. This includes handling non-happy path outcomes, such as no matching patients, one or more low-confidence matches, and multiple high-confidence matches. Human input may be necessary to identify the appropriate Patient resource for clinical queries.
- Based on the nature of the triggering event, execute one or more queries for relevant clinical and/or administrative data from the FHIR server.
- Parse, store and/or display retrieved data as appropriate for the use case.

**FHIR Server HIT Vendors**

Develop functionality to:
- Respond to Patient.search and/or the Patient $match operation request from the FHIR client
- Respond to queries from the FHIR client for relevant clinical and/or administrative data

#### Foundational Operational Requirements

**Public Health Agency Programs**

Develop processes and functionality to work with the data source organization to:
- Implement any necessary data use agreements to exchange data via FHIR queries, which may include data governance and data use agreements.
- Map the required data elements to one or more queries for FHIR resources, including parameters that limit data requests to the minimum necessary.
- Implement functionality and workflows to address ambiguous patient look up outcomes before proceeding with subsequent queries.
- Implement functionality and workflows to enable end users or public health agency systems to utilize the returned data effectively.

**Data Providers**

Develop processes and functionality to work with the public health agency program to:
- Implement any necessary data use agreements for exchanging data via FHIR queries, which may include data governance agreements.
- Clearly document the scope of data available through FHIR query.

### Data Exchange Partner Engagement 

Implementing FHIR-based RESTful queries requires a strong partnership between public health agencies and data providers, including healthcare providers, payors, and other public health agency programs and jurisdictions. When engaging potential data exchange partners, develop a comprehensive outreach and communication strategy. Public health agency programs have had mixed experiences with potential partners for FHIR-based projects, but some common insights and best practices are beginning to emerge.

**Intentionally engage partners**
- Use a layered approach, leveraging existing relationships but escalate to decision makers able to approve commitment to the project and the necessary resource allocations
- Identify technical and/or clinical champions that can help make the case for implementation
- Consult with the legal teams from all partners early in the process

**Provide clear, concise documentation early**
- Clearly document the use case and data to be exchanged
- Emphasize the expected benefits to all partners
- Align project documentation with expected data use agreements and data governance processes

**Leverage policy and regulatory requirements**
- Be clear regarding the legal authority to access the requested data
- Be aware of audit or reporting requirements for all partners

**Reuse tools and approaches**
- Leverage previous successes for new projects
- Communication regularly with partners and colleagues in other programs or jurisdictions to replicate successful implementations
