context("test binomial summary measures")

test_that("aux_mean works fine",{
  expect_equal(aux_mean(2,0.5), 1)
  expect_error(aux_mean(2,5))
  expect_error(aux_mean(-3,0.5))
})

test_that("aux_variance works fine",{
  expect_equal(aux_variance(2,0.5), 0.5)
  expect_error(aux_variance(2,2))
  expect_error(aux_variance(-2,0.5))
})

test_that("aux_mode works fine",{
  expect_equal(aux_mode(10,0.3), 3)
  expect_error(aux_mode(-10,0,3))
  expect_error(aux_mode(10,3))
})

test_that("aux_skewness works fine",{
  expect_error(aux_skewness(10, 2))
  expect_error(aux_skewness(-10,0.2))
  expect_error(aux_skewness(-10,-2))
})

test_that("aux_kurtosis works fine",{
  expect_error(aux_kurtosis(10,2))
  expect_error(aux_kurtosis(10,-0.2))
  expect_error(aux_kurtosis(-10,0.3))
})
