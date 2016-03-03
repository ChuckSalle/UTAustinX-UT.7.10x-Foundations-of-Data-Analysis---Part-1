#You want to see if an artist's popularity on Facebook (whether or not they have 100,000 or more likes) 
#has anything to do with their age.

library(SDSFoundations)
acl = AustinCityLimits

#1.  Generate a table to show the number of artists that are "popular" and those that are not.

table(acl$Facebook.100k)

#1c. For each age group, fill in the proportion of artists who have 100,000 or more likes on Facebook. 
#(Use the appropriate function in R to calculate these, and round to 3 decimal places (i.e. 0.123.)
g = table(acl$Facebook.100k, acl$Age.Group)
prop.table(g,2)
