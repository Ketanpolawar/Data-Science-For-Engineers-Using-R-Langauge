#getting and setting the working directories
getwd()
setwd("C:/Users/DHANSHRI/Desktop/R")
getwd()
#packages
library(caret)#for the confusion matrix
library(class)#for using k nearest neighbor
#creating the data frame using the csv file
df1=read.csv("serviceTestData.csv")
df2=read.csv("serviceTrainData.csv")
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

#knn in R
#train df , test df , cl(factor for classification), k(number of neighbors)
prediction = knn(train=df2[,-6],test=df1[,-6],cl=df2$Service,k=3)
prediction

#confusion matrix //  manual method
conf_matrix=table(prediction,df1[,6])
conf_matrix

knn_accuracy =sum(diag(conf_matrix))/nrow(df1)
knn_accuracy
df1[,6]
prediction
#confusion matrix using caret library
#c=confusionMatrix(data=prediction,df1$Service)
#c



