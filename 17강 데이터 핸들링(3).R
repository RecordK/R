rm(list = ls())
library(ggplot2)
 ## 데이터 삭제하기
 ## (1) 행 삭제하기
diamonds2=diamonds

diamonds2[-c(10,20,30),]
diamonds2[(100:200),]
diamonds2[-(100:200),]
diamonds2[seq(from=1,to=nrow(diamonds),by=10),]

 ## (2) 열 삭제하기
diamonds3 = diamonds

diamonds3$table =NULL
View(diamonds3)
View(diamonds)

subset(diamonds3,select = -c(2,3))
subset(diamonds3,select = -c(cut,color))

 ## 데이터 정렬하기 : 오름차순, 내림차순
diamonds[order(diamonds$price),] # 오름차순
diamonds[order(diamonds$price,decreasing = TRUE),] # 내림차순


diamonds[order(diamonds$price, diamonds$x),]
diamonds[order(diamonds$price, diamonds$x,decreasing = TRUE),]
