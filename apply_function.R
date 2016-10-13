x<-matrix(rnorm(200),20,10)
apply(x,2,mean)
apply(x,1,sum)

directory<-"D:\\R-tool\\Data set\\specdata\\"
id=20
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
            u=complete.cases(sframe)
            sframe<-sframe[u,]
}

apply(sframe[2:3],2,sum)#summing each column 2 value
apply(sframe[2:3],2,mean)
apply(sframe[2:3],1,sum)#summing each row 1 value
apply(sframe[2:3],1,mean)

apply(sframe[2:3],2,quantile,probs=c(0.25,0.75)) #quantile


a<-array(rnorm(2*2*10),c(2,2,10))
a
apply(a,c(1,2,3),mean) #averaging over 1 st and 2nd dimension and average over 3rd dimension
rowMeans(a,dims=1)
