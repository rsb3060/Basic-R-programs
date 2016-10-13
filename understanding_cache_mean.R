makeVector <- function(x = numeric()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setmean <- function(mean) m <<- mean
      getmean <- function() m
      list(set = set, get = get,
           setmean = setmean,
           getmean = getmean)
}
cachemean <- function(x, ...) {
      m <- x$getmean()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- mean(data, ...)
      x$setmean(m)
      m
}
directory<-"D:\\R-tool\\Data set\\Phlndra_crime_rate.csv"
sframe<-read.csv(directory)
y1=sframe[2:3]
z=as.matrix(y1)
a=z[2:10,1]
b=z[1:2,1]
mean(a)
mean(b)
makeVector(a)
