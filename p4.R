sum_steps<-aggregate(data$steps,by=list(data$date),FUN=sum,na.rm=TRUE) 

hist(sum_step$x, 
     breaks=seq(from=0, to=25000, by=2500),
     col="yellow", 
     xlab="Total number of steps", 
     ylim=c(0, 20), 
     main="Histogram of the total number of steps taken each day\n(NA removed)")

