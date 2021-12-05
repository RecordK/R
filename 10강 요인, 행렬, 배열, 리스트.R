 # 1. 요인
gender = c("m", "f", "f", "m","f","f")
gender

gender_factor = factor(gender)
gender_factor

levels(gender_factor)

gender_factor2 = factor(gender, 
                        levels = c("m","f"),
                        labels = c("남자","여자"))
gender_factor2

gender_factor3 = factor(gender, ordered=TRUE)
gender_factor3 

factor(gender)
levels(factor(gender))

 
 # 2. 행렬(Matrix)
 # rbind(), cbind(), matrix()

v1 = 1:3
v2 = 4:6

m1 = rbind(v1,v2)
m1

m2 = cbind(v1, v2)
m2

 # matrix(벡터, nrow = , ncol=, byrow=TRUE)
m3 = matrix(1:4, nrow = 2, ncol=2)
m3

m4 = matrix(1:4, nrow = 2, ncol=2, byrow = TRUE)
m4