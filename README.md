# Analysis of Apple Mobility Data in the Era of Covid-19

Marta Bogaczynska  
mgbogaczynska@usfca.edu

The aim of this project is to analyze the mobility data made avaiable by Apple.
That data is avaiable from the following URL:
https://covid19-static.cdn-apple.com/mobility

It currently uses dplyr to work with some of the tabular data.
Eventually, it will also include use of ggplot2 to visualize the 
dataset.

### Change log
* 2020-10-17: Patameterize Rmd and add bash script to drive knitting
* 2020-10-03 A new version of the data was downloaded, and I also worked to 
create a new R Markdown file to knit the elements of the project together.
* 2020-09-20: I new script was written for reading any subsetted state and tally
up the rows grouped by city/county nd transportation type. 
* 2020-09-19: A new version of the data file was downloaded. Added second 
script to use dplyr to tally up the count of cities and counties in a given
state that have data from the different transportation types
* 2020-09-17: Initialize git repository for the project and commit all files 
into the repository
* 2020-09-12: A new version of the data file was downloaded, and I
also worked to refractor the code to be more general and to allow for any
state to be subset from the larger file. 
* 2020-08-29: The data was originally downloaded for analysis.
