# Long-winded Scripts
This is a collection of scripts that took me a large amount of time to put together in R and python. I also am adding scripts to share with others.   
      - Occurrence Data (R).  
      - SoilGridDownload (python3).        
      - Convex Hulls (R).     
      - iDigBio Search Bar (R).

## Occurrence Data
I really wanted to download data from 'idigbio', 'gbif', and 'bison' and keep specific columns - therefore I put together these scripts to help me do just that. See the OccurrenceData folder to see more.  - NOTE: A talented undergraduate has updated this script and will be publishing a package called **gators: georgraphic and taxonomic occurrence record scrubbing** - stay tune for the citation. If you plan to publish updated code for the same purpose, cite this repository which will be updated with a link to hers when it becomes avaliable.  

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


## Soil Grid Download
Downloading Soil Grids v2.0 for North America using python3 (in Juypter Notebook). Lots of help from  Mike Belitz [(Github: Mbelitz)](https://github.com/mbelitz) on this one! 

## Convex Hulls  
This script shows how to take occurrence records, create a convex hull, and add two different types of buffers.     
