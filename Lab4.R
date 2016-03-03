#-------------------------------------------------Lab 4-----------------------------------------#

#PRIMARY RESEARCH QUESTION
#Among male artists, is there an association between winning a Grammy and the genre of music that he plays?

library(SDSFoundations)
acl = AustinCityLimits

#1. Subset the data (males only).
males <-acl[acl$Gender == "M",]

#1) How many male artists won a Grammy?

table(males$Grammy)

#3) Which genre had the greatest number of Grammy wins?
table(males$Grammy, males$Genre)

#2. Create a table to show the marginal distributions for Genre and Grammy.

genre = table(males$Genre)
genre
grammy = table(males$Grammy)
grammy

# Tabla de contingencia
twoway = table(males$Genre, males$Grammy)
twoway

barplot(twoway, legend=T, beside=T)
