x1=seq(1,10)
myfcn=function(){
  mx1=mean(x1)
  print(mx)
}
myfcn2=function(){
  x1=seq(1,100)
  mx1=mean(x1)
  print(mx1)
}
myfcn2()
x1

myfcn=function(x1=0){
  mx1=mean(x1)
  print(mx1)
}
x1=seq(1:100)
myfcn(x1)
myfcn()
score
myscore=function(x){
  total=x[,2]*.25+x[,3]*.25+x[,4]*.25+x[,5]*0.125+x[,6]*0.125
  list(total=total)
}
cbind(score,myscore(score)$total)

myscore2=function(x){
  wt=c(.25,.25,.25,.125,.125)
  total=sum(x*wt)
  return(total)
}
apply(score[,-1],1,myscore2)
score$총점=apply(score[,-1],1,myscore2)
head(score)
zfcn=function(x){
  zscore=x #원래자료의 이름등을 그대로
  ncol=dim(x)[2] #x의 열의 수
  for(i in 2:ncol){
    mx=mean(x[,i])
    stdev=sd(x[,i])
    zscore[,i]=(x[,i]-mx)/stdev
  }#end for
  list(zscroe=zscore)
}
zfcn(score)

zfcn2=function(x){
  zscore=(x-mean(x))/sd(x)
  return(zscore)
}
apply(score[,-1],2,zfcn2)
zscore=data.frame(score[,1],apply(score[,-1],2,zfcn2))
head(zscore)                  
names(zscore)
names(zscore)[1]="이름"
head(zscore)
