test_that("mysq function works", {
  l <- mysq(2)
  expect_equal(l[1], 4)
})
