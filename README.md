
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dhsmmrdemo

<!-- badges: start -->
<!-- badges: end -->

The goal of dhsmmrdemo is to demostrate the package development process
in r enviroment.

## Installation

You can install the development version of dhsmmrdemo from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("dhsmyanmar/dhsmmrdemo")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dhsmmrdemo)

## basic example code
# HAZ mean score
haz_score <- get_haz(PRdata$hv103, PRdata$hc70)

wt <- PRdata$hv005/1000000

weighted.mean(haz_score, wt, na.rm = TRUE)
#> [1] -1.345026

summary(haz_score, na.rm = TRUE)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#>   -5.99   -2.19   -1.40   -1.36   -0.59    5.95   50944

# stunting
stunting <- get_stunt(haz_score)
xtabs(wt ~ stunting)
#> stunting
#>        0        1 
#> 2897.093 1192.256
sum(xtabs(wt ~ stunting))
#> [1] 4089.349
prop.table(xtabs(wt ~ stunting))
#> stunting
#>         0         1 
#> 0.7084485 0.2915515
```
