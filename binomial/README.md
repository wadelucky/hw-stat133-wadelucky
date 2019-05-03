README
================
wei le
2019年5月3日

<!-- README.md is generated from README.Rmd. Please edit that file -->
Overview
--------

`"binomial"` is a minimal [R](http://www.r-project.org/) package that provides functions to calculate the probabilities of a Binomial random variable, and related calculations such as the probability distribution, the expected value, variance, etc.

-   `bin_choose()` calculates the number of combinations in which k successes can occur in n trials.
-   `bin_probability()` calculates the probability of getting success successes or less successes in trials trials.
-   `bin_distribution()` calculates the distribution of getting successes in trials given prob and has the object class `"bindis".`
-   `plot()` method graphs a barplot to display the probability histogram of a binomial distribution object `"bindis"`.
-   `bin_cumulative()` computes the binomial cumulative distribution and has the object class `"bincum"`.
-   `plot()` method graphs the cumulative distribution of a binomial distribution object `"bincum"`.
-   `bin_variable()` returns a `"binvar"` object which denotes the trials and prob.
-   `print()` nicely print the content of an object `"binvar`.
-   `summary()` method gets a full summary for a `"binvar"` object and returns a `"summary.binvar"` object.
-   `print()` nicely print the contents of an object `"summary.binvar"`.

Motivation
----------

This package has been developed to illustrate some concepts of binomial distribution and show some statistics under it.

Installation
------------

Install the development version from GitHub via the package `"devtools"`:

``` r
# development version from GitHub:
#install.packages("devtools") 

# install "binomial" (without vignettes)
devtools::install_github("wadelucky/hw-stat133-wadelucky
/binomial")

# install "binomial" (with vignettes)
devtools::install_github("wadelucky/hw-stat133-wadelucky
/binomial", build_vignettes = TRUE)
```
