context("Test binomial function")

test_that("test binomial works",{
  expect_equivalent(bin_choose(5,2),10)
  expect_length(bin_choose(5,2),1)
  expect_error(bin_choose(5,6))

  expect_equivalent(bin_probability(2,5,0.5),0.3125)
  expect_length(bin_probability(2,5,0.5),1)
  expect_error(bin_probability(2,5,2))
  expect_error(bin_probability(2:6,5,0.5))

  expect_length(bin_distribution(5,0.5),2)
  expect_type(bin_distribution(5,0.5),"list")
  expect_error(bin_distribution(7,2))

  expect_length(bin_cumulative(100,0.5),3)
  expect_type(bin_cumulative(100,0.5),"list")
  expect_error(bin_cumulative(100,2))

})
