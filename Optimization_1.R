#Optimization 

#It is the use of specific method to determine the best possible solution to the problem

#Univariate : single variable of interest
#Objective function : function of interest
#Decision variables : variables in objective function
#Constraints : conditions to be satisfied by the solutions

#Necessary conditions for x to be minimizer univariate
#f'(x)   y2-y1/x2-x1 =0
#Sufficient condition
#f"(x)>0

#Calculate the gradient of a given functions using deriv() and D() function 
f=expression(x^2+5*x+1)
#1st Derivative 
cat("1st deravative using deriv() function : \n")
print(deriv(f,'x'))

cat("\n 1st deravitive using D() function :\n")
f_prime=D(f,'x')
print(f_prime)

#2nd Derivative 

cat("1st deravative using D() function : \n")
print(D(f_prime,'x'))


#-------------------------------------------------------------------------------

#Define the multivariate function
f=expression(x^2+5*x*y-y^2)

#Derivative wrt x
cat("\n 1st deravitive using D() function wrt x :\n")
f_prime=D(f,'x')
print(f_prime)
#Derivative wrt y
cat("\n 1st deravitive using D() function wrt x :\n")
f_prime=D(f,'y')
print(f_prime)

#Stationary points : any points at which you may get max or min value (get by solving f'(x))
#for minima and maxima (put the solution in f"(x) if ans is +ve then their exixts minima else their lies maxima)
#for minimum value fut stationary point and then put back in equation

#Multivariate optimization : has more than one decision variable  
#necessary condition grad f(x)0
#sufficient condition hessian matrix grad^2f(x) with +ve eigen value

#install and load necessary packages
install.packages("numDeriv")
library(numDeriv)
#defining the functions 
f=function(x) x[1]^2+4*x[2]^2+x[1]*x[2]

#calculate the hessian matrix using hessian() function
hessian_matrix = hessian(f,x=c(1,2))

#print the hessian matrix
print(hessian_matrix)

#saddle point f"(x)=0
#minima f"(x)>0
#maxima f"(x)<0

#Aim for optimization :
# 1. To reach bottom point in the region
# 2. Direction of descent
# 3. steepest descent
# 4. Sometimes we climb up again for better idea to move downwards

#Gradient Descent Algorithm 
#x(k+1)=x(k)+alpha(k)*(-grad(f))


gradient_descent_plot =function (gradient_func,learning_rate,initial_x,numsteps){
  x=initail_x
  trajectory=numeric(numsteps+1)
  
  for(i in 1:numsteps){
    gradient=gradient_func(x)
    x=x-learning_rate*gradient
    
  }
  return(trajectory)
}

#Quadratic function :f(x)=x^2
quadratic_func = function(x){
  return(2*x) #Gradient of f(x)=x^2
}

#parameters
learning_rate=0.01
initial_x=100
numsteps=500

gradient_descent_plot(gradient_func,learning_rate,initial_x,numsteps )



