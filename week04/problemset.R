table(acl$Facebook.100k)
twoway = table(acl$Facebook.100k, acl$Age.Group)

prop.table(twoway,2)
