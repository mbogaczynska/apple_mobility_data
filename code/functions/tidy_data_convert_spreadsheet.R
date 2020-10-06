tidy_data_convert_spreadsheet <- function(input_file_name) {
  # read in the csv file with correct date format using readr and read_csv
  covid_data_tidy <- readr::read_csv(input_file_name)
  # convert read file into a long spreadsheet format
  covid_tidy_data_long <- covid_data_tidy %>%
    pivot_longer(!c(
      transportation_type, geo_type, country, region, alternative_name,
      `sub-region`), names_to = "date", values_to = "rel_mobility")
  # check to see if number of columns is correct after reformating
  if (ncol(covid_tidy_data_long) >= 10) {
    stop("ERROR, too many columns, did not reformat")
  }
  # save the longer format spreadsheet as a csv in the output directory
  readr::write_csv(covid_tidy_data_long, path = paste0("output/",
                                                       "subsetted_state_long/",
                                                       tools::file_path_sans_ext(
                                                         basename(input_file_name)),
                                                       "_long.csv"))
  return(covid_tidy_data_long)
}