

path_outcome<-"D:\\R-tool\\Data set\\Hospital_data\\outcome-of-care-measures.csv"
outcome<-read.csv(path_outcome,colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])



best<-function(state, outcome)
{     
      sframe<-read.csv(path_outcome)
      all_state=attr(sframe$State,"levels")
      sframe<-read.csv(path_outcome,colClasses = "character")
      check=0
      for (a in all_state) {
            if (a==state){
                  check=1
                  break()}
            }
      if (check==0) {print("sorry invalid state")
            return()}
      check=0
      if (outcome=="heart attack")
      {column_num=11
      check=1}
      else if (outcome=="heart failure")
      {column_num=17
      check=1}
      else if(outcome=="pneumonia")
      {column_num=23
      check=1}
      if (check==0) {print("sorry invalid state") 
            return()} 
      b=split(sframe,sframe$State)
      relative_data=b[[state,exact=FALSE]] 
      
      u=is.na(as.numeric(relative_data[,column_num]))
      relative_data<-relative_data[!u,]
      relative_data[,column_num]=as.numeric(relative_data[,column_num])
      relative_data=relative_data[order(relative_data[,column_num],relative_data[,2]),]
      relative_data[1,2]
      
}


