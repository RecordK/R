
score=read.table(file="/Users/kimkirok/Desktop/score.txt", header = T,fileEncoding = "UTF-8", stringsAsFactors = F)
x=list(a=1:10, beta= exp(-3:3),logic=c(TRUE,FALSE,FALSE,TRUE))
x
lapply(x,mean)
lapply(x, quantile, probs=(1:3)/4)
sapply(x,mean)
sapply(x,quantile)

y=matrix(seq(1:25),byrow=T,ncol = 5)
sweep(y,1,STATS = seq(1:5),FUN = "+")
######### scroe에 대해서 열별 평균으로 부터의 편차
for(j in 2:dim(score)[2]) score[,j]=as.numeric(score[,j])
dim(score)[2]
score
colmean=apply(score[,-1],2,mean)
sweep(score[,-1],2,colmean, "-")
score[,2]-mean(score[,2])
###### outer 함수
outer(seq(1,3),seq(1,3),FUN = "+")
month.abb
outer(month.abb,2011:2016,FUN = "paste")

head(score)
apply(score[,-1],1,sum)
apply(score[,-1],2,mean)
total=apply(score[-1],1,sum)
score1=cbind(score,total)
head(score1)
average=apply(score1[,-1],2,mean)
score2=rbind(score1,c("평균",average))
tail(score2)
