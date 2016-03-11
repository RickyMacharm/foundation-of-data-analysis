world = WorldBankData

gbr = world[world$Country.Code == 'GBR',]
gbr2000 = gbr[gbr$year >= 2000 & gbr$year < 2010,]

time = gbr2000$year - 2000
mv = gbr2000$motor.vehicles

#
plot(time,mv)

# what fits best
linFit(time,mv)
expFit(time, mv)
logisticFit(time,mv)
tripleFit(time,mv)

# predicted values
expFitPred(time,mv,12)
logisticFitPred(time,mv,12)
