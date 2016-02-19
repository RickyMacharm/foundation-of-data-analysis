# first ten riders in dataset, how many been pro >= 10 years
table(bull[1:10, "YearsPro"]>=10)

# first 15 riders
bull15 = bull[1:15,]

# fewest backouts of top 15
min(bull15["BuckOuts14"])

# and data for this rider
bull15[bull15$BuckOuts14 == 1, c("Rider","BuckOuts14","Rides14")]

# or just take first 15 items with selected columns
bull[1:15, c("Rider","BuckOuts14","Rides14")]

# 1. Create a subset of the data which contains only those riders that have participated in at least one event in 2013.
new_bull = bull[bull$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13, 40)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visualize and describe the second variable of interest
hist(new_bull$Top10_13, 40)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# 2. Create a scatterplot of the two variables of interest.
plot(new_bull$Rides13,new_bull$Top10_13)

# 3. Check to see that the relationship is linear.  Plot a line of best fit as a guide.
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# 4. If the relationship is linear, calculate the correlation coefficient.
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars = c("Top10_13", "Rides13")
cor(new_bull[,vars])

# 5. Carefully examine any outliers.

# 6. Interpret what the correlation says about the linear relationship between these variables. 

#identify a specific record
which(new_bull$Top10_13==2 & new_bull$Rides13==22)
new_bull[4,]



