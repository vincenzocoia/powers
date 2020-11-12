
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

[![Build
Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)
[![Codecov test
coverage](https://codecov.io/gh/vincenzocoia/powers/branch/master/graph/badge.svg)](https://codecov.io/gh/vincenzocoia/powers?branch=master)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
<!-- badges: end -->

**Note**: The real purpose of this R package is for demonstrating how to
make an R package.

# powers

This is an R package that gives `sqrt()` some friends by providing other
power functions. The purrr package is used under the hood, so that
either an (atomic) vector or a list can be input.

## Installation

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("vincenzocoia/powers")
```

## Example

See the vignette for more extensive use, but here’s an example:

``` r
library(powers)
reciprocal(2)
#> [1] 0.5
cube(list(1, 4, 5))
#> [1]   1  64 125
```
