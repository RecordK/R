install.packages("circlize")
library(circlize)
library(readxl)
T1=read.csv(file ="/Users/kimkirok/Desktop/T3.csv",
              header =TRUE)

TM=matrix(T2,nrow = 1,
          dimnames = list(T1$"2")

T2=T1$X3          
          
View(TM)

TM

Fuck = c("Grass green","Nile bile","Navy Blue", "Naples yellow")
col.pal=sample(Fuck,70,replace = TRUE)

chordDiagram(TM,grid.col = col.pal)
###########################################################
T2=T1$X2
T2
T21=T2[-c(1)]
T21
T3=T1$X3
T3
T31=T3[-c(1)]
T31
T4=cbind(T3,T2)
T4
T1
TM1=matrix(T31,ncol = 1,
          dimnames = list(T21,"???ܸ???"))
TM
TM1=TM[-c(1)]
TM1
###########################################################
random_value = c(500:100)
random_sample=sample(random_value,15)
col.pal = c(Cancer="red", Cardiac insufficiency="green", Osteoporosis="blue", Diabetes mellitus="Nile bile",Liver disease="maroon", Hypertension="Naples yellow", Neuropathies="black", Renal insufficiency="grey")

Sample_Matrix = matrix(random_sample, nrow = 5,
                       dimnames = list(c("Cancer","Cardiac insufficiency","Osteoporosis","Diabetes mellitus","Liver disease"),
                                       c("Hypertension","Neuropathies", "Renal insufficiency")))

chordDiagram(Sample_Matrix,grid.col = col.pal)
Sample_Matrix

#################################################################
RTD=read.csv(file ="/Users/kimkirok/Downloads/OneDrive-2020-09-07/NHID_GY20_T1_2013.csv",
             header=TRUE)

write.table(RTD,
          file = "/Users/kimkirok/Desktop/RTD.txt",
          sep="|")
RTD
RTD2=read.table(file="/Users/kimkirok/Desktop/RTD.txt",
                header=FALSE,
                sep=" ")
RTD2
View(RTD2)
rm(list = ls())
install.packages(circlize)
