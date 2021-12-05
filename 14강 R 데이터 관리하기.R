 # 1. R 데이터를 R데이터로 저장하기
install.packages("readxl")
library(readxl)

ebook=read_excel(path = "/Users/kimkirok/Desktop/ebook.xlsx",
                 sheet="data",
                 col_names = TRUE)
ebook
save(ebook,file="/Users/kimkirok/Desktop/ebook.RData")


rm(ebook)
ebook

 # 2. R 데이터 불러오기
load(file = "/Users/kimkirok/Desktop/ebook.RData")
ebook

 # 3. R 데이터를 외부 데이터로 저장하기
 # (1) 텍스트 데이터
write.table(iris,
            file = "/Users/kimkirok/Desktop/iris.txt",
            sep = ",",
            row.names = FALSE)

 # (2) csv 데이터
write.csv(iris,
          file ="/Users/kimkirok/Desktop/iris.csv",
          row.names = FALSE)
#######################
write.csv(T3,
          file = "/Users/kimkirok/Desktop/T3.csv",
          row.names = FALSE)
#######################

 # 4. R 데이터의 목록 보기
ls() # list segment

 # 5. R 데이터 삭제하기
x=3
y=4
z=5
ls()

rm(x)
rm(y,z)
ls()
rm(list = ls())
