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
source("code/functions/tally_up_count_cities_counties_by_transportation.R")

# load in the dataset from the previous script
input_file_name <- "output/applemobilitytrends-2020-09-11_California.csv"
state_data <- read.csv(input_file_name)

# starting off with dplyr chains
count_cities_counties_by_type <- state_data %>%
  select(geo_type, region, transportation_type) %>%
  group_by(geo_type, transportation_type) %>%
  tally()

# write out the result of the dplyr chain
write.csv(count_cities_counties_by_type,
          "output/california_cities_counties_counts.csv")
