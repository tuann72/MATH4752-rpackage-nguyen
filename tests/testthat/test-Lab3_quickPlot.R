test_that("Lab3_quickPlot Test", {
  suppressMessages(library(Intro2R))
  p <- recordPlot({Lab3_quickPlot(ddt$LENGTH,ddt$WEIGHT,"LENGTH vs WEIGHT", "LENGTH", "WEIGHT")})
  expect_true(length(p[[2]]) >0)
})
