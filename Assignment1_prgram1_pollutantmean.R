
####pollutantmean function###

directory<-"D:\\R-tool\\Data set\\specdata\\"

pollutantmean<-function(directory,pollutant,id=1:332)
{
     ##determine column based on given type of pollutant
      if (pollutant=="sulfate")
      {column_name=2
      }else if(pollutant=="nitrate")
      {column_name=3}
      
      ##Initilzation
      total_n=0
      total_sum=0 
      
      ##getting file into sframe
      for (i in (id))
      {    id_val<-i
            if(id_val<=9)
                  {fileid=paste0("00",id_val)
            }else if (id_val<=99)
                  {fileid=paste0("0",id_val)
            }else 
            {fileid=paste0("",id_val)}
      
            finalid=paste0(fileid,".csv")
            
            path<-paste0(directory,finalid)
            
            sframe<-read.csv(path)
            sarray<-sframe[column_name]
            
            ##Logic and summation
            u<-is.na(sarray)
            b<-sarray[!u]
            n<-length(b)
            sum_id<-sum(b)
            total_n=total_n+n
            total_sum=total_sum+sum_id
      }
      ##calculation and return
      mean=total_sum/total_n
      mean
}


