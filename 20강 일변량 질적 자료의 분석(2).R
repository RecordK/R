## (3) 막대그래프 작성하기
## barplot(빈도의 결과)
library(ggplot2)
barplot(table(diamonds$cut))
barplot(sort(table(diamonds$cut),decreasing = TRUE))

## 막대의 색깔 : col , main의 제목
barplot(sort(table(diamonds$cut),decreasing = TRUE),col = "red",
        main = "다이아몬드의 품질 현황",family="AppleGothic")

## y축의 제목 : ylab
barplot(sort(table(diamonds$cut),decreasing = TRUE),col = "red",
        main = "다이아몬드의 품질 현황",
        ylab = "빈도",
        family="AppleGothic")
## y축의 눈금 : ylim
barplot(sort(table(diamonds$cut),decreasing = TRUE),col = "red",
        main = "다이아몬드의 품질 현황",
        ylab = "빈도",
        ylim=c(0,25000),
        family="AppleGothic")

## 가로 막대 그래프  horiz
barplot(sort(table(diamonds$cut),decreasing = FALSE)
        ,col = "red",
        main = "다이아몬드의 품질 현황",
        xlab = "빈도",
        xlim=c(0,25000),
        horiz = TRUE,
        family="AppleGothic")

install.packages("plotly")
library(plotly)

## plotly::plot_ly()
plot_ly(data = diamonds,
        x=~levels(cut),
        y=~table(cut),
        type = "bar")

##ggplot2::ggplot()
ggplot(data = diamonds,
       mapping=aes(x=cut))+geom_bar()

ggplot(data = diamonds,
       mapping=aes(x=cut))


## (4) 원그래프 작성하기
## pie(빈도의 결과)
pie(table(diamonds$cut))
pie(table(diamonds$cut),radius=1)
pie(table(diamonds$cut),radius=1,init.angle = -30)

plot_ly(data = diamonds,
        values=~table(cut),
        levels=~levels(cut),
        type="pie")
ggplot(data=diamonds,
       aes(x="",fill=cut))+geom_bar(width=1)+coord_polar("y")
View(diamonds)
