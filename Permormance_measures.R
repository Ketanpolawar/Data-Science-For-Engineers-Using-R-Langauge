#Parameter and Hyper parameter 

#Parameter 
#Estimated during the training with historical data.
#It is a part of the model
#The estimated value is saved with the trained model
#Dependent on the dataset that the system is trained with

#Hyperparameter
#value are set beforehand
#External to the model
#Not a part of the trained model
#Independent of the dataset

#Validation: to choose valid hyperparameters

#LOOCV :- Leave one out cross validation 
#one test and other train d ata (in iteration)

#K-fold cross vaidation 
#divide the data in k equal classes each time take one class for training and other for testing purpose

#Linearly Seperable : can be seperated vai margin
#linearly unseperable data : cannot be seperated vai margin

#Logistic Regression
#Classification thechnique which draws linear boundry.

#function approximation : to find the best fit line 
#classification : to increase the margin betn the line and points


#Performance Measures 
#confusion matrix : true false depend upon actual data and positive and negative on prediction 
#type 1 error : false positive
#type 2 error : false negative

#Accuracy : true classification from total classification
#  (TP+TN)/N

#Sensitivity : correct positive labels by total actual positive labels
# TP/(TP+FN)

#Specificity : correct negative prediction by total actual negative labels
# TN/(TN+FP)

#Both sensitivity and specificity lies in range 0,1 ,ideal value is 1

#Balanced Accuracy : (Sensitivity + Specificity)/2

#Prevalence : total actual positive labels by total labels
# TP+FN/N

#Positive predictive value : Proportion of correct results in labels identified as positive
#(sensitivity*prevalence)/((sensitivity*prevalence)+(1-specificity)*(1-prevalence))
#TP/TP+FP

#Negative prediction value :Proportion of correct results in labels identified as negative
#specificity*(1-prevalence)/(((1-sensitivity)*prevalence)+((specificity)*(1-prevalence)))
#TN/TN+FN

#detection Rate :
#TP/N

#Detection prevalence : 
#TP+FP/N

#Kappa:
#(observed accuracy)-(expected accuracy)/1-expected accuracy

#Roc(Reciever Operating Charactersicics) : graph between sensitivity and 1-specificity (Roc must be near 1)
