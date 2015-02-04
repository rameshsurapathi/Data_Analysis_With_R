# Author : Ramesh Kumar Surapathi

# This is a basic file

# A vector taking numbers 1 to 5
numbers <- c(1,2,3,4,5)
numbers

# Names vector

names <- c('Ramesh','Kumar','Surapathi')
names[1]
names
names[1:2]

# Loading the mtcars data

data(mtcars)

# names(data) outputs all the variables

names(mtcars)

# help using ?

?mtcars

# displaying the data

head(mtcars,5)
tail(mtcars,10)

# displaying the column values

mtcars$mpg

# finding mean, median ,variance and standard deviation

mean(mtcars$mpg)

median(mtcars$mpg)

var(mtcars$mpg)

sd(mtcars$mpg)

# get the working directory

getwd()

# set the working directory

setwd('/Users/surapathiramesh/Downloads/EDA_Course_Materials/lesson2/')

# load the data from a csv file

data <- read.csv('stateData.csv')

redditdata <- read.csv('reddit.csv')

# summary gives all the stats of each column of the table like 
# min, max, 1st and 3rd quantile, mean and median

summary(redditdata)

# performing queries on the data

subset(data,state.region==2)
subset(data$murder,state.area<50000)

redditmale <- subset(redditdata$gender,redditdata$gender==1)
redditmale

# more functions on reddit data

levels(redditdata$age)

library(ggplot2)

