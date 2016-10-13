

x<-c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
f
x
split(x,f)
lapply(split(x,f),mean)
tapply(x,f,mean)##same as above


directory<-"D:\\R-tool\\Data set\\Phlndra_crime_rate.csv"
sframe<-read.csv(directory)


s<-split(sframe,sframe$County)     
lapply(s,function(x) colMeans(x[,c("HousePrice","CrimeRate")]))
sapply(s,function(x) colMeans(x[,c("HousePrice","CrimeRate")],na.rm=TRUE))


directory<-"D:\\R-tool\\Data set\\new.csv"
sframe<-read.csv(directory)
s<-split(sframe,sframe$bedrooms)     
lapply(s,function(x) colMeans(x[,c("sqft_living","price")]))
sapply(s,function(x) colMeans(x[,c("sqft_living","price")]))

##spliting in more than one level
d=interaction(sframe$bedrooms,sframe$view)
a=split(sframe,d,drop = TRUE)

#or
a=split(sframe,list(sframe$bedrooms,sframe$view),drop = TRUE)

