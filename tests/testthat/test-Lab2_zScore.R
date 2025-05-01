test_that("Lab2_zScore test", {
  suppressMessages(library(Intro2R))
  p <-Lab2_zScore(ddt$DDT)
  expect_equal(head(p), c(-0.14591590,-0.08492702, -0.01377332, -0.03410295, 0.26067665, 1.27715803))
})
