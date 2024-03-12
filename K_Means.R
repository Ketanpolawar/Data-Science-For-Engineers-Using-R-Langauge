#getting and setting the working directories
getwd()
setwd("C:/Users/DHANSHRI/Desktop/R")
getwd()
#packages
library(caret)#for the confusion matrix
library(class)#for using k nearest neighbor
#creating the data frame using the csv file
df1=read.csv("tripDetails.csv")
#getting the summary of the data
#gives the five point summary of the each variables
summary(df1)
#getting the structure of the data
str(df1)
#viewing the data frame
View(df1)
#head
head(df1)
#tail 
tail(df1)

#kmeans (x,centers,iter.max,nstart)
tripCluster = kmeans(df1,3)
tripCluster


#method to calculate the optimal number of culster

k.max=10
wss=rep(NA,k.max)
nc=list()
for(i in 1:k.max){
  driveClasses = kmeans(df1,i)
  wss[i]=driveClasses$tot.withinss
  nc[[i]]=driveClasses$size
}
plot(1:k.max,wss,type="b",pch=19,xlab="Number of Clusters",ylab="Total within-clusters sum of squsres:Trips")



