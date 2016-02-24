#-------------------------------------------First Lab-----------------------------------------------#
library(SDSFoundations)
bike<-BikeData

#2. In this example, which variable is being used to identify the cases that will be included 
#in a new dataframe called "males?"
males <- bike [bike$gender == 'M',]

#When we want to find an average, we will pull out a vector of the the variable and 
#then take its mean.
#3. In this example, a vector called "male_times" will include a string of values from 
#which dataframe?
male_times <- males$time

mean(male_times)

#---------------------------------------Primary Research Question-------------------------------#

#How many of the cyclists rode daily, how many of these riders were male and 
#how many female, and what what were their average ages?  

#1. Make a table to show how many daily riders are in the original dataset.
table(bike$cyc_freq)
#How many of the daily riders are male?
table(males$cyc_freq)

#2. Create a new datafile that includes only the daily riders.
daily = bike[bike$cyc_freq == "Daily",]
#What is the average age of daily riders? (Round to 1 decimal place.)
mean(daily$age)
#What is the average age of the female daily riders? (Round to 1 decimal place)
FemaleDaily = daily[daily$gender == "F",]
mean(FemaleDaily$age)
#What is the average age of the male daily riders? (Round to 1 decimal place.)
MaleDaily = daily[daily$gender == "M",]
mean(MaleDaily$age)

#How would you create a datafile that only includes male daily riders that are age 30 or older? 
Malethirty <- bike[bike$age >= 30 & bike$gender == "M" & bike$cyc_freq == "Daily",]



#3. Make a table to show the number of male and female daily riders.
table(daily$gender)
