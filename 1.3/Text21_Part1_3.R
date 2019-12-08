#descriptive statistics for number of login
totalLogin_mean=mean(finalText21$totalLogin)
totalSuccess_mean = mean(finalText21$totalSuccess)
totalFail_mean = mean(finalText21$totalFail)
totalLogin_sd = sd(finalText21$totalLogin)
totalSuccess_sd = sd(finalText21$totalSuccess)
totalFail_sd = sd(finalText21$totalFail)
totalLogin_median = median(finalText21$totalLogin)
totalSuccess_median = median(finalText21$totalSuccess)
totalFail_median = median(finalText21$totalFail)


#descriptive statistics for login time
successTime_mean = mean(finalText21$succTime)
failTime_mean = mean(finalText21$failTime)
successTime_sd = sd(finalText21$succTime)
failTime_sd = sd(finalText21$failTime)
successTime_median = median(finalText21$succTime)
failTime_median = median(finalText21$failTime)



#histogram for number of logins
hist(finalText21$totalLogin,xlab = "The number of login",ylab = "the number of users",main="Total Login Number")
hist(finalText21$totalSuccess,xlab = "The number of success login",ylab = "The number of users",main="Success Login Number")
hist(finalText21$totalFail,xlab = "The number of fail login",ylab = "The number of users",main="Fail Login Number")

#histogram for login time
hist(finalText21$succTime,xlab = "seconds",ylab = "users",main="Success Login Time")
hist(finalText21$failTime,xlab = "seconds",ylab = "users",main="Fail Login Time")

#boxplot for login time
boxplot(finalText21$succTime,finalText21$failTime,names = c("Success Time","Fail Time"))