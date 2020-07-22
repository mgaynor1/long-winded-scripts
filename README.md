# Long-winded Scripts
This is a collection of scripts that took me a large amount of time to put together. 

## Occurrence Data
I really wanted to download data from 'idigbio', 'gbif', and 'bison' and keep specific columns - therefore I put together these scripts to help me do just that. See the OccurrenceData folder to see more. 

| Column | Description |
| ----------- | ----------- |
| name | scientific name, http://rs.tdwg.org/dwc/terms/scientificName |
| basis | basis of record, http://rs.tdwg.org/dwc/terms/basisOfRecord |
| date | event data, 	http://rs.tdwg.org/dwc/terms/eventDate |
| institutionID | institution ID, http://rs.tdwg.org/dwc/terms/institutionID |
| collectionCode | collection code, http://rs.tdwg.org/dwc/terms/collectionCode |
| collectionID | collection ID, http://rs.tdwg.org/dwc/terms/collectionID |
| country | country, 	http://rs.tdwg.org/dwc/terms/country |
| county | county, http://rs.tdwg.org/dwc/terms/county |
| state | stateprovince, http://rs.tdwg.org/dwc/terms/stateProvince |
| locality | http://rs.tdwg.org/dwc/terms/locality or 	http://rs.tdwg.org/dwc/terms/verbatimLocality |
| Latitude | http://rs.tdwg.org/dwc/terms/decimalLatitude |
| Longitude | http://rs.tdwg.org/dwc/terms/decimalLongitude |
| ID | idigbio = uuid, gbif = key, bison = occurrenceID |
| coordinateUncertaintyInMeters | http://rs.tdwg.org/dwc/terms/coordinateUncertaintyInMeters |
| habitat | http://rs.tdwg.org/dwc/iri/habitat |
| prov | indicates who provided the data: gbif, bison, or idigbio |


