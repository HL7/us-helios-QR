### Data Exchange Roles

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
