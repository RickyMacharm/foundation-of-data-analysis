# Subset data for Brazil
#######################################################################
br <- world[world$Country.Code == "BRA",]

# Select the years from 1995 and name the new data frame "br_select"
br_select <- br[br$year >= 1995, ]

# proportion of the population using the internet (internet users divided by population)
br_select$mobile.users <- br_select$mobile.users / 1000000

# Create a new variable in our dataset called time that represents "years since 1990"
br_select$years_since_1995 <- br_select$year - 1995

# Use a function to fit an exponential and logistic model for 1990-
expFit(br_select$years_since_1995, br_select$mobile.users)
logisticFit(br_select$years_since_1995, br_select$mobile.users)

logisticFitPred(br_select$years_since_1995,br_select$mobile.users,30)


367/257
day = 0:9
flu = c(73,105,137,257,367,658,898,1085,1490,1893)

expFit(day,flu)
3273.31/(1 + 43.59/(1.57^14))
4379-3034
25/1.34
year = c(1,3)
wolf = c(25,45)
linFit(year, wolf)
expFit(year, wolf)

linFitPred(year, wolf, 7)
expFitPred(year, wolf, 7)

log10(325/18.6339)/log10(1.34164)
log10(152.10)/log10(2.17)

2000/(1 + 152.10/(2.17^9))



