#--------------------------------------------Problem Set 2--------------------------------------------#

#Check the data
#Load the data

library(SDSFoundations)
bull = BullRiders

#During a professional bull-riding event, riders usually attempt to ride a bull three or more times.
#This means that they can record a "ride" (successfully staying on the bull) multiple times in the 
#same event.

#Subset the dataset for riders that had at least 1 ride in the 2014 season. Call this dataset new_bull.

new_bull <- bull[bull$Rides14  >= 1 ,]


#Create a new variable or vector for the average number of rides per event for each bull rider
#in the new_bull dataset:

RidesPerEvent14 <- new_bull$Rides14/new_bull$Events14

#Make a histogram of your "rides per event" variable and find the five-number summary for your 
#"rides per event" variable.
hist(RidesPerEvent14)
fivenum(RidesPerEvent14)
RidesPerEvent14

#1d. Create a scatterplot of "rides per event" and yearly ranking (defined by the "Rank14" variable) 
#and add a line of best fit. Which of the following best describes the relationship between these 
#two variables?
plot(RidesPerEvent14, new_bull$Rank14)
abline(lm(new_bull$Rank14~RidesPerEvent14))
abline(lm(RidesPerEvent14~new_bull$Rank14))

#1e. What is the correlation coefficient for rides per event and yearly ranking?
cor(RidesPerEvent14, new_bull$Rank14)

x = c(30,45,180,95,130,140,80,60,110,0,80)
y = c(74,68,87,90,94,84,88,82,93,65,90)

cor(x,y)
