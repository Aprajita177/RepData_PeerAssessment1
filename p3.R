mean(sum_step$x)
median(sum_step$x)
avg_step[avg_step$steps==max(avg_step$steps),1]
sum(is.na(data$step))
data$steps[is.na(data$steps)]<-mean(data$steps,na.rm=TRUE)


head(data)
mean(sum_step$x)
median(sum_step$x)

