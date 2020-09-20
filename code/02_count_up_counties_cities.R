# The goal of this script is to use dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually save it to a csv

# Marta Bogaczynska
# September 19, 2020
# mgbogaczynska@usfca.edu

# we would like to get a count of the number of cities and the number of
# counties in a given state that have driving mobility data.
# The input to this will be the output for previous script namely the
# state csv files that were already subsetted.

# Load functions
source("code/functions/count_up_counties_cities.R")

# test out the use of the function
count_up_counties_cities(
  input_file_name = "data/raw_data/applemobilitytrends-2020-09-11.csv",
  state_to_subset = "Alaska")

