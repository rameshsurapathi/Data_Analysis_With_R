# Author : Ramesh Kumar Surapathi

# get the working directory
getwd()
setwd('/Users/surapathiramesh/Downloads/EDA_Course_Materials/lesson3')
# list all files and load the data 

list.files()
fbdata <- read.csv('pseudo_facebook.tsv', sep='\t')

summary(fbdata)

# Histograms 
#scale_x_discrete breaks the x axis into 1:31 discrete values
#facet_wrap(~variable) - to divide histogram into small histograms based on any variable

names(fbdata)

qplot(x=dob_day,data=fbdata) + scale_x_discrete(1:31) + facet_wrap(~dob_month,ncol=3)

qplot(x=friend_count,data=fbdata, xlim = c(0,1000))

qplot(x=friend_count,data=fbdata) + scale_x_continuous(limits = c(0,1000), breaks = seq(0,1000,50))

qplot(x=tenure/365,data=fbdata,binwidth=0.25,color=I('black'),fill=I('blue'))+scale_x_continuous(limits=c(0,8))

qplot(x=age,data=fbdata,binwidth=1, xlab="Age of Facebook Users",ylab='Number of Users',
      color=I('black'),fill=I('orange'))+scale_x_continuous(limits=c(12,100))

summary(fbdata)

# by function

by(fbdata$friend_count,fbdata$gender,summary)

install.packages('gridExtra')
library('gridExtra')

# mutiple plots

p1 <- qplot(x=friend_count,data=fbdata)
p2 <- qplot(x=log10(friend_count+1),data=fbdata)
p3 <- qplot(x=sqrt(friend_count),data=fbdata)
grid.arrange(p1,p2,p3,ncol=1)


qplot(x=log10(friendships_initiated+1),data=fbdata,xlab="Likes made by Facebook Users",ylab="Number of Facebook Users"
      , geom='freqpoly',color=gender,binwidth=1)

by(fbdata$friendships_initiated,fbdata$gender,summary)

qplot(x=age,y=mean(friend_count),data=fbdata,color=I('red'))

ggplot(aes(x=age,y=friend_count),data=fbdata)+xlim(13,90)+geom_point(alpha=0.05,color='orange',position=position_jitter(h=0))
+coord_trans(y = 'sqrt')
+geom_line(stat='summary',fun.y=mean)

install.packages('dplyr')

library('dplyr')

summarise(fbdata,mean_friend_count = mean(friend_count))

dim(fbdata)










