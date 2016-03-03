#-----------------------------------------Pre Lab 4---------------------------------------------------------#

#Primary Research Question
#For artists age 30 or older, do female artists play different kinds of music on Austin City Limits 
#than male artists?

library(SDSFoundations)
acl = AustinCityLimits

table(acl$Genre, acl$Gender)

#Subset the data for artists age 30 or older
older <-acl[acl$Age>=30,]

# Create tables of marginal distributions
genre <- table(older$Genre)
genre
gender <- table(older$Gender)
gender

# Create contingency table 
twoway <- table(older$Gender,older$Genre)
twoway

# Visualize the counts
barplot(twoway, legend=T, beside=T)

# Calculate P(A): the probability of each genre being played
prop.table(genre)

# Calculate P(A|B): the probability of each genre being played, given the artist’s gender
prop.table(twoway,1)
