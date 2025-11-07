Public health agencies often receive incomplete demographic information as part of data submissions. This can be due to a variety of reasons including:
* The data submitter lacks the full set of demographics when the missing data is not applicable to the role played by the submitter. For example, a laboratory submitting an ELR message may not have data on race or ethnicity where it is not relevant to performing the test.
* Supplemental data beyond that included in the original submission are necessary for public health agency activities. For example, patient occupation and industry captured by a provider may not have been included as part of an original report.
* Additional data is necessary for long term follow up. For example, data regarding a caregiver or guardian of a minor may be necessary to provide services or support.
* Many demographics data elements are fluid over time and may change. For example, patient address may change but is critical for public health agency activities.
By querying a reliable source of demographics data, a public health agency program can acquire complete and up-to-date demographics for individuals of interest.

## Actors

Any public health agency system may act as the FHIR client and query a reliable data source for demographics data. The query may be generated from the system itself or from an intermediary acting on behalf of the public health agency system.  
Any system likely to be a reliable and accurate source of demographics data may play the role of the FHIR server. As noted in the examples above, the original submitter of data to the public health agency program may not be the query target as the submitter may be lacking the data necessary (as in the lab example). Potential data sources may include EHR systems in use by healthcare organizations with an established relationship with the individual, a local Health Information Exchange (HIE) or a jurisdictional master patient index (MPI). Further, a Record Locator Service (RLS) may be of assistance in identifying potential data sources. 

## Benefits

Accurate and up-to-date demographics, including contact information, makes it easier for public health agency programs to contact individuals for treatment and services purposes. Demographic elements such as race and ethnicity, address and age also play a significant role in public health data analysis to support allocation of resources. Certain data elements, such as occupation, can also support personalized care such as occupation related immunization recommendations. 