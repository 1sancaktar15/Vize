#2,2)
rm(list = ls())  

if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")  
}

#2.4)
source("Labex1_Q1_studentnumber_surname_familyname.R")
test_that("Test : MapsThatChangedOurWorld_StoryMap_Data.csv adl?? dosya aktif dizinde mevcuttur", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})
