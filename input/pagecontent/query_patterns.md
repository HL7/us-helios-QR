A FHIR client must direct a RESTful query to a specific FHIR server endpoint, which varies based on the use case and the query itself. 

### Common Query Patterns

#### Source System

The system which originally submitted data  to a public health agency is queried for additional information.

**Example**: A CDA-based electronic case report (eCR) is submitted from a provider site; the public health agency investigating the case queries the original provider site for additional data regarding patient hospitalization, treatment and follow-up.

#### Related System

A system related to the submitted data (but not the submitting system) is queried for additional information.

**Example**: A v2 electronic lab reporting (ELR) message is received from the performing lab; the public health agency investigating the report queries the order placer’s site for additional data relating to patient demographics or treatment.

#### Consolidated Data Source

An external system which collates data from multiple sources, such as a local HIE, is queried for additional information.

**Example**: An ELR or ECR is received; the public health agency investigating the report queries the local HIE for data on the patient to access information from systems unrelated to the original report, in case the patient sought treatment at a different facility

#### Public Health Agency Program

A public health agency program queries other data sources within the jurisdiction for additional information.

**Example**: The disease surveillance program investigating a vaccine-preventable disease report queries the local immunization information system (IIS) for the individual's vaccination status and history.

#### Public Health Agency Jurisdiction

A public health agency program queries another jurisdiction for additional information.

**Example**: A public health agency program queries for additional data from a neighboring state or local public health agency regarding treatment and follow up.

#### Network - fenced

A partner network serves as the initial endpoint for the query, which is then expanded and relayed (fan-out) to multiple FHIR server endpoints that are likely to have additional information related to the original report. Grouping may be based on various characteristics, including:
- **Geography**: FHIR servers within the geographic area surrounding the patient or the reporting system
- **Referral Agreements**: FHIR servers known to receive referrals from the healthcare organization responsible for the original report

**Example**: An eCR which may warrant hospitalization is received from an ambulatory provider site. The public health agency investigating the case queries all provider sites with referral relationships to the original provider for additional data regarding patient hospitalization, treatment, and follow-up

#### Network - unfenced

A partner network serves as the initial endpoint for the query, which is then expanded and relayed (fan-out) to multiple FHIR server endpoints without any pre-existing assumptions about where care may be sought. This pattern may be useful when travel is involved as individuals may seek care outside their usual geographic area.

**Example**: An ELR or ECR is received; the public health agency investigating the report queries their TEFCA QHIN which in turn relays the query to all TEFCA participants and sub participants. 

### Point-to-Point vs Brokered/Facilitated/Networked Queries

Today, Public Health Agencies receive data from provider organizations through faxes, online portals, secure emails, and phone calls. In some states, Case Investigators are granted access directly to EHRs or HIE web portals to retrieve data manually. Data Use Agreements provide contractual authorization for PHAs to access data, and FHIR clients may be configured with matching technical authorization.

The FHIR at Scale Taskforce (FAST) [Security for Scalable Registration, Authentication, and Authorization (SSRAA) Implementation Guide](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/b2b.html) establishes a framework for requestors to register themselves with a responder when connecting for the first time. It defines the data elements required to create a business-to-business trust, including the organization name, purpose of use, and consent policy. It is extensible, allowing for [third-party certifications](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/general.html#certification-example-for-client-applications) to be included during registration. For example, a multi-state region could certify “approved” applications or requestors, and those clients could present that certification when registering themselves with a FHIR responder.

Similarly, existing agreements which allow data sharing between PHAs and data aggregators, such as state or regional HIEs, can become the contractual groundwork for authorizing FHIR data exchange. Public Health Agencies do not need to wait for TEFCA to begin connecting to the FHIR capabilities of their existing exchange partners.

Under TEFCA, QHINs will provide a single point of connection for PHAs to reach out to the nationwide network of responders. QHINs help PHAs use FHIR to connect to a network of networks, Record Locator Services, and a Directory of Requestors/Responders, following a federally supported set of standards.
