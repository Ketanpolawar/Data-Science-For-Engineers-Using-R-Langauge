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








