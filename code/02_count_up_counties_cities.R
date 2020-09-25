# The goal of this script is to use dplyr package to count up the
# number of cities and counties in a given state that have detailed
# Apple mobility data available and then eventually save it to a csv

# Marta Bogaczynska
# September 19, 2020
# mgbogaczynska@usfca.edu

# load the package "dplyr"
library("dplyr")

# load the function
source("code/functions/count_up_counties_cities_transportation_type.R")

# use the function as a for loop
for (state_to_subset in c("Ohio", "Arizona", "Nevada", "Alaska", "Minnesota")) {
  subset_mobility_data_to_state(
    input_file_name = "data/raw_data/applemobilitytrends-2020-09-17.csv",
    state_to_subset)
}
