#---------------------------------------------------Lab 5-----------------------------------------#

#Primary research question
#How have the world record times for the men's and the women’s mile event changed over the years?

library(SDSFoundations)
WR = WorldRecords

#1. Create a subset of the data that contains World Record cases for the men’s and women's Mile event.
#Subset the data
mens<- WR[WR$Event=='Mens Mile',]
womens <- WR[WR$Event=='Womens Mile',] 

#3. Create a scatterplot for each relationship of Mile time and year: one for men and one for women.  

plot(mens$Year,mens$Record,main='Mens Mile World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womens$Year,womens$Record,main='Womens Mile World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)

#Run linear models
linFit(mens$Year, mens$Record)
linFit(womens$Year,womens$Record)
