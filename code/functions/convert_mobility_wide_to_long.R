# create the function--named convert_mobility_wide_to_long
convert_mobility_wide_to_long <- function(input_file_name) {
  # read in the csv file with correct date format using readr package
  covid_data_tidy <- readr::read_csv(input_file_name)
  # convert read file into a long spreadsheet format
  covid_tidy_data_long <- covid_data_tidy %>%
    pivot_longer(!c(
      transportation_type, geo_type, country, region, alternative_name,
      `sub-region`), names_to = "date", values_to = "count")
  # save the longer format spreadsheet as a csv in the output directory
  readr::write_csv(covid_tidy_data_long, path = paste0("output/subsetted_states_long/",
                                                tools::file_path_sans_ext(
                                                  basename(input_file_name)),
                                                "_long.csv"))
  return(covid_tidy_data_long)
}


