#!/bin/bash

# A bash script to drive the rendering of an Rmarkdown file using some
# parameters passed in from the shell
# this script expects two command line parameters
# the first should be a US state, and a second is the raw apple mobility
# data csv file downloaded from apple.com

# Marta Bogaczynska
# October 17, 2020
# mgbogaczynska@usfca.edu

Rscript -e "rmarkdown::render('Analysis.Rmd',\
            params = list(state = '$1',\
            data = '$2'))"
