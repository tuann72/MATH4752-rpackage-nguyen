test_that("Lab5_mybin Test", {
  suppressMessages(library(Intro2R))
  set.seed(123)
  p <- Lab5_mybin()
  expect_equal(as.vector(p[1:6]), c(0.00, 0.020, 0.06, 0.080, 0.240, 0.250 ))
})
