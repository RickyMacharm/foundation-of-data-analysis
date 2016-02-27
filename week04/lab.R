#Subset males
males = acl[acl$Gender=='M',]

# table for genre and grammy
genre = table(males$Genre)
genre

grammy = table(males$Grammy)
grammy

twoway = table(males$Genre, males$Grammy)
twoway

# 
barplot(twoway, legend=T, beside=T)

# probability to win grammy P(A)
prop.table(grammy)

# probability to of winning grammy, given genre P(A|B)
prop.table(twoway,1)
