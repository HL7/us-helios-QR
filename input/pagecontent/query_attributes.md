### Minimization of Queries

An ideal query indicates to the EHR the exact data necessary to satisfy the case investigation or other public health agency use case. Overbroad queries increase the cost and processing time for the responding system. 

To minimize costs and response time:
-  Constrain results to a Date Range
-  Search for resources by linked Encounters
-  Request specific resources by code

Another effective strategy is to query resources by category rather than individual codes. For instance, instead of requesting each lab test using separate LOINC codes, broader categories like laboratory or vital signs can be used to capture a wider range of related data in a single request. This method retrieves a larger, more relevant set of data in a single call. Commonly used FHIR resources that contain category elements include:
- Condition
- DiagnosticReport
- DocumentReference
- MedicationRequest
- Observation
- Procedure
- ServiceRequest

Although some FHIR servers support retrieving large amounts of data with a single operation, such as $export or [$everything](https://hl7.org/fhir/patient-operation-everything.html), this approach is likely to retrieve more data than is required for Case Investigation on a single patient. Population Health and Epidemiological use cases may consider the [Bulk Data](https://hl7.org/fhir/uv/bulkdata/export.html) approach, which has its own [Helios Bulk Data Priority Area](https://confluence.hl7.org/spaces/PH/pages/204276822/Bulk+Data).

### Query Frequency

There is no guidance for how frequently queries should be initiated for a given patient or case. This lack of direction may lead to automated or recurring queries that are too frequent or prolonged, resulting in inefficient use of system resources. During implementation, the public health agency program should work with data exchange partners to optimize query frequency and volume, ensuring timely data retrieval without overloading the system. For repeated queries for updated information, the program should set realistic expectations for the timeliness of data needed to support activities and individual follow-up services.

### Query Quantity

There is no guidance on how many individuals within a population or condition should be queried. This absence of direction may lead to automated queries for the entire affected population on a recurring basis, resulting in inefficient use of system resources. During implementation, the public health agency program should collaborate with data exchange partners to ensure that queries align with the program's actual data usage. For instance, data that will not be actively used should not be queried simply because it is possible. If a program does not intend to follow up on case reports for a specific respiratory disease, then automated FHIR queries triggered by positive ELR messages should not be implemented.

### Query Specificity

For the conditions of interest to a public health agency program, it is important to identify which ones offer the most benefit based on specific workflows. For instance, if a condition is rarely followed up on, automating FHIR queries for additional information may not be an efficient use of system resources.

### Consolidation of Data from Multiple Sources

When using a fan-out query to multiple potential responders, implementers must understand the implications of receiving data from various sources and how to reconcile potentially duplicate or conflicting information. Implementers decide how and when to consolidate data from multiple sources. Best practices include:
- Maintaining traceability between data and sources
- Retaining sufficient metadata to reverse merges if errors are discovered later
- Preserving audit trails to track what data was accessed during an event
