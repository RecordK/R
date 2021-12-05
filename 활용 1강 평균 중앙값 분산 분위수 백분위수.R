x=jitter(seq(1,10))
x
mean(x)
median(x)
x1=c(200,170,250,230,220,300,350,300,330,260,270,250)
x2=c(x1,5000)
####### 실제자료##########

BMI = read.table(url("http://jupiter.hallym.ac.kr/ftpdata/data/bmi.txt"),
                 col.names = c("height","weight","year","religion", "gender","marriage"))
head(BMI)
names(sort(table(BMI$religion),decreasing = T))[1]


x=30-rchisq(100,5)

install.packages("raster")

x=seq(1,100)
quantile(x)
quantile(x,probs = c(0.05,0.95))
range(x)
max(x)-min(x)
IQR(x)
########cv################
x1=c(100000,107000,113000,95000,103000,98000,95000)
x2=c(1000,900,1100,1200,1000,800,700)
sd(x1)/mean(x1)*100
sd(x2)/mean(x2)*100
library(raster)
cv(seq(1,100))
 ###########가중 평균#######
x1=c(90,80,70,90,95);x2=c(85,85,85,80,90)
w=c(25,25,25,12.5,12.5)/100
weighted.mean(x1,w)
weighted.mean(x2,w)
sum(x1*w)/sum(w)
sum(w)
sum(x1*w)
