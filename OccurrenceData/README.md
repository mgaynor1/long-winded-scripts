# Occurrence Data
I really wanted to download data from 'idigbio', 'gbif', and 'bison' and keep specific columns - therefore I put together these scripts to help me do just that.

*Note:* I am using R version 3.6.2 (2019-12-12) - 
```
require(dplyr) # dplyr_0.8.4 
require(tidyr) # tidyr_1.0.2
require(plyr) # plyr_1.8.5
require(spocc) # spocc_1.0.8
require(ridigbio) # ridigbio_0.3.5
require(tibble) # tibble_2.1.3
```

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

## [DownloadData.R](https://github.com/mgaynor1/long-winded-scripts/blob/master/OccurrenceData/DownloadingData.R)
The function I made to generate one dataframe with all query ('idigbio', 'gbif', and 'bison') is called *spocc_combine* (this is based on the spocc package). 

```
# Load source
source("functions/DownloadingDataMore.R")

# Make synoymn list
Shortia_galacifolia <- c('Shortia galacifolia', 'Sherwoodia galacifolia')

# Download and name
spocc_combine(synonyms_list = Shortia_galacifolia, newfilename = "data/raw/Shortia_galacifolia_raw_021620.csv")

```

