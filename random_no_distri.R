rnorm(5,4,2)#r for random number generation
dnorm(5,4,2,log = FALSE)#d for density
pnorm(5,4,2,lower.tail = TRUE,log.p = FALSE)
#p for cumalative distribution
qnorm(5,4,2,lower.tail = TRUE,log.p = FALSE)
#q for quantile function
x=rnorm
x
x=rnorm(10,20,2)
summary(x)
set.seed(1)#to regenerate the same number
rnorm(5)
rpois(10,1)#poission distribution
rpois(10,20)
ppois(4,2)#probablity of poission number is 
#less than or equal to 2
ppois(6,2)

#simulate a linear model with wo=0.5 w1=2 and noise=rnorm(100,0,2)
set.seed(20)
x<-rnorm(100)
e<-rnorm(100,0,2)
y<-0.5+2*x+e
summary(y)
plot(x,y)

#simulate a linear model with wo=0.5 w1=2 and noise=rnorm(100,0,2)
##x is binomial in these case producing  binary result
set.seed(20)
x<-rbinom(100,1,0.5)
e<-rnorm(100,0,2)
y<-0.5+2*x+e
summary(y)
plot(x,y)



#simulate a poission model with wo=0.5 w1=0.3 and noise=rnorm(100,0,2)
##x is binomial in these case producing  binary result
set.seed(1)
x<-rnorm(100)
log.mu<-0.5+0.3*x
y<-rpois(100,exp(log.mu))
summary(y)
plot(x,y)

