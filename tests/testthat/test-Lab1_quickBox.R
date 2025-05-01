test_that("Lab1 QuickBox Test", {
  suppressMessages(library(Intro2R))
  p <- Lab1_quickBox(ddt$DDT)
  expect_equal(head(p$out), c(50,  150,   28,   31,   57,   96))
})
