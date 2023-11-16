# 1.1)

install.packages('readr')
library (readr)

getwd()
setwd("./210401051")
url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = dosya, method = "auto")

# 1.2)
maps <- read.csv(dosya, header=TRUE, sep=";")

# 1.3)
maps$Latitude <- as.numeric(gsub("N", "" , maps$Latitude))

# 1.4)
idx <- grep("W", maps$Longitude)

# 1.5)
maps$Longitude <- gsub("E", "" , maps$Longitude)
maps$Longitude <- gsub("W", "" , maps$Longitude)

# 1.6)
maps$Year <- as.numeric(gsub("AD", "" , maps$Year))

# 1.7)
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)

# 1.8)
hist(maps$Year, breaks = 10, main = "Histogram Of Years", xlab = "Year", col = "lightblue")

# 1.9)
maps$Longitude[idx] <- maps$Longitude[idx] * -1

# 1.10)
finalResult <- maps[c("Longitude", "Latitude", "Year")]



