A=matrix(c(1,2,3,4),nrow=2)
print(A)

#Determinant of matrix
print(det(A))
#Inverse of Matrix
print(solve(A))
#Rank of Matrix
library(pracma)
print(Rank(A))

#Singular matrix :A square matrix whose determinant is 0
#Rank denotes number of linearly independent variables(|A|!=0)
#Nullity denotes the number of linear Relationships between the variables

#Nullity or null space of matrix N_column - Rank 

#Row echelon form elements below the diagonal are zero using the row column transformations
ref=rref(A)
print(ref)

#in case of non-square matrix m*n if n<m rank can most be n
#Linear equation are of the form Ax=B
#case1 m=n easy to solve
#m equation n variables
#1.1 A is full rank |A|!=0 x=A'b Rank|A|=Rank[A|b]=n unique solution
#1.2.1 A is not full Rank Rank|A|=rank|A|b|<n  infinite solution
#1.2.2 A is not full Rank Rank|A|!=rank|A|b| n no solution
#case2 m>n no solution x=(A'A)-1A'b least square
#case3 m<n infinitely many solution x=A'(AA')-1b lesat norm

A=matrix(c(1,2,3,0,0,1),ncol=2,byrow=F)
print(A)
b=matrix(c(1,2,5),ncol=1,byrow=F)
print(b)

library(MASS)
x=ginv(A)%*%b#generalized inverse
print(x)

A1=matrix(c(1,0,2,0,3,1),ncol=3,byrow=F)
print(A1)
 
b1=c(2,1)
print(b)

#Vectors :
#unit vectors :Vector with magnitude is unity or 1 A/|A|
#Orthogonal Vectors : The vectors whose dot product is zero A'B=0

#Basis Vectors :set of linearly independent vectors which span the space

#eigen vector and eigen value
#Ax=b=lamda x
#eigen vectors are vectors whose direction not change after matrix transformation
#lamda is eigen value denotes scaling

#|A-lamdaI|x=0
A=matrix(c(1,2,3,4),nrow=2)
#getting the Eigen values
ev=eigen(A)
print(ev)
#trace is the sum of eigen value
#|A| is product of eigen value
#det |A| is equal to det |A|'

