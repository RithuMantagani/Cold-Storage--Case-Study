setwd("F:/GREAT LEARNING/STATISTICAL METHODS FOR DECISION MAKING/Project -SMDM - Cold Storage/Project Cold Storage - GL Solution")
getwd()
mydata=read.csv("Cold_Storage_Mar2018.csv")
str(mydata)
summary(mydata)
sd=sd(mydata$Temperature)
sd
hist(mydata$Temperature)
boxplot(mydata$Temperature,horizontal = T)
scatter.smooth(mydata$Temperature)

### T Test

t.test(mydata$Temperature,alternative = "greater",paired =FALSE)
sample_mean=mean(mydata$Temperature)
sample_mean
sqrt=sqrt(35)

### Z Test
xbar=3.9
Mu=sample_mean
n=35
sd
zstat=(xbar-Mu)/(sd/(n^0.5))
zstat

### P Valve
pvalve=pt(zstat,34)
pvalve

hist(mydata$Temperature)
boxplot(mydata$Temperature)
scatter.smooth(mydata$Temperature)

