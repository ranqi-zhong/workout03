context("test binomial checkers")

test_that("check_prob with ok probs",{
  expect_equal(check_prob(0.5), TRUE)
  expect_error(check_prob(1.5))
  expect_error(check_prob(-2))

})

test_that("check trials with ok trials",{
  expect_equal(check_trials(20), TRUE)
  expect_error(check_trials(-20))
  expect_error(check_trials(-2,-3))
})

test_that("check success with ok successes",{
  expect_equal(check_success(2,3), TRUE)
  expect_error(check_success(3,2))
  expect_error(check_success(-2,-3))
})















