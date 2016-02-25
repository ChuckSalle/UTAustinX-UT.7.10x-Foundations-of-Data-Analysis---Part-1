#------------------------------------------ Lab 2----------------------------------------------#

#Primary Research Question
#Compare the weight of adult cats and dogs at the shelter.  How typical would it be to find a 
#13-pound cat?  What about a 13-pound dog?

#Load the data

library(SDSFoundations)
animaldata = AnimalData

#1. Create a table to show how many adult (at intake) cats and dogs are in the dataset. 
#An animal is considered an adult if it is at least one year of age. 

adults = animaldata[animaldata$Age.Intake >= 1,]
table(adults$Animal.Type)

#2. Make a histogram of weight for both adult dogs and cats. 

DogAdult = adults[adults$Animal.Type == "Dog",]
hist(DogAdult$Weight,main = "Dog")

CatAdult = adults[adults$Animal.Type == "Cat",]
hist(CatAdult$Weight, main = "Cat")

#3. Calculate the appropriate measures of center and spread for each distribution.
fivenum(DogAdult$Weight)
fivenum(CatAdult$Weight)
mean(CatAdult$Weight)
sd(CatAdult$Weight)

#4. Find the z-score for a 13-pound cat.

(13-8.60)/1.91

#5. Find the quartile for a 13-pound dog.
summary(DogAdult$Weight)
