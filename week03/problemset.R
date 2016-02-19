#
new_bull = bull[bull$Rides14  > 0 ,]

RidesPerEvent14 = new_bull$Rides14/new_bull$Events14

hist(RidesPerEvent14)
fivenum(RidesPerEvent14)
mean(RidesPerEvent14)

plot(RidesPerEvent14, new_bull$Rank14, xlab="rides per event", ylab="ranking")
abline(lm(new_bull$Rank14~RidesPerEvent14))
cor(RidesPerEvent14, new_bull$Rank14)



myset = data
plot(myset$Minutes.Spent.Studying, myset$Exam.Grade)
cor(myset$Minutes.Spent.Studying, myset$Exam.Grade)
abline(lm(myset$Exam.Grade~myset$Minutes.Spent.Studying))

which(myset$Exam.Grade > 90 & myset$Minutes.Spent.Studying < 50)
myset[7,]

mynewset = myset[(myset$Minutes.Spent.Studying != 30 | myset$Exam.Grade != 92),]
cor(mynewset$Minutes.Spent.Studying, mynewset$Exam.Grade)
