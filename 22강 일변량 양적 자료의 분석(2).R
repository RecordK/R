rm(list = ls())
library(ggplot2)

## 기술통계량 = 요약통계량
## 1. 중심 = 대표값
## (1) 평균
## mean(데이터명$변수명)
mean(diamonds$price)
age=c(10,20,27,NA)
mean(age)
mean(age, na.rm=TRUE)

## (2) 5% 절사평균
## mean(데이터명$변수명, trim=0,05)
mean(diamonds$price, trim=0.05)

## (3) 중위수 = 중앙값
## median(데이터명$변수명)
median(diamonds$price)

## (4) 최빈수 = 최빈값
## which.max(빈도)
index = which.max(table(diamonds$price))
table(diamonds$price)[index]########### 가장 많은 항목과 갯수
table(which.max(table(diamonds$price)))#########가장 많은 항목의 값과 갯수
age= c(20,20,25,17,20)
table(age)
which.max(table(age))
table(age)[2]
   
## prettyR::Mode()
library(prettyR)
## Mode(데이터명$변수명)
Mode(diamonds$price)

## 2. 퍼짐 = 산포도
##(1) 범위 : 최대값 - 최솟값
## diff(range(데이터명$변수명))
diff(range(diamonds$price))

range(diamonds$price)
diff(c(326,18823,326))

## (2) 사분위 범위 = 사분위수범위
## IQR(데이터명$변수명)
IQR(diamonds$price)

## (3) 분산
## var(데이터명$변수명)
var(diamonds$price)

## (4) 표준편차
##sd(데이터명$변수명)
sd(diamonds$price)

## (5) 중위수 절대 편차
## mad(데이터명$변수명)
mad(diamonds$price)

## 3. 분포의 모양
