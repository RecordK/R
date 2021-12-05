myfcn1=function(){
  x=seq(1,10)
  print(sum(x))
}
myfcn1()
myfcn2=function(){
  x=seq(1:10)
  cat("sum of x:",sum(x),"\n")
}
myfcn2()

myfcn3=function(){
  x=seq(1,10)
  return(sum(x))
}
myfcn3()

########print는 단순히 인쇄 후 다시 연산
myfcn1()+1000

#########cat은 그냥 문자랑 같이 인쇄
myfcn2()+1000

#########3 return은 함수 그대로
myfcn3()+1000

list(name1=obj1,name2=obj2,...)

myfcn4=function(xx){
  sum1=sum(xx)
  sum2=sum(xx^2)
  list(sum1=sum1,sum2=sum2)
}
myfcn4(x)$sum1
myfcn4(x)$sum2
mx=myfcn4(seq(1,10))$sum1/10
SST=myfcn4(seq(1,10))$sum2-10*mx^2
SST
result=myfcn4(seq(1,10))
mx=result$sum1/10
SST=result$sum2-10*mx^2
SST

myfcn4(seq(1,10))[1]
myfcn4(seq(1,10))[2]

"%abinb%"=function(a,b){return(a*2+b)}
1%abinb%1

nfactorial1=function(nn){
 result=1
 for(i in 1:nn){
   result=result*i
 }
 return(result)
}
nfactorial1(5)

nfactorial2=function(nn){
  if(nn==1)result=1
  else result=nn*nfactorial2(nn-1)
  return(result)
}
nfactorial2(10)
nfactorial2(3)
nfactorial2(4)
nfactorial2(5)
