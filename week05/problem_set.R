#Subset the data
menpole <- WR[WR$Event=='Mens Polevault' & WR$Year > 1969,]


#Create scatterplots
plot(menpole$Year,menpole$Record,main='Mens Polevault World Records',xlab='Year',ylab='World Record height(m)',pch=16)


#Run linear models
linFit(menpole$Year, menpole$Record)


cost = c(140,280,420,560)
hours = c(0,2,4,6)

# make dataframe
band = data.frame(cost,hours)

#Create scatterplot
plot(band$hours, band$cost)

#Run linear model
linFit(band$hours, band$cost)

4*175
(700-140)/70

# calculate gpa when money given
gpa = function(money)2.84 + 0.04*money/100
gpa(970)

# residual = observed - predicted value
3.71 - gpa(0)
2.91 - gpa(1450)

gpa(2900)


