library(ggplot2)

## 일변량 질적 자료 : cut, color, clarity
## (1) 빈도 구하기
## table(데이터명$변수명)
table(diamonds$cut)
table(diamonds$color)
table(diamonds$clarity)

## sort(빈도의 결과, decreasing=TRUE)
sort(table(diamonds$cut),decreasing = TRUE)
sort(table(diamonds$color),decreasing = TRUE)
sort(table(diamonds$clarity),decreasing = TRUE)

##(2) 백분율 구하기
##prop.table(빈도의 결과)*100
prop.table(table(diamonds$cut))*100
prop.table(table(diamonds$color))*100
prop.table(table(diamonds$clarity))*100

## round(수치, digits=1)
round(prop.table(table(diamonds$cut))*100,digits = 1)
round(prop.table(table(diamonds$color))*100, digits = 1)
round(prop.table(table(diamonds$clarity))*100,digits = 1)

## sort(백분율의 결과, decreasing=TRUE)
sort(round(prop.table(table(diamonds$cut))*100,digits = 1),decreasing = TRUE)
sort(round(prop.table(table(diamonds$color))*100, digits = 1),decreasing=TRUE)
sort(round(prop.table(table(diamonds$clarity))*100,digits = 1),decreasing = TRUE)

## prettyR::freq()
## freq(데이터명$변수명)
install.packages("prettyR")
library(prettyR)
freq(diamonds$cut)
freq(diamonds$cut, display.na = FALSE,decr.order = FALSE)
