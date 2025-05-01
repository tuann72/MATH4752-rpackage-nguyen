test_that("myboot2", {
  p <- myboot2(x=fire$DISTANCE)
  expect_equal(names(p$ci), c('2.5%', '97.5%'))
})
