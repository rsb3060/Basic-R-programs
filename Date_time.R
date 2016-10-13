x<-as.Date("1970-01-01")
x
unclass(as.Date("1992-01-09"))
x<-Sys.time()
P<-as.POSIXlt(x)   
x
names(unclass(P))
P$year
P$wday
unclass(x)
datestring<-c("January 10, 2012 10:40",
              "December 9, 1997 9:10")
x<-strptime(datestring,"%B %d, %Y %H:%M")
x
y<-as.Date("2002-01-01")
y<-as.POSIXlt(y)
x-y
