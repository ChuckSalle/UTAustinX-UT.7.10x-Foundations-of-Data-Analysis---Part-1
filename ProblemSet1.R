#-------------------------------------------Problem Set 1-------------------------------------#

library(SDSFoundations)
animaldata = AnimalData

#1a. What was the most common way that dogs arrived in the shelter? 
#(as defined by the “Intake.Type” variable)

table(animaldata$Intake.Type)


#1c. Of the dogs that were brought to the shelter as an owner surrender, 
#how many were returned to their owner?
ownersurrender = animaldata[animaldata$Intake.Type == "Owner Surrender" & animaldata$Animal.Type == "Dog",]
table(ownersurrender$Outcome.Type)

#1d. What was the mean number of days that the dogs referenced in Question 1c 
#spent at the shelter before being returned to their owner? (Round to 1 decimal place.)

returnowner = ownersurrender[ownersurrender$Outcome.Type == "Return to Owner",]

mean(returnowner$Days.Shelter)


x = c(2,2,3,4,6,7,9,13,15,18)
summary(x)
fivenum(x)
