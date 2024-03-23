#Probability is non negative and less than one 0<=P(E)<=1
#P(S)=1 Probability of entire sample space in 1
#P(A UNION B)=P(A)+P(B) (For two mutually exclusively events)
#P=P(E)/P(S)
#P(B|A)=P(A&B)/P(A)
#MUTUALLY EXCLUSIVE EVENTS (IF A HAPPENS B WILL NOT HAPPEN i.e. they are dependent)
#Independent Events occurring of event one does not effect the occurrence of event two

#if events are independent :P(A&B)=P(A)*P(B)
#P(A|B)=P(A)+P(B)-P(A&B)
#Probability  Mass Functions (PMF)
#uses discrete random variable like heads or tails
#Probability Density Function (PDF)
#uses continuous random variable temperature range heights etc
#Binomial distribution on discrete variables based upon success and failure
#Gaussian/normal distribution bell shaped curve helps to determine continuous random variable (mean and std approach)
#chi distribution (degree of freedom is parameter mean=k and variance=2k 68-95,99.73 rule one two three standard deviation)
#Expected value :
#desecrate value : sum of (xi*pi)
#for continuous value: integration (xi*f(xi)*dx)
#mean=E[X]
#Varience=std^2=E|(x-u)^2|=E|X^2|-u^2
#E(ax+b)=aE(x)+b  E(ax+bx1)=aE(x)+bE(x1)

#V(ax+b)=a^2V(x)
#V(ax+bx1)=a^2V(x)+b^2V(x2)+2ab cov(x,x1)

#Covarience = sum (X-x')(y-y')/N (direction of linear relationship)
#Correlation = cov(x,y)/std(x)*std(y)   std=(sum(x-x')^2/n-1)(strength of linear relation -1 to +1)
#cov=E[(x-ux)(y-uy)]
#Cor=std(x,y)/var(x)*var(y)
##IMPLEMENTATION IN R LANGAUGE##
#pnorm(X,mean,std,'lower tail'=T/F) : gives the probability of the PDF of distribution for provided X random variable
#pchisq : chi-square distribution (Parameter is DOF)
#pbinom :binomial distribution (trails and success probability)
#punif : uniform distribution min and max value
#qnorm(p,mean,std,'lower tail'=T/F) :gives the probability of the PDF of distribution for provided probalility p
#qchisq : chi-square distribution (Parameter is DOF)
#qbinom :binomial distribution (trails and success probability)
#qunif : uniform distribution min and max value

##Important Topic Sampling and tests##

#population : entire set of random experiment
#smaple set : subset of population (finite)
#descriptive Graphical and Numeric only present data
#inferentail estamation and Prediction to make some decisions

#mean :Average
#median : middle value in sorted fashion
#mode : Most frequent data
#Range : Difference between min mad max

#&Hypothesis testing
#Two tailed Ho u=some vale H1 u!= some vale
#One tailed  ho>= value H1 <value and similar
#we generally put H1 as someting we want to proove abd Ho is (generallly opp H1)is regected to proove H1
#Type 1 error :True is rejected
#Type 2 error :False is accepted
#Z-test: 
# used when population variance is known 
# used when the sample size greater than 30
#  Z=(x'-u/(std/(n^1/2)))  std of population given
#T test
# used when variance is not known 
# use for samplple size less tahn 30
#  z=x'-u/s(n^1/2)  s is std of sample calculated


#var (x) = sum(x-u)2(p (x))) -u^@ 
 
 




