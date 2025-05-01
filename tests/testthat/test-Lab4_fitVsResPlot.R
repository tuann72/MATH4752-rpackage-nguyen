test_that("Lab4_fitVsResPlot Test", {
  suppressMessages(library(Intro2R))
  p <- recordPlot({Lab4_fitVsResPlot(ddt, ddt$LENGTH, ddt$WEIGHT)})
  expect_true(length(p[[2]])>0)
})
