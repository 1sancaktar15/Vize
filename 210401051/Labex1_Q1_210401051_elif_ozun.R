# 1.1)

install.packages('readr')
library (readr)

getwd()
setwd("C:/Users/LENOVO/Desktop/gitRepos/laboratuarEgzersizi/Vize/210401051")
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = dosya, method = "auto")

# 1.2)
maps <- read.csv(dosya, header=TRUE, sep=";")

