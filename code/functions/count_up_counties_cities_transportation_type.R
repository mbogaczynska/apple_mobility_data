# Function to read in the subsetted state's csv file, then use the dplyr
# package to count up the number of cities and counties in that state to
# have the mobility data grouped by type. This will be saved into a new csv
# file in the output directory

# Marta Bogaczynska
# September 20, 2020
# mgbogaczynska@usfca.edu

# Create a function that will tally up the type of transportation in both the
# cities and counties of a previously subsetted state. This should then create
# an output csv file that's name is based on the state subsetted and
# transportation

# load the package "dplyr"
library("dplyr")

count_up_cities_counties <- function(input_file_name) {
  # read in the dataset from previous script
  state_data_tally <- readr::read_csv(input_file_name)
  # check to see that there is data in the state_data_tally
  if (nrow(state_data_tally) == 0) {
    stop("ERROR, no rows match given state name, check for typo")
  }
  # dplyr chain to restrict the dataset to transportation in cities and counties
  count_cities_counties_by_type <- state_data_tally %>%
    select(geo_type, region, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()
  # check to see that there is transportation data for cities and counties for
  # a given state
  if (ncol(count_cities_counties_by_type) == 0) {
    stop("ERROR, no transportation data in file, check state subsetted")
  }
  readr::write_csv(
    count_cities_counties_by_type, path = paste0(

      "output/subsetted_states_tallied/", tools::file_path_sans_ext(
        basename(input_file_name)), "_", "state_data_tally", ".csv"))
  
  return(count_cities_counties_by_type)
}