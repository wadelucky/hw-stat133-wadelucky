context("Test auxiliary function")

test_that("test aux works",{
  expect_equivalent(aux_mean(5,0.2),1)
  expect_length(aux_mean(6,0.1),1)
  expect_equivalent(aux_mean(100,0.5),50)

  expect_equivalent(aux_variance(100,0.5),25)
  expect_length(aux_variance(100,0.5),1)
  expect_equivalent(aux_variance(100,0.1),9)

  expect_equivalent(aux_mode(3,1),4)
  expect_length(aux_mode(3,1),1)
  expect_equivalent(aux_mode(7,0.2),1)

  expect_equivalent(aux_skewness(100,0.5),0)
  expect_length(aux_skewness(100,0.5),1)
  expect_equivalent(aux_skewness(36,0.2),0.25)

  expect_equivalent(aux_kurtosis(1,0.2),0.25)
  expect_length(aux_kurtosis(1,0.2),1)
  expect_equivalent(aux_kurtosis(10,0.2),0.025)

})
