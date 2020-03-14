
setwd("C:/Users/MAHE/Documents/RepData_PeerAssessment1")
data<-read.csv("activity.csv")
data$date<-as.Date(data$date)
sum_step<-aggregate(data$step,by=list(data$date),FUN=sum,na.rm=TRUE) 

library(ggplot2)
data$days=tolower(weekdays(data$date))

data$day_type<-ifelse(data$days=="saturday"|data$days=="sunday","weekend","weekday")


avg_step<-aggregate(data$steps,by=list(data$interval,data$day_type),FUN=mean,na.rm=TRUE)

colnames(avg_step)<-c("interval","day_type","steps")

ggplot(aes(x=interval,y=steps),data=avg_step)+geom_line()+facet_wrap(~avg_step$day_type)



