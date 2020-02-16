# Downloading Data

# Load source
source("functions/DownloadingDataMore.R")

# Make synoymn list
Shortia_galacifolia <- c('Shortia galacifolia', 'Sherwoodia galacifolia')

# Download and name
spocc_combine(Shortia_galacifolia, "data/raw/Shortia_galacifolia_raw_021620.csv")


