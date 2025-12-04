Tuberculosis (TB) is a life-threatening disease transmitted through the air with extensive medical and economic consequences. Every year, about 10,000 people in the U.S. are diagnosed with TB. Of these diagnoses, 87% are the result of progression of latent TB infection (LTBI) to TB disease. Thus, efficient screening for and treatment of TLBI will prevent most cases of TB disease. Unfortunately, based on data from local clinics and health systems, very few people at risk of LTBI are tested and even fewer receive appropriate treatment. 

The interferon-gamma release assay (IGRA) is a blood test for TB infection and an important component of an LTBI diagnosis. However, the IGRA alone is not sufficient to diagnose LTBI; a chest x-ray is needed to determine whether a person with a positive IGRA has TB disease or LTBI. Once LTBI is diagnosed, a full course of treatment is needed to resolve the infection and prevent TB disease.  

At present, the IGRA result is the only data available to the public health agency system; chest x-ray and treatment data are not reported. The only recourse to confirm that an individual has had an LTBI diagnosis and sufficient treatment is for local health departments to follow-up with patients and medical providers directly, either by phone or faxed form. These methods are time-consuming and resource-intensive. Because of the inefficiency of this data collection, very few patients can be assisted in confirming their LTBI diagnosis are receiving appropriate treatment.  

In addition, the electronic laboratory report of the IGRA has very limited information on risk factors for LTBI and TB disease. As a result, the public health agency system cannot prioritize outreach to those patients who are more likely to develop TB disease.  

LTBI generally only needs to be tested for and treated once. Having full capture of testing and treatment information that is available to the public health agency system could reduce unnecessary testing and treatment.  

The FHIR Query and Response paradigm provides a standardized framework to enable automated querying of provider EHR systems for supplemental screening and case data to identify patients who need support in completing LTBI screening and LTBI treatment. Implementing FHIR-based workflows can significantly reduce manual workload, improve processes to collect screening and treatment data, and enhance public health agency response efficiency. 

### Actors

-	**FHIR exchange mechanism:** In this example scenario the public health agency and the healthcare provider agree to use PULL exchange because the provider’s EHR supports FHIR-based queries from authorized entities. 
-	**Data source system:** The healthcare provider’s EHR, which includes a FHIR server. 
-	**Data destination system:** The public health agency’s infectious disease surveillance system, data warehouse and FHIR client. In this use case, the public health agency is using an enterprise-level integration engine as a FHIR client/FHIR façade.  

### Benefits

Using FHIR Query and Response for LTBI screening offers several benefits, primarily centered around enhanced data interoperability and efficiency. Specifically, FHIR facilitates the secure and timely exchange of patient data between healthcare and public health agency systems, allowing for a more comprehensive and accurate assessment of individuals at risk for LTBI. This includes quicker access to patient records and lab results, leading to better decision-making and improved patient care.  

### Triggering Event

The triggering event includes receipt of a positive TB IGRA to the public health agency infectious disease surveillance system. This prompts the public health agency system to query for supplemental information needed for case investigation. 

### Query Content

The query content includes supplemental demographic, risk, and treatment information and may include: 
-	Race and Ethnicity 
-	Place of birth (i.e. born outside of US) 
-	Preferred language 
-	Immune-compromising conditions 
-	Previous TB exposure 
-	Homelessness 
-	Incarceration 
-	Chest x-ray 
-	LTBI treatment 

## Data Usage

An estimated 87% of TB disease cases are caused by progression of LTBI to TB disease. This means that efficient screening for and treatment of LTBI will prevent most cases of TB disease and the associated devastating consequences. 