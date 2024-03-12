#getting and setting the working directory
getwd()
setwd('C:/Users/DHANSHRI/Desktop/R')
#reading the data from the text file 
df1=read.delim("bonds.txt",row.names = 1)
#viewing the dataframe
View(df1)
#head
head(df1)
tail(df1)
#structure of data
str(df1)
#5 number summary
summary(df1)
#plotting the data to visualize the data in 2d and analyse
plot(df1$CouponRate,df1$BidPrice,main="Bid price vs Coupon Rate",
     xlab="Coupon Rate",
     ylab="Bid Price")

#buliding the linear model using the syntax 
#lm(dependent var ~ independent var)
bondsmod = lm(BidPrice~CouponRate,data=df1)
#fitting the regression line over the plot using abline function

plot(df1$CouponRate,df1$BidPrice,
     main="Bid price vs Coupon Rate",
     xlab="Coupon Rate",
     ylab="Bid Price")
abline(bondsmod)

summary(bondsmod)

###Resudial Analysis

plot(bondsmod$fitted.values,rstandard(bondsmod),
     main="Resudial Plot",
     xlab="Predicted values for Bid Prices",
     ylab="Standardized Resudials")
abline(h=2,lty=2)#confidence region
abline(h=-2,lty=2)

identify(bondsmod$fitted.values,rstandard(bondsmod))
df2=df1[-13]
bondsmod1=lm(BidPrice~CouponRate,data=df1)

summary(bondsmod1)

plot(df1$CouponRate[-c(4,13,34,35)],df1$BidPrice[-c(4,13,34,35)],main="Bid price vs Coupon Rate",
     xlab="Coupon Rate",
     ylab="Bid Price")
abline(bondsmod1)
