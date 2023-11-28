# CalSiyu

## Author

Siyu Zou

## Goal of the package

The goal of *CalSiyu* is to help calculate sample mean, sample standard deviation and confidence interval. Also helpful to calculate cosine and sine function.

## Installation

You can install the development version of calculate like so:

``` r
# Install CalSiyu from GitHub (contain vignettes)
devtools::install_github("https://github.com/jhu-statprogramming-fall-2023/biostat777-project2-zsyfirst", build_vignettes = TRUE)
```

## List of exported functions

`fn_cos()` computes the approximation to the cosine function

`fn_sin()` computes the approximation to the sine function

`calculate_CI()` computes the confidence interval of numeric vector or ci.class

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(CalSiyu)
## basic example code

set.seed(1234)
x <- rnorm(100)
ci_object <- make_ci_class(x)
calculate_CI(ci_object)

fn_sin(5, 10)
fn_cos(5, 10)
```
