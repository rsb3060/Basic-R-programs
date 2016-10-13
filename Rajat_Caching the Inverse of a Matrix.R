#makeCaheMatrix will store the matrix and the inverse of it 

makeCacheMatrix <- function(mat) {
      mat_new <-mat   #new matrix is assigned with the inatialised matrix
      
      mat_inv <- NULL #value of the inverse of matrix
      
      mat_old<-NULL#store the matrix whose inverse had been calculated
      
      set_mat <- function(newmat) {#can set a new matrix into mat_new(new matrix whose
            #inverse is still not calculated)
            mat_new <<- newmat

      }
      set_inv <- function(m,inv) {#store the matrix whose inverse
            #is calculated along with inverse
            mat_old<<-m
            mat_inv<<-inv
      }
      get_mat_new<- function() mat_new #give the matrix whose inverse
      #need to be calculated
      
      get_mat_old<- function() mat_old #return the matrix whose inverse
      #was calculated
      
      get_inv<- function() mat_inv     #return the inverse of mat old
      
      list(set_mat = set_mat, set_inv = set_inv,
           get_mat_old = get_mat_old,
           get_mat_new = get_mat_new,
           get_inv = get_inv)
      
}

cacheSolve <- function(x){
      m1<-x$get_mat_old()#get the matrix whose inverse is stored
      m2<-x$get_mat_new()#get the matrix whose inverse need to be calculated
      inv<-x$get_inv()   #get the inverse
      k=0
      if(!is.null(m1)){  #first time there is no old matrix(no inverse calculated)
            
            for(i in seq_len(nrow(m1))){  #checking for new and old matrix are equal
                  for(j in seq_len(ncol(m1))){
                        if (!(m1[i,j]==m2[i,j]))
                              k=1
            }}}
      if ((k==0)&& (!is.null(inv))){   #if equal then return cahe data
            message("getting cached data")
            return(inv)
      }
      message("calculating inverse") #calculating inverse
      inv=solve(m2)
      x$set_inv(m2,inv)
      inv
}