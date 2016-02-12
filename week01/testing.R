# use library ADSFou.. before going on
library(SDSFoundations)
bike = BikeData
table(bike$cyc_freq)
male_bikers = bike[bike$gender=='M',]
fem_bikers = bike[bike$gender=='F',]
fem_bikers$distance

# using git with RStudio
# http://r-pkgs.had.co.nz/git.html
