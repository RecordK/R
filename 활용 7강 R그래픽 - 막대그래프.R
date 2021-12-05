freq=c(10,30,20,40)
barplot(freq,main="이름없음")
barplot(freq,main="이름없음",names.arg = c("A","B","C","D"))
category=c("A","B","C","D")
names(freq)=c("A","B","C","D")
BMI=read.table(url("http://jupiter.hallym.ac.kr/ftpdata/data/bmi.txt"),
               col.names=c("height","weight","year","gender","marriage"))
barplot(BMI$religion)#오류
barplot(table(BMI$religion))#ok?
barplot(table(BMI$religion),horiz=T)#ok?
barplot(table(BMI$religion),col = "orange")
barplot(rep(10,9),col=0:8,
        names.arg = as.character(seq(0,8)),yaxt="n")

freq=cbind(c(10,20,30),c(10,10,20))
par(mfrow=c(1,2))
barplot(freq,col = 1:3)
barplot(table(BMI$religion,BMI$gender))
table(BMI$religion,BMI$gender)

freq=cbind(c(10,20,30),c(10,10,20))
barplot(freq,col = 1:3,beside = T)
barplot(table(BMI$religion,BMI$gender),beside = T)

barplot(table(BMI$religion,BMI$gender),
        legend.text=c("불교","개신교","가톨릭","없음"), family = "AppleGothic",
        col = 1:4,
        density = 15,
        angle=c(45,90,135,180))
        