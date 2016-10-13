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


lapply(sframe,mean) #return alist


x<-1:4
lapply(x,runif)
sapply(x,runif,min=0,max=10)
x<-list(a=matrix(1:4,2,2),b=matrix(1:6,3,2))
lapply(x,function(el) el[,2])


a=sapply(u,sum)
sum(a)


sapply(sframe,mean) #return a matrix(vector)


