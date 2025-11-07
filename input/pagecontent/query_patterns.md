A FHIR client must direct a RESTful query to a specific FHIR server endpoint, which varies based on the use case and the query itself. 

# Common Query Patterns

## Source System

The system which originally submitted data  to a public health agency is queried for additional information.

**Example:** A CDA-based electronic case report (eCR) is submitted from a provider site; the public health agency investigating the case queries the original provider site for additional data regarding patient hospitalization, treatment and follow-up.

## Related System

A system related to the submitted data (but not the submitting system) is queried for additional information.

**Example:** A v2 electronic lab reporting (ELR) message is received from the performing lab; the public health agency investigating the report queries the order placer’s site for additional data relating to patient demographics or treatment.
