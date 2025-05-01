test_that("Lab6_myncurve Test 1", {
  p <- Lab6_myncurve(10,5,6)
  expect_equal(p, 0.2119)
})

test_that("Lab6_myncurve Test 2", {
  p <- Lab6_myncurve(0,1,2)
  expect_equal(1-p, 0.0228)
})

test_that("Lab6_myncurve Test 3", {
  p <- Lab6_myncurve(10,4,10)
  expect_equal(p, 0.5)
})
