# 1. 벡터의 속성
# 데이터의 유형, 원소의 개수 = 데이터의 개수, 원소의 이름
v1 = c(27, 35, 47, 41)
mode(v1)
is.numeric(v1)
is.character(v1)
is.logical(v1)

length(v1)

names(v1)
names(v1) = c("Kim", "Lee", "Park", "Choi")
v1
names(v1) = NULL


# 2. 벡터의 인덱싱 또는 슬라이스
# 벡터명[index]
weight = c(57, 81, 65, 49, 72)
weight[1]
weight[2]
weight[c(1,4,5)]
weight[2:4]
weight[-c(1,4,5)]

 
# 3.벡터의 연산
# (1) 벡터의 데이터의 개수가 동일한 경우
v1 = 1:3
v2 = 4:6
v1 + v2
v1 - v2
v1 * v2
v1 / v2
v1 ** v2

# (2) 벡터의 데이터의 개수가 동일하지 않은 경우
v1 = 1:3
v2 = 1:6
v1 + v2

v1 = 1:3
v2 = 1:10
v1 + v2
