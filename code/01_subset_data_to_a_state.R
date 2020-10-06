# script to read in apple mobility data from a csv file
# subset the data to just include rows from any particular US state
# and then write out a csv file that only has that subset
# Uses functions in the code/function directory

# Marta Bogaczynska
# mgbogaczynska@usfca.edu
# September 12, 2020

# load functions
source("code/functions/subset_mobility_data_to_state.R")

# use the function in a for loop
for (state_to_subset in c("Ohio", "Arizona", "Nevada", "Alaska", "Minnesota")){
  subset_mobility_data_to_state(
    input_file_name = "data/raw_data/applemobilitytrends-2020-09-17.csv",
    state_to_subset)
}

# test out the use of the function
subset_mobility_data_to_state(
  input_file_name = "data/raw_data/applemobilitytrends-2020-09-17.csv",
  state_to_subset = "Alaska")
