test_that("cpue calculates simple ratio correctly", {
  expect_equal(cpue(catch = 100, effort = 10), 10)
  expect_equal(cpue(50, 2), 25)
})

test_that("cpue works with vectors of data",{
  catches <- c(100, 200, 300)
  efforts <- c(10, 10, 10)
  expected_results <- c(10, 20, 30)
  expect_equal(cpue(catches, efforts), expected_results)
})

test_that("cpue returns numeric", {
  expect_type(cpue(10,2), "double")
})
