
library("testthat")

#2,2)
rm(list = ls())  

if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")  
}

#2.3)
source("Labex1_Q1_210401051_elif_ozun.R")
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adl?? dosya aktif dizinde mevcuttur", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})

#2.4)
test_that("Test : maps adl?? de??iken Global Workspace???de mevcuttur", {
  testthat::expect_true(exists("maps", envir = .GlobalEnv))
})

#2.5)
test_that("Test : maps nesnesi bir data.frame???dir", {
  testthat::expect_true(is.data.frame(maps))
})

#2.6)
test_that("Test : maps adl?? data.frame???in ilk s??tunun ad?? 'City' olmal??d??r", {
  testthat::expect_equal(names(maps)[1], "City")
})


#2.7)
install.packages("fansi")
library("fansi")
install.packages("rematch2")
library("rematch2")
test_that("Test : maps adl?? data.frame???in 5. s??tunun ad??nda 'Title' kelimesi ge??melidir", {
  testthat::expect_true(grepl( "Title", colnames(maps)[5], fixed = TRUE))
})

#2.8)
test_that("Test : Latitude adl?? s??tun numeric de??erlerden olu??mal??d??r", {
  testthat::expect_true(all(is.numeric(maps$Latitude)))
})

#2.9)
test_that("Test : Longitude adl?? s??tun numeric de??erlerden olu??mal??d??r", {
  testthat::expect_true(all(is.numeric(maps$Longitude)))
})

#2.10)
test_that("Test : Year adl?? s??tun numeric de??erlerden olu??mal??d??r", {
  testthat::expect_true(all(is.numeric(maps$Year)))
})


#2.11)
test_that("BONUS Test : Longitude adl?? s??tunun 3., 9. ve 10. elementleri negatif numeric de??erler i??ermelidir", {
  testthat::expect_true(all(maps$Longitude[c(3, 9, 10)] < 0))
})

#2.12)
test_that("BONUS Test : finalResult adl?? de??iken vard??r, bir data.frame???dir, 3 s??tundan olu??mal??d??r ve s??t??n isimleri s??ras??yla Longitude, Latitude ve Year olmal??d??r", {
  testthat::expect_true(exists("finalResult", envir = .GlobalEnv))
  testthat::expect_true(is.data.frame(finalResult))
  testthat::expect_equal(names(finalResult), c("Longitude", "Latitude", "Year"))
})

