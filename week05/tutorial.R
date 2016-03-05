wr = WorldRecords

mens800 = wr[wr$Event == 'Mens 800m',]

# linear regression model linfit(x,y,...)
linFit(mens800$Year, mens800$Record)
