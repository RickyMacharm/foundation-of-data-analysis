# all adult animals
adults = animaldata[animaldata$Age.Intake > 0,]

# number of adult cats and dogs
table(adults$Animal.Type)

# arrays of weights
dogweight = (adults[adults$Animal.Type == 'Dog',])$Weight
catweight = (adults[adults$Animal.Type == 'Cat',])$Weight

# hist of adult dogs and cats
hist(dogweight, 50)
hist(catweight, 20)

mean(catweight)
sd(catweight)

# z-score for a 13 pound fat cat
(13 - mean(catweight))/sd(catweight)

# what proportion of adult cats weigh more than 13 pounds
1-pnorm(2.3)


fivenum(dogweight)
sd(dogweight)
