# 하나의 값으로 된 벡터 생성
s1 = 10
s2 = "Hello"
s3 = FALSE
s4 = 1 - 3i
 

# 두 개 이상의 값으로 된 벡터 생성
# c(), :, seq(), sequence(), rep()

# 1, c()
v1 = c(3, 10, 12)
v2 = c("Kim", "Lee", "Park")
v3 = c(TRUE, FALSE, FALSE, FALSE)

v1 = c(1, 3, 5)
v2 = c(10, 30 , 50)
v3 = c(v1, v2)
v3

# 2. :
# start:end
v1 = 1:5
v1

v2 = 5:1
v2

v3 = -3.3:5
v3

v4 = 5:-3.3
v4

# 3. seq(from=, to=, by=)
v1 = seq(from=1, to=5, by=1)
v1

v2 = seq(from=1, to=5, by=0.5)
v2

v3 = seq(from=5, to=1, by=-0.5)
v3

# 4. sequence(숫자)
v1 = sequence(10)
v1

v2 = sequence(5.5)
v2

v3 = sequence(1)
v3

v4 = sequence(0)
v4

v5 = sequence(-1)

# 5. rep(벡터, times=, each=)
v1 = rep("a", times=5)
v1

v2 = rep("a", each=5)
v2

v3 = rep(c("a","b"), times=5)
v3

v4 = rep(c("a","b"), each=5 )
v4

v5 = rep(c("a","b"), times = 3, each=2)
v5

v6 = rep(c("a","b"), times=c(10, 5))
v6
