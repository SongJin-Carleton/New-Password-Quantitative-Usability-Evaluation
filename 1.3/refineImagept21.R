library(data.table)
as1=data.table(ipt145) # this part will be changed by running for different individual csv file.
as2<-unique(as1$SorF)

name<-"ipt145"  # the name will be changed based on different individual csv file's name.
total<-1
failTime<-0
succTime<-0


scheme_value<-as1[1,Passwordscheme]
scheme<-levels(scheme_value)
totalLogin<-as1[1,Totallogin]
totalSuccess<-as1[1,Totalsuccess]
totalFail<-as1[1,Totalfail]
uid<-levels(as1[1,uid])
No<-NULL



while (as1[total,uid]==as1[total+1,uid]) {
  if(as1[total,SorF]=="failure"&& as1[total,time]==1){
    failTime = failTime + 1
  }
  if(as1[total,SorF]=="success"&& as1[total,time]==1){
    succTime = succTime + 1
  }
  
  total=total+1
  
}

# based on different file's name, the result will be stored in different vatiable.
ipt145_tt<-cbind(uid,scheme,totalLogin,totalSuccess,totalFail,total,succTime,failTime)
row.names(ipt145_tt)<-name   # chaning the table name is same with file name.
