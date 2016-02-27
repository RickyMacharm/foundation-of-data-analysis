acl = AustinCityLimits

gtab = table(acl$Grammy)

prop.table(gtab)

gtab2 = table(acl$Grammy, acl$Gender)

# args: table, margin = 1 (left) or 2 (bottom)
prop.table(gtab2,2)

# bar chart
barplot(gtab, main='acl grammy winners', xlab='grammy winners', ylab='counts')

barplot(gtab2, legend=T)
barplot(gtab2, legend=T, beside=T)

barplot(prop.table(gtab2,2),legend=T)
