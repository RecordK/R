 # 1 . 패키지 설치하기
install.packages("car")
yes
search("car")
searchpaths("car")

 # 2. 패키지 로딩하기(또는 구동하기)
library(car)

 # 3. 패키지 업데이트
update.packages("car")


 # 4. 패키지 삭제
remove.packages("car")

 # 5. 패키지 목록과 경로
search()
searchpaths()
.libPaths()

 # 6. 패키지 도움말
help(package ="stats")
help(package="circlize")
