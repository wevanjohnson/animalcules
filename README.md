
<p align="center"><img width=80% src="https://github.com/compbiomed/animalcules/blob/master/inst/shiny/www/animalcules.jpg"></p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
[![Travis build status](https://travis-ci.org/compbiomed/animalcules.svg?branch=master)](https://travis-ci.org/compbiomed/animalcules)
[![](https://img.shields.io/github/last-commit/compbiomed/animalcules.svg)](https://github.com/compbiomed/animalcules/commits/master)
[![](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)


## What does animalcules do?
animalcules is an R package for utilizing up-to-date data analytics, visualization methods, and machine learning models to provide users an easy-to-use interactive microbiome analysis framework. It can be used as a standalone software package or users can explore their data with the accompanying interactive R Shiny application. 

Traditional microbiome analysis such as alpha/beta diversity and differential abundance analysis are enhanced, while new methods like biomarker identification are introduced by animalcules. Powerful interactive and dynamic figures generated by animalcules enable users to understand their data better and discover new insights. 


## Installation

Note: Install devtools first if you haven't installed it yet. 
You can install animalcules from github with:


``` r
# install.packages("devtools")
devtools::install_github("compbiomed/animalcules")
```

## Run animalcules


``` r
library(animalcules)
run_animalcules()
```

## Docs

#### Tab 1: Upload

#### Tab 2: Summary and Filter

#### Tab 3: Abundance

#### Tab 4: Diversity

#### Tab 5: Dimension Reduction

#### Tab 6: Differential analysis

#### Tab 7: Biomarker






