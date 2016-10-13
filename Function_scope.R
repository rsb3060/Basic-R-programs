search()
z<-5
add2<-function(x,y){x+y/mn}##scope of variable
make.power<-function(n){##function inside function
    pow<-function(x){
        x^n
      }
}
make.power(3)
cube<-make.power(3)
cube(5)
ls(environment(cube))
get("pow",environment(cube))

##difference between lexical vs.dynamic Scoping 
##lexical scoping takes scope where it is "defined"
##dynamic scoping takes scope where it is "called" so the value of y in g to be 2
y<-10
f<-function(x){
  y<-2
  y^2+g(x)
}
g<-function(x){
  x*y
}
f(3)