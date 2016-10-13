x<-c("a","b","c","d")
##for loop structure
for(i in seq_along(x)){
	print(x[i])
	}
#or
> for(letter in (x)){
	print(letter)
	}

for (i in 1:4){print(x[i])}

#repeated for loop
x<-matrix(1:6,2,3)
> for(i in seq_len(nrow(x))){
	for(j in seq_len(ncol(x))){
		print(x[i,j])
	}}
	
##else if
if(x>3){
 y<-10}else if(x<3) {
 y<10}else  {
 y<-0}

##while loop
 while(count<10){
print(count)
count<-count+1}

while(count<10 && i==0){
print(count)
count<-count+1

##loop break and repeat
for(i in 1:10){
if (i<5){next}
 print(i)
 if (i>7){break}}
 
 
 ##specifying default and a function
 above10<-function(x,n=10){
use<-x>n
x[use]
}


