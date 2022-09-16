#### DATA DOWNLOAD 
#### DATE DOWNLOADED: 15 SEPTEMBER 2022

#### LOAD PACKAGES
#install.packages("rdryad")
library(rdryad) # this isn't working for some reason

#### DOWNLOADING DIRECTLY FROM PAGE (E.G., GOV'T OF CANADA)

getwd() # check
dir.create("data/") # make data wd
dir.create("scripts/")

# set url to online data from gov't of canada
data.url <- "https://124gc.sharepoint.com/:x:/s/external/_layouts/15/download.aspx/EWxtI26zo6RKpo466tLMhKIBcDPlXQAPFJhhmoKpKr6y1w"
metadata.url <- "https://124gc.sharepoint.com/:x:/s/external/_layouts/15/download.aspx/EWdNOQihixlKm2hwjaKKkckB6z0oZL_Pm7XYD0GEPpBcDw?e=958KfI"

getwd() #check 
setwd("/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548T_project/data") # make the data folder the wd

# make the destination file names (in data folder)
data.dest.file <- "/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548T_project/data/BrucePNP_RedBackedSal_2018_abun.csv"
metadata.dest.file <- "/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548T_project/data/BrucePNP_RedBackedSal_2018_abun_metadata.csv"

# download the files into the data folder
download.file(url=data.url, destfile = data.dest.file) # download data
download.file(url=metadata.url, destfile = metadata.dest.file) # download metadata

# alternatively, below names the file based on the current date, which is good to label the date accessed if accessed multiple times
#write.csv(object, file=paste0("name", Sys.Date(), ".csv")))


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



#### DOWNLOADING FROM GITHUB
# this is for cloning repos 
# there must be a better way to do this...
getwd()

# need to make new folder, or else will clone the repo you're coping within your own repo (nested repos, R gives warning)
dir.create("/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548U_project/github_repo_cloned")
usethis::create_from_github(repo_spec = "github_link.git", 
                            destdir = "path")
# copying data from the github repo to your own folder
# stuff after * is the path to make/move data to, based on your current wd
system("cp -r /Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548U_project/github_repo_cloned * /data/github/.")
