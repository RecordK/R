install.packages("corrplot")
install.packages("scatterplot3d")
install.packages("rgl")
install.packages("Rcmdr")
library(ggplot2)
library(corrplot)
library(scatterplot3d)
library(rgl)
library(Rcmdr)

## 1. 산점도 (Scatter Plot)
plot(diamonds$carat, diamonds$price)


## 2. 산점 행렬도 (Scatter Plot Matrix)
plot(diamonds[,c("x","y","z")])
 
## 3. 유용한 함수들
## (1) corrplot::corrplot(), corrplot.mixed()
cor.result = cor(diamonds[,c("x","y","z")])
cor.result

corrplot(cor.result,method="circle")
corrplot(cor.result,method="square")
corrplot(cor.result,method="number")
corrplot(cor.result,method="shade")
corrplot(cor.result,method="color")
corrplot(cor.result,method="pie")

corrplot(cor.result,type="full")
corrplot(cor.result,type="upper")
corrplot(cor.result,type="lower")

corrplot.mixed(cor.result,lower = "number",upper="circle")

## (2) scatterplot3d::scatterplot3d()
scatterplot3d(diamonds$x,diamonds$y,diamonds$z)

## (3) rgl::plot3d()
plot3d(diamonds$x,diamonds$y,diamonds$z)

## (4) Rcmdr::scatter3d()
scatter3d(diamonds$x,diamonds$y,diamonds$z)
scatter3d(diamonds$x,diamonds$y,diamonds$z)
