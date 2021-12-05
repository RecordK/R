 # 데이터 프레임
 # 1. 데이터 프레임의 생성
id = 1:5
age = c(29,32,47,35,23)
gender = c("f","m", "m","f", "f")
height = c(163, 177, 172, 157, 169)

DF1 = data.frame(id, age, gender, height)
DF1

DF2 = data.frame(id, age, gender, height, 
                 stringsAsFactors=FALSE)
DF2

str(DF1)
str(DF2)

rownames(DF1)
 # 2. 데이터 프레임의 속성
 # 행의 개수, 열의 개수, 행의 개수, 열의 이름, 차원, 차원의 이름
 # 데이터의 구조

 # 행의 개수 : nrow(), NROW() 
nrow(DF1)
NROW(DF1)

 # 열의 개수 : ncol(), NCOL()
ncol(DF1)
NCOL(DF1)
 # 행의 이름 : rownames()
rownames(DF1)
rownames(DF1) = paste("R",1:5,sep="")
rownames(DF1)
rownames(DF1) = paste("R",1:5)
rownames(DF1)
rownames(DF1) = paste("R",1:5,sep="")
rownames(DF1)

 # 열의 이름 : colnames()
colnames(DF1)

 # 차원 : dim()
dim(DF1)

 # 차원의 이름 : dimnames()
dimnames(DF1)

 # 데이터의 구조 : str()
str(DF1)
