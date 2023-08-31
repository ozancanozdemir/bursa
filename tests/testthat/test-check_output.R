#context("check-output") #Our test file is called test-check_output.R
library(testthat) #load testthat package
library(bursa)

test_that("encoding_data returns a list",{
  df<-data.frame(name = c("Bursa","Buyuksehir"))
  result<-encoding_data(df)
  expect_type(result,"list")
})
