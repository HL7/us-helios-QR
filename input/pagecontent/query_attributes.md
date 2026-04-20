### Optimization of Queries

An ideal FHIR query indicates to the responding system, as specifically as possible, the data necessary to satisfy the case investigation or other public health agency use case. Overly broad queries increase the cost and processing time for the responding system and may make the responding system less likely to provide the necessary data. Also, the authority of a public health program to access data may be limited to specific data sets and overly broad queries may return data that the program is not authorized to hold.

FHIR queries can be optimized by constraining the query across one or more different axes including:
- Constrain the query to just the resources of interest
    - For example, if immunization data is not relevant for the use case, the query should not request Immunization resources be returned
- Constrain the query to a specific context
    - For example, query for data linked only to a specific relevant encounter
- Constrain the query to specific category of data
    - For example, with flexible resources such as Observation, broader categories like laboratory or vital signs can be used to request a range of related data in a single request
    - Commonly used FHIR resources that contain category elements include:
        - Condition
        - DiagnosticReport
        - DocumentReference
        - MedicationRequest
        - Observation
        - Procedure
        - ServiceRequest
- Constrain the query by a specific code
    - For example, specific vital sign types (e.g., heart rate, blood pressure) or laboratory results can be specified for retrieval
- Constrain the query to a specific date range
    - Date based constraints may take multiple forms including:
        - A bounded range
        - An open range (e.g., all data since a particular time)
        - Only the most recent iteration of the data
    - Date range constraints are critical for data classes that may have many instances (e.g., vital signs) or where the use case is triggered by an initial event (e.g., the diagnosis of a reportable condition)

When implementing a specific use case, careful consideration of query constraints is critical to ensure that queries, and the data they return, are aligned with network policies and local regulations and policies.

Although some FHIR servers support retrieving large amounts of data with a single operation, such as $export or [$everything](https://hl7.org/fhir/patient-operation-everything.html), this approach is likely to retrieve more data than is required for Case Investigation on a single patient. Population Health and Epidemiological use cases may consider the [Bulk Data](https://hl7.org/fhir/uv/bulkdata/export.html) approach, which has its own [Helios Bulk Data Priority Area](https://confluence.hl7.org/spaces/PH/pages/204276822/Bulk+Data). Note that the use of bulk data should be volume driven as not all population health and epidemiological use cases have volume to warrant the use of the bulk data approach.

An alternative approach is the use of a [task-based query](https://hl7.org/fhir/us/davinci-cdex/task-based-approach.html) as described in the Da Vinci Clinical Data Exchange (CDex) FHIR Implementation Guide. 

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
