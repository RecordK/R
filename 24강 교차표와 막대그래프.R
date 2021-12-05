install.packages("gmodels")
library(gmodels)
library(ggplot2)
## 1. 교차표
## table(데이터명$변수명, 데이터명$변수명)
table(diamonds$cut, diamonds$color)

## prop.table(교차표의 결과)*100
## (1) 전체 백분율
prop.table(table(diamonds$cut, diamonds$color))*100

## (2) 행 백분율
prop.table(table(diamonds$cut, diamonds$color),margin = 1)*100

## (3) 열 백분율
prop.table(table(diamonds$cut, diamonds$color),margin = 2)*100

## gmodels::CrossTable()
CrossTable(diamonds$cut, diamonds$color,
           prop.r = TRUE,
           prop.c = TRUE,
           prop.t = TRUE,
           digits = 1)

## descr::CrossTable()

## 2. 막대그래프
## (1) 누적 막대형 그래프
barplot(table(diamonds$cut, diamonds$color))
barplot(table(diamonds$cut, diamonds$color),
        legend.text = levels(diamonds$cut), ## 범례
        args.legend = list(x="topright"))  ## 범례 위치

## (2) 묶은 세로형 막대 그래프
barplot(table(diamonds$cut, diamonds$color), beside=TRUE)
barplot(table(diamonds$color, diamonds$cut), beside=TRUE)
