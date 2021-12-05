myfcn=function(){
  x=seq(1,10)
  print(sum(x))
}
myfcn()

myfcn

myfcn2=function(nn){
  x=seq(1,nn)
  print(sum(x))
}
myfcn2(5)

myfcn2(100)

myfcn3=function(start,end){
  x=seq(start,end)
  print(sum(x))
}
myfcn3(11,100)

BMI=read.table(url("http://jupiter.hallym.ac.kr/ftpdata/data/bmi.txt"),
               col.names = c("height","weight","year","religion","gender","marriage"))

meansd=function(x){
  mm=mean(x)
  stdev=sd(x)
  result=c(mm,stdev)
  names(result)=c("평균","표준편차")
  print(result)
}
meansd(BMI$height)
CV=function(x){
  cv=sd(x)/mean(x)*100
  return(cv)
}
CV(seq(1,100))

x=1:100
xna=c(x,NA)
my.mean1=function(x,...){
  mx=mean(x,...)
  return(mx)
}
my.mean1(x)
my.mean1(xna)
my.mean1(xna,na.rm=T)

my.mean2=function(...,narm=T){
  mx=mean(...,na.rm=narm)
  return(mx)
}
my.mean2(x)
my.mean2(xna)

args(meansd)
args(log)
############# exp(1)=e ######
attributes(meansd)
is.function(meansd)
xx=rep(0,10)
is.function(xx)

setwd("/Users/kimkirok/Desktop")
source("파일이름.R")