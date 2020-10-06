# Script to read in Apple mobility data from a csv file
# and subset the data to just include rows from Alaska
# and then write out a csv file that only has that subset

# Marta Bogaczynska
# mgbogaczynska@usfca.edu
# August 30, 2020

# read in the complete csv file
all_covid_data <- read.csv("data/raw_data/applemobilitytrends-2020-08-28.csv")

# subset the dataset to only include rows where the sub.region column has
# "Alaska" in it.
alaska_data <- all_covid_data[all_covid_data$sub.region == "Alaska", ]

# save the Alaska data to a new csv file in the output directory
write.csv(alaska_data, file = "output/alaska_apple_mobility_data.csv")
