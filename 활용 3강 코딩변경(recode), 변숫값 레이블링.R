BMI=read.table(url("http://jupiter.hallym.ac.kr/ftpdata/data/bmi.txt"),
               col.names = c("height","weight","year","religion","gender","mariage"))
BMI$age=2000-BMI$year
BMI$bmi=BMI$weight/(BMI$height/100)^2
head(BMI)
for(i in 1:dim(BMI)[1]){
 if(BMI$bmi[i]<18.5)BMI$cdmi[i]=1
 if(BMI$bmi[i]>=18.5&&BMI$bmi[i]<23)BMI$cdmi[i]=2
 if(BMI$bmi[i]>=23&&BMI$bmi[i]<25)BMI$cdmi[i]=3
 if(BMI$bmi[i]>=25&&BMI$bmi[i]<30)BMI$cdmi[i]=4
 if(BMI$bmi[i]>30)BMI$cdmi[i]=5
}
table(BMI$cdmi)
BMI$cdmi2 = BMI$bmi
BMI$cdmi2[BMI$bmi<18.5]=1
BMI$cdmi2[BMI$bmi>=18.5&BMI$bmi<23]=2
BMI$cdmi2[BMI$bmi>=23&BMI$bmi<25]=3
BMI$cdmi2[BMI$bmi>=25&BMI$bmi<30]=4
BMI$cdmi2[BMI$bmi>=30]=5
table(BMI$cdmi2)
BMI
install.packages("car")
library(car)
BMI$cdmi3=recode(BMI$bmi,"lo:18.5=1;18.5:23=2;23:25=3;25:30=4;30:hi=5")
table(BMI$cdmi3)
BMI$cdmi-BMI$cdmi2
BMI$cdmi2-BMI$cdmi3
table(BMI$religion)
BMI$religion
BMI$religion=factor(BMI$religion,
                    levels=c("Bu","C1","C2","No"),
                    labels=c("불교","개신교","천주교","없음"))
table(BMI$religion)

BMI$cdmi=ordered(BMI$cdmi,
                 levels=seq(1,5),
                 labels=c("저체중","정상","과체중","초기비만","비만"))
table(BMI$cdmi)                 
mean(BMI$cdmi)
mean(as.numeric(BMI$cdmi))

xx=c(10,20,30,40)
xx
names(xx)=c("국어","영어","수학","과학")
xx
xx[2:3]
names(xx)
table(BMI$gender)
names(table(BMI$gender))
table(xx)
