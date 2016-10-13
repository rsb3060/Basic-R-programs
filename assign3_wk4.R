

path_outcome<-"D:\\R-tool\\Data set\\Hospital_data\\outcome-of-care-measures.csv"


rankall<-function(outcome,num = "best")
{     
      sframe<-read.csv(path_outcome)
      all_state=attr(sframe$State,"levels")
      sframe<-read.csv(path_outcome,colClasses = "character")
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
      df = data.frame(hospital = character(), state = character())
      
      
      for (state in all_state) {
            
            relative_data=b[[state,exact=FALSE]] 
            u=is.na(as.numeric(relative_data[,column_num]))
            relative_data<-relative_data[!u,]
            relative_data[,column_num]=as.numeric(relative_data[,column_num])
            relative_data=relative_data[order(relative_data[,column_num],relative_data[,2]),]
            
            if (nrow(relative_data)==0)
                  {df=rbind(df, data.frame(hospital = NA, state = state))}
            else if (num=="best")
                  {df=rbind(df, data.frame(hospital = relative_data[1,2], state = state))}
            else if (num=="worst")
                  {df=rbind(df, data.frame(hospital = relative_data[nrow(relative_data),2], state = state))}
            else
                  {
                        if ((num>nrow(relative_data))||(num<=0))
                              {df=rbind(df, data.frame(hospital = NA, state = state))}
                        else
                              {df=rbind(df, data.frame(hospital = relative_data[num,2], state = state))}
                  }
            
            }
      
            df
      
}

