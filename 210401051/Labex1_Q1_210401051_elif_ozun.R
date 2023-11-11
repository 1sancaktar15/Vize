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

# 1.3)
maps$Latitude <- as.numeric(gsub("N", "" , maps$Latitude))

# 1.4)
idx <- which(maps$Longitude == "W")

# 1.5)
maps$Latitude <- gsub(" E", "" , maps$Latitude)
maps$Longitude <- gsub(" W", "" , maps$Longitude)

# 1.6)
maps$Year <- as.numeric(gsub("AD", "" , maps$Year))

# 1.7)
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)

# 1.8)
hist(maps$Year, breaks = 10, main = "Histogram Of Years", xlab = "Year", col = "lightblue")

