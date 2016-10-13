list(rep(1,4),rep(2,3),rep(3,2),rep(4,1))

mapply(rep,1:4,4:1)


noise<-function(n,mean,sd){
      rnorm(n,mean,sd)}
noise(5,1,2)
noise(1:5,1:5,2)
mapply(noise,1:5,1:5,2)#vectorization

x<-c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
f
x
tapply(x,f,range)
tapply(x,f,mean)