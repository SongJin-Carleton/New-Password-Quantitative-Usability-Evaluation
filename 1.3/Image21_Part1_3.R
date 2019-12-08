#descriptive statistics for number of login
totalLogin_mean=mean(finalImage21$totalLogin)
totalSuccess_mean = mean(finalImage21$totalSuccess)
totalFail_mean = mean(finalImage21$totalFail)
totalLogin_sd = sd(finalImage21$totalLogin)
totalSuccess_sd = sd(finalImage21$totalSuccess)
totalFail_sd = sd(finalImage21$totalFail)
totalLogin_median = median(finalImage21$totalLogin)
totalSuccess_median = median(finalImage21$totalSuccess)
totalFail_median = median(finalImage21$totalFail)


#descriptive statistics for login time
successTime_mean = mean(finalImage21$succTime)
failTime_mean = mean(finalImage21$failTime)
successTime_sd = sd(finalImage21$succTime)
failTime_sd = sd(finalImage21$failTime)
successTime_median = median(finalImage21$succTime)
failTime_median = median(finalImage21$failTime)

#histogram for number of logins
hist(finalImage21$totalLogin,xlab = "The number of login",ylab = "the number of users",main="Total Login Number")
hist(finalImage21$totalSuccess,xlab = "The number of success login",ylab = "The number of users",main="Success Login Number")
hist(finalImage21$totalFail,xlab = "The number of fail login",ylab = "The number of users",main="Fail Login Number")

#histogram for login time
hist(finalImage21$succTime,xlab = "seconds",ylab = "users",main="Success Login Time")
hist(finalImage21$failTime,xlab = "seconds",ylab = "users",main="Fail Login Time")

#boxplot for login time
boxplot(finalImage21$succTime,finalImage21$failTime,names = c("Success Time","Fail Time"))



