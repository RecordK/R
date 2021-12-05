 # 1. 텍스트 데이터 읽어오기
 # (1) 구분자 : 공백
searchpaths()
search()
survey_blank = read.table(file="/Users/kimkirok/Desktop/survey_blank.txt",
                          header = TRUE,
                          sep = " ",
                          fileEncoding="euc-kr")
survey_blank



 # (2) 구분자 : 콤마
survey_comma = read.table(file="/Users/kimkirok/Desktop/survey_comma.txt",
                          header = TRUE,
                          sep = ",",
                          fileEncoding="euc-kr")
survey_comma


 # (3) 구분자 : 탭
survey_tab = read.table(file = "/Users/kimkirok/Desktop/survey_tab.txt",
                        header = TRUE,
                        sep="\t",
                        fileEncoding="euc-kr")
survey_tab

  # 2. csv 데이터
survey2015 = read.csv(file="/Users/kimkirok/Desktop/인구주택총조사2015.csv",
                      header = TRUE,
                      fileEncoding="euc-kr")
survey2015

# Mac OS 한글인식 시키기 ㅜㅜ
library(readr)

read.any = function(text, sep ="",...)
{encoding = as.character(guess_encoding(text)[1,1])
setting=as.character(tools::file_ext(text))
                     if(sep!=""|!(setting%in% c("csv","txt")))
                       setting="custom"
                     separate=list(csv=",",txt="\n", custom=sep)
                     result=read.table(text,sep=separate[[setting]],fileEncoding =encoding,...)
                                       return(result)}
install.packages("readr")
Sys.setlocale(category = "LC_CTYPE",locle="ko_KR.UTF-8")
read.csv("/Users/kimkirok/Desktop/인구주택총조사2015.csv", fileEncoding = "UTF-8")
guess_encoding("/Users/kimkirok/Desktop/인구주택총조사2015.csv")
read.csv("/Users/kimkirok/Desktop/인구주택총조사2015.csv",
         fileEncoding = guess_encoding("/Users/kimkirok/Desktop/인구주택총조사2015.csv")[1,1] %>% as.character)

install.packages("KoNLP")
$ ./convert.sh /Users/kimkirok/Desktop/인구주택총조사2015.csv
 # 찾았다.. 답은 fileencoding = "euc-kr" ㅜㅜㅜㅜ 진짜 몇시간 동안 이게 뭐냐....ㅜㅜ

 # 3. 엑셀 데이터
install.packages("readxl")
library(readxl)
ebook = read_excel(path = "/Users/kimkirok/Desktop/ebook.xlsx",
                   sheet = "data",
                   col_names = TRUE)
ebook
