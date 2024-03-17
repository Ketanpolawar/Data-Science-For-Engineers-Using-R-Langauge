#Regression Theory
#Prediction of stock etc
#univariate : 1 dependent and one independent variable
#Multivariate : multi independent and multi dependent variable
#Linear and Non-Linear Relationship 

#OLS Ordinry Least Square 
#Linear Model between yi and xi ,i=1.....n
#yi=B0+B1x1+Ei
#Error in only dependent variable and no error in independent variable
#Ei=yi-B0-B1xi
#The sum of squares of errors(SSE)
#sum=(Ei)^2
#B1=sum((xi-x')(yi-y'))/sum((xi-x')^2)   B0=y'-B1x'


#R^2  to test goodness of fit
#it calculated the variability in output variable calculated by input variable
#R^2 =1- sum(yi-y^')^2/sum(yi-y')^2
#R^2 lie between 1(good fit) and 0(bad fit)
#Adjusted R^2 is the modification of R^2 metric to take into account the number of independent variables
#R^2'=1-(sum(yi-y^')^2/(n-p-1))/(sum(yi-y')^2/(n-1))

#data
x=c(1,2,3,4,5,6)
y=c(3,5,7,8,10,12)

#preparing the dataset with dataframe
df=data.frame(x,y)

#using the linear fitting model function (lm) to fit model
model=lm(y~x,data=df)
#printing the summary of the model
summary(model)


#Sum square Quantity Definitions
# 
# SSE =sum(yi-yi^)^2
# SSR= sum(yi^-y')^2
# SST= sum(yi-y')^2
# 
# SSR (residual sum of squares)
# SST (total sum of squares)
# SSE (sum squared error)

# SST=SSE+SST
# R^2=1-SSE/SST


