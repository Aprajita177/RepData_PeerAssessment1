avg_step<-aggregate(data$steps,by=list(data$interval),FUN=mean,na.rm=TRUE)

colnames(avg_step)<-c("interval","steps")

library(ggplot2)
ggplot(aes(x=interval,y=steps),data=avg_step)+geom_line()

