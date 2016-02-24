#------------------------First PreLab--------------------------#
#Primary Research Question:
#How many cyclist were students, how often ride and what was the
#average distance the rade?

#First Part: Check the data

library(SDSFoundations)
bike = BikeData

#What is the age of the 7th rider in the dataset? 45
#how many of the first 10 riders ride daily? 3
#What is the speed of the first female who cycles 1 time per month? 8.10

###Check the variables of interest###

#What type of variable is student? Categorical
#What type of variable is cyc_freq? Categorical
#What type of variable is distance? Numerical

#-------------------------Prepare for the analysis-----------------------------------------#

#Let's break this analysis into its required steps:

# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
student <-bike[bike$student==1,]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <-student$distance

# Find average distance ridden
mean(distance)
