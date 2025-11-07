# FHIR Query Basics

Public health agency FHIR queries involve a two-step process once reportable data is identified in an electronic health system: (1) patient identification and matching followed by (2) a FHIR query to retrieve additional data. First, identify which responders hold data about the patient. If it is already known which organization holds the relevant data, a targeted FHIR query can be used to obtain the FHIR Patient.id. Second, perform a query for supplemental patient information needed to complete the public health agency workflow.


# Data Payloads

A critical element of implementing FHIR Query and Response is mapping data elements for a particular use case to FHIR Resources. While many data elements will be easily mappable, others, particularly those related to more complex data models or those that are unique to a given use case or program, may be more difficult. 

Implementers should start by gathering the functional data element requirements of the end users. Compare these requirements to existing workflows to understand what and how these data are collected; then map these data to FHIR resources. 

Not all FHIR Resources or data elements are supported by all HIT products and EHRs. Individual variation in the implementation of an HIT product, such as an organization’s EHR, impacts which data are exposed to FHIR APIs. Not all data elements relevant to a given use case may be available via FHIR RESTful API. 

Given the broad support of USCDI data elements across the healthcare space and the related representation of these` data elements as profiles in the HL7 FHIR US Core Implementation Guide, public health agency programs are encouraged to begin implementation projects by focusing on data elements contained within USCDI and US Core before attempting to implement a comprehensive FHIR-based strategy. Implementers should also consider USCDI+ data sets and the US Public Health Profiles Library (USPHPL) as relevant resources, however, they should be aware that implementation support for these may be less widespread than that for USCDI and US Core. We also believe that public health agencies will have greater success in expanding the existing suite of widely supported data elements by working collectively with federal authorities and public health associations (e.g., CSTE, ASTHO, NACCHO) to develop standardized data element definitions, rather than by individually making requests of HIT vendors.

