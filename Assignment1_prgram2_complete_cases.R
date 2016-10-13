###complete case function

directory<-"D:\\Machine Learning\\R-tool\\Data set\\specdata\\"

complete<-function(directory,id=1:332)
{
      
      #initization
      output_matrix<-matrix( nrow = length(id), ncol = 2)
      colnames(output_matrix)<-c("id","nobs")
      x=0
      
      #calculating file name
      for (i in (id))
      {     id_val<-i
            if(id_val<=9)
            {     fileid=paste0("00",id_val)
            }else if (id_val<=99)
            {     fileid=paste0("0",id_val)
            }else 
            {     fileid=paste0("",id_val)}
      
      #fetching file data
            finalid=paste0(fileid,".csv")
            path<-paste0(directory,finalid)
            sframe<-read.csv(path)
      
      #logic
            u=complete.cases(sframe)
            b<-sframe[u,]
            n=nrow(b)
            x=x+1
            output_matrix[x,1]=id[x]
            output_matrix[x,2]=n
      
      }
      #return
      output_matrix
}

