#------------------------------------------Pre Lab 3--------------------------------------#

#PRIMARY RESEARCH QUESTION
#For the 2013 season, is there a linear relationship between how often a rider places in 
#the top 10 and the number of times he stayed on his bull for a full 8 seconds?

#Check the data
#Load the data

library(SDSFoundations)
bull = BullRiders

#How Many observations are in the dataset?
58
#How many of the first 10 riders have been pro for 10 years or more?
3
#Of the top 15 riders so far in 2015, how many rides were completed with the fewest
#buck-outs in 2014?
0

#Check the variables of interest

#Subset for riders that participated in at least one event in 2013
new_bull <- bull[bull$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)
median(new_bull$Rides13)
# Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)
median(new_bull$Top10_13)

# Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])

#identify a specific record
which(new_bull$Top10_13==2 & new_bull$Rides13==22)
new_bull[4,]
