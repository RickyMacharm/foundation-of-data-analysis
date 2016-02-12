animaldata = AnimalData

# take first 10 rows and show outcome type frequencies
first10 = head(animaldata, 10)
table(first10$Outcome.Type)

# all adopted animals
adopted = animaldata[animaldata$Outcome.Type == 'Adoption',]

# adopted animals shelter days as array
daystoadopt <- adopted$Days.Shelter

# histogram
hist(daystoadopt, 200)
max(daystoadopt)
which(adopted$Days.Shelter == 211)
adopted[187,]

fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)

# counting z-score
(211 - mean(daystoadopt))/sd(daystoadopt)
