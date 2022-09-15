#### DATA DOWNLOAD 
#### DATE DOWNLOADED: 15 SEPTEMBER 2022

#### LOAD PACKAGES
install.packages("rdryad")
library(rdryad)

#### DOWNLOADING DIRECTLY FROM PAGE (E.G., GOV'T OF CANADA)

getwd() # check
dir.create("data/") # make data wd
dir.create("scripts/")

# set url to online data from gov't of canada
data.url <- "https://124gc.sharepoint.com/:x:/s/external/_layouts/15/download.aspx/EWxtI26zo6RKpo466tLMhKIBcDPlXQAPFJhhmoKpKr6y1w"
metadata.url <- "https://124gc.sharepoint.com/:x:/s/external/_layouts/15/download.aspx/EWdNOQihixlKm2hwjaKKkckB6z0oZL_Pm7XYD0GEPpBcDw?e=958KfI"

getwd() #check 
setwd("/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548U_project/data") # make the data folder the wd

# make the destination file names (in data folder)
data.dest.file <- "/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548U_project/data/BrucePNP_RedBackedSal_2018_abun.csv"
metadata.dest.file <- "/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548U_project/data/BrucePNP_RedBackedSal_2018_abun_metadata.csv"

# download the files into the data folder
download.file(url=data.url, destfile = data.dest.file) # download data
download.file(url=metadata.url, destfile = metadata.dest.file) # download metadata

# alternatively, 
write.csv(object, file=paste0("name", Sys.Date(), ".csv")))


# read in data
sal.abun <- read.csv("BrucePNP_RedBackedSal_2018_abun.csv")

# error??? 
## Error in make.names(col.names, unique = TRUE) : 
## invalid multibyte string 14


#### DOWNLOADING FROM DRYAD 
# copy doi (url) from citation section
# doi: ????

rdryad::dryad_get_cache()
rdryad::cache_path_set(full_path=normalizePath("path.to.dir.here"))
# argument mustWork=F if path doesn't exist yet

rdryad::dryad_get_path()
dryad_download(dois="doi.here")




