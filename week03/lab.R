#
new_bull12 = bull[bull$Events12  > 0 ,]

hist(new_bull12$Earnings12, 20)
fivenum(new_bull12$Earnings12)
mean(new_bull12$Earnings12)
sd(new_bull12$Earnings12)

# Create a correlation matrix 
vars = c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull12[,vars])

# Create a scatterplot of the two variables of interest.
plot(new_bull12$RidePer12, new_bull12$Earnings12, xlab="ride pros", ylab="earnings")
abline(lm(new_bull12$Earnings12~new_bull12$RidePer12))
cor(new_bull12$RidePer12, new_bull12$Earnings12)

plot(new_bull12$CupPoints12, new_bull12$Earnings12, xlab="cup points", ylab="earnings")
abline(lm(new_bull12$Earnings12~new_bull12$CupPoints12))
cor(new_bull12$CupPoints12, new_bull12$Earnings12)


# identify specific case
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))

#Subset the data , removing one outlier
nooutlier = new_bull12[new_bull12$Earnings12 < 1000000 ,]

cor(nooutlier[,vars])

# Create a scatterplot of the two variables of interest.
plot(nooutlier$RidePer12, nooutlier$Earnings12, xlab="ride pros", ylab="earnings")
abline(lm(nooutlier$Earnings12~nooutlier$RidePer12))
cor(nooutlier$RidePer12, nooutlier$Earnings12)

plot(nooutlier$CupPoints12, nooutlier$Earnings12, xlab="cup points", ylab="earnings")
abline(lm(nooutlier$Earnings12~nooutlier$CupPoints12))
cor(nooutlier$CupPoints12, nooutlier$Earnings12)



