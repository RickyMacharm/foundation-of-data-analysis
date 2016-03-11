# Subset data for Denmark
#######################################################################
dm <- world[world$Country.Code == "DNK",]

# Select the years from 1990 and name the new data frame "dm_select"
dm_select <- dm[dm$year >= 1990, ]

# proportion of the population using the internet (internet users divided by population)
dm_select$prop_internet <- dm_select$internet.users / dm_select$population

# Create a new variable in our dataset called time that represents "years since 1990"
dm_select$years_since_1990 <- dm_select$year - 1990

# Use a function to fit an exponential and logistic model for 1990-
expFit(dm_select$years_since_1990, dm_select$prop_internet)
logisticFit(dm_select$years_since_1990, dm_select$prop_internet)


