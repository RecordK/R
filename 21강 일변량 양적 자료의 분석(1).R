library(ggplot2)

# 1. 구간의 빈도와 백분률    
diamonds$gprice = cut(diamonds$price,
                    breaks = c(0,5000,10000,15000,20000))
diamonds$price
View(diamonds)

table(diamonds$gprice)

prop.table(table(diamonds$gprice))*100
round(prop.table(table(diamonds$gprice))*100,digits=2)

diamonds$gprice2= cut(diamonds$price,
                      breaks = seq(from=0,to=20000,by=5000))
table(diamonds$gprice2)


## 2. 히스토그램 작성하기
## (1) hist(데이터명$변수명)
hist(diamonds$price)

## (2) hist(데이터명$변ㅅ구명, breaks=구간의 정보)
hist(diamonds$price,
     breaks = seq(from=0,to=20000,by=5000))

## (3) hist(데이터명$변수명, breaks=구간의 개수)
hist(diamonds$price,
     breaks = 10)

## 3. 상자그림 작성하기
## (1) boxplot(데이터명$변수명)
boxplot(diamonds$price)
boxplot(diamonds$price,range = 3)

## (2) boxpot(데이터명$변수명 ~ 데이터명$변수명)
## 집단별로 상자그림을 작성해 줌
boxplot(diamonds$price ~ diamonds$cut)
boxplot(price~cut,data = diamonds)
