install.packages("ggplot2")
library(ggplot2)

  # 1. 데이터의 내용 보기
  # (1) 전체 데이터 보기
diamonds
View(diamonds)


  # (2) 에이터의 일부 보기
head(diamonds)
tail(diamonds)
head(diamonds,n=10)
tail(diamonds,10)

 # 2. 데이터에서 일부 데이터 추출하기
 # (1). 열 추출하기
diamonds[ , 2]
diamonds[ , 2, drop=FALSE]
diamonds[ , c(2,3,7)]
diamonds[ , 7:10]
diamonds[ , seq(from=2, to=10, by=2) ]

diamonds[,"cut"]
diamonds[,"cut"
         ,drop=FALSE]
diamonds[,c("cut","price")]
diamonds[,grep("^c",colnames(diamonds))]
diamonds[,grep("c",colnames(diamonds))]
diamonds[,grep("c$",colnames(diamonds))]


 ## T1 데이터 따오기

library(readxl)
T1 = read_excel(path = "/Users/kimkirok/Desktop/T1 spss.xlsx",
                   sheet = "Sheet1")
t1=T1[T1$"3">=100000,]
T2=subset(t1,select =-c(1,4,5,6))
T2
View(T2)
T3=T2[order(T2$"3",decreasing=TRUE),]
save(T3,file = "/Users/kimkirok/Desktop/T1 spss.csv")
##########################################################
  # (2). 행 추출하기
diamonds[diamonds$cut=="Fair" , ]
diamonds[diamonds$price>=18000,]
diamonds[(diamonds$cut=="Fair")&
  (diamonds$price>=18000),]
diamonds[(diamonds$cut=="Fair")|
           diamonds$price>=18000,]
