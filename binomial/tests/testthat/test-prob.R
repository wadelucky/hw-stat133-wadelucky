context("Test check function")

test_that("test check works",{
  expect_equivalent(check_prob(0.5),TRUE)
  expect_length(check_prob(0.5),1)
  expect_error(check(5))

  expect_equivalent(check_trials(3),TRUE)
  expect_length(check_trials(4),1)
  expect_error(check_trials(-1))

  expect_equivalent(check_success(3:5,6),TRUE)
  expect_length(check_success(3:5,6),1)
  expect_error(check_success(3:10,8))

})
