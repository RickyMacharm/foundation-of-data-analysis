# univariate displays
animaldata = AnimalData

# take 6 first rows to have a generic picture
head(animaldata)

# plotting one column data, like table(animaldata$Sex) gives amounts of sexes
plot(animaldata$Sex, main='Bar chart of animal genders', xlab='Gender', ylab='Frequency')

# histogram
hist(animaldata$Age.Intake)

# arrays of intake ages for females and males
femaleage = animaldata$Age.Intake[animaldata$Sex == 'Female']
maleage = animaldata$Age.Intake[animaldata$Sex == 'Male']

# number of bins in histogram
hist(femaleage, breaks=18)

# finding an old male animal
max(maleage)

# finding it's id (=415) and all data
which(animaldata$Age.Intake == 17)
animaldata[415,]

# finding mean, median, standard deviation and five number summary
mean(animaldata$Age.Intake)
median(animaldata$Age.Intake)
sd(animaldata$Age.Intake)
fivenum(animaldata$Age.Intake)

table(animaldata$Animal.Type)

