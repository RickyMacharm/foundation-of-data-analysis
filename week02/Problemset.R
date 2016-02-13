dogs = animaldata[animaldata$Animal.Type == 'Dog',]
cats = animaldata[animaldata$Animal.Type == 'Cat',]

# reasons dogs arrived at shelter
table(dogs$Intake.Type)
81/291
dogs_surrender = dogs[dogs$Intake.Type == 'Owner Surrender',]

# what happened to owner surrendered dogs
table(dogs_surrender$Outcome.Type)

# owner surrendered dogs returned to their owner having been at shelter
(dogs_surrender[dogs_surrender$Outcome.Type == 'Return to Owner',])$Days.Shelter

# 
plot(dogs$Intake.Type)

################################################ 
s = c(20,20,15,15,15,10,5)

# would there be some other way (than manually typing) to obtain this array?
r=c(0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5,6,6)
median(r)
fivenum(r)
hist(r+0.5)
################################################
a=2
e=18
b=5
c=7
d=13
s=c(2,a,3,b,6,c,9,d,15,e)
median(s)
fivenum(s)
mean(s)
s2 = s+2
median(s2)
mean(s2)
fivenum(s2)
s2m=s*2
median(s2m)
mean(s2m)
fivenum(s2m)
###############################################
6.7-1.5*1.1
1-pnorm(-2)
pnorm(1.9)-pnorm(-1.2)
