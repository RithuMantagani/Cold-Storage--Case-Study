###mean for all year - 2nd ques

setwd("F:/GREAT LEARNING/STATISTICAL METHODS FOR DECISION MAKING/Project -SMDM - Cold Storage/Project Cold Storage - GL Solution")
getwd()
rithu=read.csv("Cold_Storage_Temp_Data.csv")
attach(rithu)
rithu
summary(rithu)

###sd for full year - 3rd ques

sd(Temperature)

###mean for all season - 1st ques

by(rithu,INDICES = Season,FUN = summary)
###Below 2 degree c - 4th ques

p1= pnorm(2,mean = 2.963,sd=0.508589)
p1
###Above 4 degree c - 5th ques

p2=1-pnorm(4,mean = 2.963,sd=0.508589)
p2
pnorm(2,mean = 2.963,sd=0.508589,lower.tail = TRUE)

#### Question 6
q=p1
q
if(q>0.025 && q<=0.05){
  (penalty = '10%')
}else if    (q>0.05){
  (penalty = '25%')
} else  {
  penalty='0%'
}
print(penalty)

boxplot(rithu$Temperature~rithu$Season,col=c("green","blue","red"))
hist(rithu$Temperature,xlab = "Temperature",col="red")

