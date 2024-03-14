#R is open source langauge
#getwd() get working diectory
#setwd() set the working directory

#Naming starts with alphabet can contain '.' or '_' can cntain numbers also
#a.name,a_name are allowed 
#datatypes in R 
# 1.Numeric
# 2.Boolean/logical
# 3.Complex
# 4.Character

num=3

#typeof() returns the type 
typeof(num)
#as.datatype() convert into data types
as.integer(num)
#is.datatype 
is.integer(num)

#objects in R
#vectors : ordered collection of objects of same type
#list :ordered collection of object hetero
#data frame : collection of tabular data

b=c(1,2,3) #vector
s=c("ketan",2,"polawar")#list
d=data.frame(b,s)#data frame

#c() function used to concatenate the objects

#list and  getting element from the list

my_list=list(name="Ketan",age=20,scores=c(14,13,15,14),is_student=TRUE)
#using the list index
outer=my_list[1]
inner=my_list[[3]][1]#[[]] outer [] for inner nesting
print(outer)
print(inner)
#using the list names
print(my_list$name)
#adding new name element in the list
my_list$hobbies=c('cooking','Reading')
print(my_list)

#dataframes and  getting element from the dataframes
data=data.frame(
  Name=c("Ketan","Polawar"),
  Age=c(10,20),
  city=c("indore","Nagpur")
)

#accessing the data

ketan_age=data[1,"Age"]#row,column
print(ketan_age)

#edit(data) used to manually change the data
#adding the column 
data$country=c("India","India")
print(data)
#or using cbind() function or rbind()

#deleting the data
data=data[-2,] #row or column or both as per requirement
print(data)
#indexing from 1

#Operators in R
x=20
y=10
#addition 
cat("x+y returns: ",x+y,"\n")
#subtraction
cat("x-y returns: ",x-y,"\n")
#multiplication
cat("x*y returns: ",x*y,"\n")
#division
cat("x/y returns: ",x/y,"\n")
#reminder
cat("x%%y returns: ",x%%y,"\n")
#exponent
cat("x^y returns: ",x^y,"\n")

#All the logical operators are used in R like python 

#Matrix in R
#default it is created by columns
A=matrix(data=c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
#use t(A) for transpose
#det(A) for determinant
#solve(A) for inverse

#Generating Special Matrices in R
#1. Identity Matrices
identity_mat=diag(3)
print(identity_mat)
#2.zero_Matrices
zero_mat=matrix(0,nrow = 3,ncol = 3)
print(zero_mat)
#3. Diagonal Materices
diag_mat=matrix(diag(c(1,2,3)),nrow = 3,ncol =3)
print(diag_mat)
#find rows and columns in matrix
#nrow(name) ncol(name)

#Matrix Aerthematics 
# + ,-,*,%*%,/ 
#use rbind() ,cbind() for concatenation

#FUNCTION IN R

# func_name=function(arguments){
#   Statement
# }

sq=function(e){
  s=a*a
  return(s)
}

o=sq(5)
print(o)

# lapply apply a function on list
# mapply and tapply for multivariate and subset respectively



#conditionals In R
# if(condition){
#   
# }else{
#   
# }
#can use else if condition also

#For loop

# for (i in 1:5){
#   Statement
# }

#Plots in R

#Scatter Plot
x=1:20
y=x^2
plot(x,y,main = 'X vs Y',xlab = "X",ylab = 'Y',pch=1)bar
#barplot
barplot(mark,ylab='',xlab='',col='blue')
#line 
plot(x,y,type='l')

