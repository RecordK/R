install.packages("psych")
## 3. 분포의 모양
## (1) 왜도
## (2) 첨도

## 기술통계량의 유용한 함수들
## (1) summary(데이터명), summary(데이터명$변수명)
summary(diamonds)
str(diamonds)
summary(diamonds$price)

## (2) by() : 집단별로 기술통계량을 구할 때
## by(양적 자료, 질적 자료, 함수명)
by(diamonds$price,diamonds$cut,mean)
by(diamonds$price,diamonds$cut,sd)
by(diamonds$price,diamonds$cut,summary)
by(diamonds$price,diamonds$cut,hist)


## (3) psych::describe(), psych::describeBy()
library(psych)

describe(diamonds$price)
str(diamonds)
describe(diamonds[,c(1,5:10)])

## describeBy(데이터명$변수명, 데이터명$변수명)
describeBy(diamonds$price,diamonds$cut)
