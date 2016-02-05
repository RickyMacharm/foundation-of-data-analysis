bike = BikeData
table(bike$cyc_freq)
male_bikers = bike[bike$gender=='M',]
fem_bikers = bike[bike$gender=='F',]
# http://r-pkgs.had.co.nz/git.html
