# script to read in apple mobility data from a csv file
# subset the data to just include rows from any particular US state
# and then write out a csv file that only has that subset

# Marta Bogaczynska
# mgbogaczynska@usfca.edu
# September 12, 2020

# Create a fraction to subset any US state out of the full dataset
# This should also create an output CSV file that is named based on the state
# that is subsetted

subset_mobility_data_to_state <- function(input_file_name,
                                          state_to_subset) {
  # read in the complete csv file
  all_covid_data <- read_csv(input_file_name)

  # subset the data set to only include rows where the sub.region column has
  # the state in it but we want all columns.
  state_data <- all_covid_data %>%
    dplyr::filter(`sub-region` == state_to_subset)

  # check that the subsetted data actually has data in it
  if (nrow(state_data) == 0) {
    stop("ERROR, no rows matching given state name. Did you make a typo?")

  }
  # check to make sure there are no spaces in the state name
  state_no_spaces <- gsub(state_to_subset,
                          pattern = " ",
                          replacement = "_")

  readr::write_csv(state_data, path = paste0("output/subsetted_states_wide/",
                                      tools::file_path_sans_ext(
                                        basename(input_file_name)),
                                      "_",
                                      state_no_spaces,
                                      ".csv"))

  return(state_data)
}
