library(data.table)

#get data
dt = data.table(Imagept21)
dt[1620,V2]
nrow(dt)
#initial helpers and counters
lastf<-data.frame()
Totalfail<-0
Totalsuccess<-0

i<-2
o<-2
q<-1


#see the number of unique userid
adt<-unique(dt$V2)
length(adt)


#while there are more unprocessed id
while (q <= length(adt)){
  #set current uid
  
  uid<-dt[i,V2]
  Totalfail<-0
  Totalsuccess<-0
  Totallogin <-0
  
  #while it is still the current uid
      
  while (dt[i,V2] == dt[i-1,V2]){
    #if the action is login and the result is fail add to fail count and total count 
    if(dt[i,V7]=="failure"&& dt[i,V6]=="login")
    {
      
      Totalfail = Totalfail + 1
      Totallogin = Totallogin +1
    }
    #if the action is login  and the result success add to fail count and total success count 
    if(dt[i,V7]=="success"&& dt[i,V6]=="login")
    {
      Totalsuccess = Totalsuccess + 1
      Totallogin = Totallogin +1
    }
    
    i=i+1
    if(i>nrow(dt)){break}
  }

  #while in the same password scheme 
  while (dt[o,V2] == dt[o-1,V2]){
  #every time there is a login
  if(dt[o,V6]=="login"){
    
  #get the password scheme
  Passwordscheme <- dt[o,V4]
  
  #get if fail or success
  SorF<-dt[o,V7]
  
  j<-o
  
  #get time by subtract the time on the nearest start statement
  while(dt[j,V7] != "start"){ j=j-1;}
  time<- as.numeric(as.POSIXct(dt[o,V1])-as.POSIXct(dt[j,V1]))
  
  
  #set and merge the data
  newf<-data.frame(uid,Passwordscheme,Totallogin,Totalsuccess,Totalfail,SorF,time)
  thenewf<- rbind(lastf, newf)
  
  lastf<-thenewf
  }
   
  o=o+1
  if(o>nrow(dt)){break} 
  }
 i=i+1 
 q=q+1
 o=o+1
}




