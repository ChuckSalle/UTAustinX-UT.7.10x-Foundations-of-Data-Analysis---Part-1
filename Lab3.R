#---------------------------------------------------- Lab 3--------------------------------------------#

#Check the data
#Load the data

library(SDSFoundations)
bull = BullRiders

#PRIMARY RESEARCH QUESTION

#In 2012, which variable had the strongest linear relationship with Earnings: 
#Ride Percentage or Cup Points?

#1. Create a dataset which contains riders that participated in at least one event in 2012.

new_bull <- bull[bull$Events12  >= 1 ,]

#2. Make a histogram to visualize the distribution of Earnings for 2012.
hist(new_bull$Earnings12)

#3. Generate the appropriate descriptive statistics for this distribution.
mean(new_bull$Earnings12)
sd(new_bull$Earnings12)
median(new_bull$Earnings12)
fivenum(new_bull$Earnings12)
max(new_bull$Earnings12)

#4. Make a correlation matrix for Earnings12, RidePer12 and CupPoints12.
vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull[,vars])

#5. Plot a scatterplot for Earnings12 with each variable of interest.  Put Earnings12 on the y-axis. 

plot(new_bull$RidePer12, new_bull$Earnings12)
plot(new_bull$CupPoints12, new_bull$Earnings12)

## identify specific case
which(new_bull$Earnings12 == max(new_bull$Earnings12))
new_bull[4,]

#Subset the data
nooutlier <- new_bull[new_bull$Earnings12 < 1000000 ,]

#Then rerun the correlation matrix and the scatterplots to see the difference. 
#Make sure to use the new dataframe (nooutlier) that you just created.
vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(nooutlier[,vars])

plot(nooutlier$RidePer12, nooutlier$Earnings12)
plot(nooutlier$CupPoints12, nooutlier$Earnings12)
