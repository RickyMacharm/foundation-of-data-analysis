# making scatter plot
bull = BullRiders

# plotting pro years and buckouts
plot(bull$YearsPro, bull$BuckOuts14, xlab='Years pro', ylab='Buckouts', main='Plot of Years pro vs Buckouts')

abline(lm(bull$BuckOuts14~bull$YearsPro))

# plotting number of events and buckouts
plot(bull$Events14, bull$BuckOuts14, xlab='Events', ylab='Buckouts', main='Plot of Events vs Buckouts')

abline(lm(bull$BuckOuts14~bull$Events14))

# correlation
cor(bull$YearsPro, bull$BuckOuts14)
cor(bull$Events14, bull$BuckOuts14)

# correlation matrix using columns given in array
myvars = c('YearsPro','Events14','BuckOuts14')
cor(bull[,myvars])
