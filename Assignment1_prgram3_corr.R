###correaltion ...function

directory<-"D:\\Machine Learning\\R-tool\\Data set\\specdata\\"

corr<-function(directory,threshold=0)
{
      ##getting id according to threshold and declaring matrix 
      ##for storing cor
      data_matrix=complete(directory,1:332)
      u<-data_matrix[,2]>threshold
      b<-data_matrix[u,]
      id<-as.array(b[,1])
      if ((length(id)>=1)&&(length(id)<=332)){
      d=matrix(nrow=length(id))}else{d=matrix(nrow=1,ncol=1)}
      a=0
      
      ## for getting value from selected id
      for (i in (id)){
            id_val<-i
            if(id_val<=9)
            {     fileid=paste0("00",id_val)
            }else if (id_val<=99)
            {     fileid=paste0("0",id_val)
            }else 
            {     fileid=paste0("",id_val)
            }
            finalid=paste0(fileid,".csv")
            path<-paste0(directory,finalid)
            sframe<-read.csv(path)
      
      ##calculating correaltion
            u=complete.cases(sframe)
            b<-sframe[u,]
            x<-as.array(b[,2])
            y<-as.array(b[,3])
      
      ##storing into matrix
            a=a+1
            d[a,1]<-cor(x,y)
      
      }
      #return
     d[,1]
     
      
}
