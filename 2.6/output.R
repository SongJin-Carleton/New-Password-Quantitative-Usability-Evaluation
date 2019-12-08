#statics data: mean
totalLogin_mean=mean(result_data$totalLogin)
totalSuccess_mean = mean(result_data$resultSuccess)
totalFail_mean = mean(result_data$resultFail)

#statics data: standard deviation
totalLogin_sd = sd(result_data$totalLogin)
totalSuccess_sd = sd(result_data$resultSuccess)
totalFail_sd = sd(result_data$resultFail)

#statics data: median
totalLogin_median = median(result_data$totalLogin)
totalSuccess_median = median(result_data$resultSuccess)
totalFail_median = median(result_data$resultFail)


#statics data: login time mean
successTime_mean = mean(result_data$timeSuccess)
failTime_mean = mean(result_data$timeFail)

#statics data: login time standard deviation
successTime_sd = sd(result_data$timeSuccess)
failTime_sd = sd(result_data$timeFail)

#statics data: login time median
successTime_median = median(result_data$timeSuccess)
failTime_median = median(result_data$timeFail)

#histogram for number of logins(total, successful, unsuccessful)
hist(result_data$totalLogin,xlab = "The number of login",ylab = "the number of users",main="Total Login Number")
hist(result_data$resultSuccess,xlab = "The number of success login",ylab = "The number of users",main="Success Login Number")
hist(result_data$resultFail,xlab = "The number of fail login",ylab = "The number of users",main="Fail Login Number")


#histogram for login time(successful, unsuccessful)
hist(result_data$timeSuccess,xlab = "seconds",ylab = "users",main="Success Login Time")
hist(result_data$timeFail,xlab = "seconds",ylab = "users",main="Fail Login Time")


#boxplot for login time(successful,unsuccessful)
boxplot(result_data$timeSuccess,result_data$timeFail,names = c("Success Time","Fail Time"))


 







