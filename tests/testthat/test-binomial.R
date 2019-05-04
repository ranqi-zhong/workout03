context("test binomial")

test_that("bin_choose works fine",{
  expect_error(bin_choose(2,3))
  expect_equal(bin_choose(3,2), 3)
  expect_error(bin_choose(-5,1))
})

test_that("bin_probability works fine",{
  expect_error(bin_probability(1:5, 4, 0.5))
  expect_error(bin_probability(1, 3, 2))
  expect_error(bin_probability(1:4, -2, 0.2))
})

test_that("bin_distribution works fine",{
  expect_error(bin_distribution(1:5, 4, 0.3))
  expect_error(bin_distribution(1, 2, 2))
  expect_error(bin_distribution(1:3, -2, 0.5))
})

test_that("bin_cumulative works fine",{
  expect_error(bin_cumulative(1:4, 2, 0.5))
  expect_error(bin_cumulative(1:5, 6, 2))
  expect_error(bin_cumulative(1:4, -5, 0.2))
})
