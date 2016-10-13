library(datasets)
data(iris)


a=s$virginica
mean(a$Sepal.Length)
colMeans(iris)
apply(iris[1:4],2,mean)
library(datasets)
data(mtcars)
?mtcars
a=mtcars[1:6,]
tapply(a$mpg,a$cyl,mean)
mean(a$mpg,a$cyl)
sapply(split(a$mpg,a$cyl),mean)
with(a,tapply(mpg, cyl, mean))
tapply(a$cyl,a$mpg, mean)
b=sapply(split(mtcars$hp,mtcars$cyl),mean)
debug(mean)