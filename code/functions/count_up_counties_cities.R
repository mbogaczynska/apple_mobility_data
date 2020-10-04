# script to read in apple mobility data from a csv file
# tally up rows grouped by city/county and transportation type
# and then write out a csv file that only has that subset

# Marta Bogaczynska
# mgbogaczynska@usfca.edu
# September 20, 2020

# Create a fraction to subset and read any US state out of the full dataset
# and then tally up rows grouped by city/county and transportation type
# This should also create an output CSV file that is named based on the state
# that is subsetted

count_up_counties_cities <- function (input_file_name)
  {
  # load in the dataset from the previous script
  input_file_name <- "output/applemobilitytrends-2020-09-17_Alaska.csv"
  state_data <- read.csv(input_file_name)

  # starting off with dplyr chains
  count_cities_counties_by_type <- state_data %>%
    select(geo_type, region, transportation_type) %>%
    group_by(geo_type, transportation_type) %>%
    tally()

  # save the state data to a new csv file in the output directory
  write_csv(count_cities_counties_by_type, path = paste0("output/subsetted_states_tallied/",
                                      tools::file_path_sans_ext(
                                        basename(input_file_name)),
                                      "_",
                                      (state_data),
                                      ".csv"))
}
