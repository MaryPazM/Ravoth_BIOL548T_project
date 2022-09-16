#### DATA DOWNLOAD
#### DATE DOWNLOADED: 15 SEPTEMBER 2022

# data on redbacked salamanders in bruce peninsula national park was obtained from the government of canada

getwd() # check
setwd("/Users/sarahravoth/Desktop/biol548T/Ravoth_BIOL548T_project/data")

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
