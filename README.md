<h1> 602377123 한보름</h1> 
<h2>20230413</h2><br>
<h3>파일 입출력에서 알아야할 내용을 확인하자 219p</h3> <br>
계산 결과를 화면에 출력하는 대신, 특정 파일로 출력하도록 하면 파일에 출력 결과가 저장되어있다.
<h4>
<p>
setwd('c:/Rwork') <br> #작업 폴더 지정 <br>
getwd()<br>#파일 위치 확인 <br>
print('hello') <br>#화면으로 출력 <br>
a <- 10; b<-20 <br>
sink('result.txt',append=T)<br> #파일로 출력 <br>
cat('hello world') <br># 화면으로 출력 <br>
----이부분이 처리 결과를 파일을 출력하는 코드 <br>
sink('result.txt',append=T) <br> # 파일로 출력 시작 <br>
cat('a*b',a*b,'\n')
sink() <br>#파일로 출력 정지 <br>
-----여기까지<br>
sink('result.txt',append=F)<br> #메모장 지워짐 <br>
sink('result.txt',append=T) <br> #메모장 안지워짐 <br>
sink()  #이거 없이도 들어간다
</p>
<p>
- 탭이나 고백으로 분리된 파일 221p <br>
R 에서 분석할 데이터는 대부분 .csv 나 엑셀 파일이지만 열이 공백이나 탭으로 분리된 파일도 종종 접하게 된다. 이러한 경우 read.table() 함수를 통해 데이터를 읽을 수 있다. <br>
setwd('c:/Rwork') <br> # 작업 폴더 지정 <br>
air <- read.table('airquality.txt',header = T,sep='') <br># 파일 읽기 <br>
head(air) <br> #내용 확인<br>
View(air)<br>
tail(air)<br>
</p>
</h4>

<p>
<h3>Chap7. 제어문과 사용자 정의 함수 사용하기 234p </h3>
<h4> 
if-else문 <br>
조건문을 조건에 따라 실행할 명령문을 다르게 할 경우에 사용된다. <br>
<br>
if(job.type =='b'){ <br>
  bonus<-200 #직군이 b가 아닐때 실행 <br>
}else{ <br>
  bonus<-100 #직군이 b가 아닌 나머지 경우 실행<br>
}<br>
print(bonus)<br>
직군이 B이면 보너스를 200으로 하고, 나머지의 경우엔 100 지급. <br>
<br>239p ifelse 문 <br>
<br>ifelse (비교조건, 조건이 참일 떄 선택할 값, 조건이 거짓일 때 선택할 값) <br>
a <-10<br>
b<-20 <br>
c <- ifelse (a>b,a,b) <br> # a>b 조건을 만족하면 a에 c를 저장하고 만족하지 않으면 b를 c를 저장하라는 의미.  <br>
print(c)<br> 
</h4>
</p>

</h4>
<p>
<br> #243 반복문 <br>

<br> for (반복 변수 in 반복 범위){<br> 
  반복할 명령문들 <br> 
}<br> <br> 
for (i in 1:5){<br>  #
  print('*')<br> 
}<br> # 1,2,3,4,5반복. 반복할때마다 i에 저장 <br> 
<br> 
<br> #반복 범위에 따라서 반복 변수의 값이 어떻게 변하는지를 나타낸다. 반복 변수들이 하나하나 출력된다 <br> 
for (i in 7:11){ <br> 
  print('i')<br> 
}<br> 
<br> 
<br> 구구단을 출력하기 위에선 cat함수를 사용한다. print는 하나의 함수를 출력할 때 사용되고,cat함수는 한 줄에 여러개의 값이 결합하여 출력할 때 사용된다. <br> 
for(i in 1:9){  #2단<br> 
  cat('2*', i,'=',2*i,'\n')<br>  
}<br> 
<br> 
#짝수인지 확인 246p<br> 
for(i in 1:20){<br> 
  if(i %%2==0){<br> # i를 2로 나눴을 때 나머지가 0인지 확인 <br> 
    cat(i,' ')<br> 
  }<br> 
}<br> 
</p>
</h4>
<h4>
<p>
#248p while <br>
<br> while (비교 조건){ <br>
  반복할 명령문 <br>
}<br>
<br>여기서 비교 조건은 반목을 수행할지 중지할지를 결정하는 조건문이고, 코드블럭 안에 반복할 명령문이 위치한다. <br>
<br>
sum <-0 <br>
i<-1<br>
<br>
while (i <=100){<br>
  sum <-sum +i  # sum에 1을 누적<br> 
  i<-i+1 #i 값을 1 증가 시킴. 이게 없으면 i 값에 변화가 일어나지 않고 while문이 영원히 실행됨. <br>
}<br>
print(sum)<br> # 5050 출력 
</p>

<p>
#250p apply <br>
반복작업의 대상이 매트릭스나 데이터프레임의 행이나 열인 경우 for ,while대신 apply 함수를 이용할 수 있다. 속도를 향상시킬 수 있다. <br>
apply() 함수는 매트릭스나 데이터프레임에 있는 행들이나 열을 하나하나 차례로 꺼내어 평균이나 합계를 구하는 작업을 수행할 때 유용하다 <br>
apply( 데이터셋, 행 /열 방향 지정, 적용 함수)<br>
<br>
apply(iris[,1:4],1,mean) <br>행 방향으로 함수 적용, 실행 결과는 150개의 행에 대한 행별 평균값 <br>
apply(iris[,1:4],2,mean)<br> 열 방향으로 함수 적용, 실행 결과는 4개의 열에 대한 평균 출력 <br>
apply(USJudgeRatings, 1,mean) <br> # 행별 평균 <br>
apply(USJudgeRatings, 2,mean)<br> # 열 별 평균 <br>
<p>
#사용자 정의 함수 255p<br>
사용자 스스로 함수를 만드는 것이다. <br>
함수명 <- function (매개변수목록)<br>{
  실행할 명령문 <br>
  return (함수의 실행 결과 )<br>
}<br><br>

mymax <-function(x,y){ # 만들고자하는 함수 mymax, 이 함수가 입력받는 매개변수 x,y <br>
  num.max <-x <br> 
  if(x>y){ # 큰 값을 num.max 안에 저장. <br>
} <br>
return  (num.max) <br> # 더 큰 값을 반환해준다. 
} <br> 작성된 코드는 작성 코드 자체를 한 번 실행해줘야한다. <br>
<br>
mymax(10,15) <br> #15출력 <br>
a <-mymax(21,15) <br> #a에 21 저장 <br>
a<br># 21 <br>
b <-mymax(33,22)<br> #33 저장
print(a+b)<br> #54출력 <br>
</p>

<p>
#257 매개변수의 기본값 설정 <br>
사용자 함수에서도 매개변수에 기본값을 저장할 수 있다. <br>
mydiv <-function(x,y=2){ <br>
  result <-x/y<br>
  return(result)<br>
}<br><br>

mydiv(x=10,y=3)<br>#매개변수의 이름과 매개변수 값을 쌍으로 저장 <br>
mydiv(10,3)<br><br> #매개변수 값만 저장 <br>
mydiv(10)<br><br> # x에 대한 값만 저장 <br>
</p>
<p>
#사용자 정의 함수의 저장과 재실행 260p <br>
setwd('c:/Rwork') <br> # 저장된 폴더 <br>
source('mydiv.R')<br># 저장된 폴더 안에 있는 함수 실행 <br>
a <- mydiv(20,4)<br> 함수사용, 함수 호출,<br>
b<- mydiv(20,4) <br> 함수 호출<br>
a+b <br>#12.5 출력 <br>
mydiv(mydiv(20,2),5)<br>2 출력 <br>
</p>

<p>
#조건에 맞는 데이터의 위치를 찾아보자 264p <br>

score <-c(65,47,86,35,75,85,78,45) <br>
which(score==85)<br> #성적이 85인 학생은 몇 번째에 있나 <br>
max(score) <br> # 가장 높은 점수 <br>
which(50<=score)<br> #50보다 크거나 같은 점수는 몇번째에 있나 <br>
which.min(score)<br> # 최저점은 몇번째에 있나 <br>
idx <-which(score <=60) <br>60 점 이하인 값들의 인덱스 <br>
score[idx] <-61<br> #60점 이하인 점수들은 61점으로 상향 조절 <br>
score<br> # 상향 조절된 점수 확인 <br>
<br>
idx <- which(score >=80) <br>#80점 이상인 값들의 인덱스 <br>
score.high <-score[idx] <br>80점 이상인 값들만 추출해서 저장 <br>
score.high<br> # 확인 <br>
<br>
#for에서 i값을 증가시킬 때, 무엇이다른지, 
#삼항연산자 ifelse문. 
#사용자지정함수 funciton 매개변수.
#source (mydiv.R)
</p>
</p>
</h4>
<h1> 602377123 한보름</h1> 
<h2>20230406</h2><br>
<h3>열과 행에 이름 붙이기</h3>
<h4>
<p>
score <- matrix(c(90,87,76,98,88,94,500,27,96,74,75,58), nrow = 4) <br>
#score 매트릭스 생성 <br>
rownames(score) <- c('john','tom','mark','jane')<br>
#행에 이름을 붙인다. <br>
colnames(score) <-c('Eng','math','science') <br>
#열에 이름을 붙인다. <br>
View(score) <br>#표 확인 <br>

score['john','math'] <br> #존의 수학 성적이 출력된다. <br>
score['tom',c('math','science')]<br> #톰의 수학, 과학 성적이 출력된다. <br>
score['jane','math'] 
score['mark',] <br> #마크의 모든 과목 성적이 출력된다 <br>
score[,'Eng'] <br> #모든 학생의 영어 성적이 출력된다 <br>
colnames(score)[2] <br> #math출력, score 열의 이름 중 두 번째 값 출력 <br>
rownames(score)[1] <br> #john 출력, score 행의 두 번째 값 출력
</p>
</h4>
<br>
<p>
<h3>데이터프레임은 무엇인가요 165p  <br>
데이터프레임은 (data frame)은 매트릭스와 마찬가지로 2차원 형태의 데이터를 저장하고 분석하는데 사용되는 도구이다. 외관상으론 차이가 없으나 매트릭스에 저장되는 모든 값들이 동일한 종류인 것과는 다르게 데이터 프레임에는 서로 다른 종류의 값이 함께 저장될 수 있다.
</h3>
<h4>  <p>
city <-c('seoul','tokyo','washington') <br> #문자로 이루어진 벡터 <br>
rank <-c(1,3,2) <br>#숫자로 이루어진 벡터 <br>
city.info <-data.frame(city, rank) <br># 데이터프레임 생성 <br>
<br>
</p>

<p>
iris 데이터셋 167p <br>
iris  <br> #iris 사용법 <br> 
iris[,c(1:2)] <br>#1~2열에 있는 모든 데이터 <br>
iris[,c(1,3,5)] <br> # 1,3,5 열에 있는 모든 데이터 <br>
iris[,c('Sepal.Length','Species')] <br> #1,5 열의 모든 데이터 <br>
iris[1:5,c(1,3)] <br>#1~5행의 데이터 중, 1,3 열의 데이터<br>
iris[1:4,c(1,2)] <br> #1~4행의 데이터 중 1,2 열의 데이터 <br>
</p>
<br>
<p>
<h3>
#매트릭스와 데이터프레임을 다루어볼까요 172p</h3>
dim(iris)<br> #행과 열의 개수 보이기 <br>
nrow(iris) <br>#행의 개수 보이기 <br>
ncol(iris)<br> #열의 개스 보이기 <br>
head(iris)<br>#데이터셋의 앞부분 일부 보기 <br>
tail(iris) <br>#데이터셋의 뒷부분 일부 보기 <br>
str(iris) <br>##데이터셋의 요약 정보 보기<br>
iris[,5] <br>품종 데이터 보기 <br>
levels(iris[,5]) <br> # 품종의 종류 보기 (중복 제거) <br>
table(iris[,'Species']) <br># 품종의 정류별 행의 개수 세기 <br>
</p>

<p>
<h3>매트릭스와 데이터프레임에 함수적용 177p</h3>
colSums(iris[,-5]) <br> # 합계의 평균을 계산할 때 iris[,-5]와 같이 5열을 제외하는 이유는 5열은 품종이을 나타내는 범주형 자료이다. 그래서 팩터 형태로 저장되어 있는데, 범주형 자료는 합계나 평균 등의 산술연산이 적용될 수 없기 때문이다. <br>
colMeans(iris[,-5]) <br>#열별 합계 <br>
rowSums(iris[,-5])<br> #열별 평균 <br>
rowMeans(iris[,-5]) <br>#행별 합계 <br>
<br>
행과 열의 방향 전환 177p <br>
z <-matrix(1:20, nrow=4, ncol=5) <br>
t(z)<br>#행과 열 방향 변환 <br>
</p>
<h3>
조건에 맞는 행과 열의 값 추출 178</h3>
IR.1 <-subset(iris, Species =='setosa') <br> #Subset 함수는 조건에 맞는 행들만 추출하는 기능을 제공한다. <br>
#iris :데이터를 추출하는 대상이 iris 데이터이다. <br>
#Species =='setosa' :데이터를 추출할 조건을 지정하는 부분으로, 춤종 열의 값이 satosa 인 것만 추출하라는 의미 <br>
IR.2 <-subset(iris, Sepal.Length <5.0 & Sepal.Width <4.0) <br> #Seppla.Length의 값이 5.0 보다 작고, Sepal Width 값이 4.0보다 큰 행들을 추출. <br>
<p>

<h3> 매트릭스와 데이터프레임에 산술연산 적용하기 180p</h3><br>
a <-matrix(1:20,4,5) <br>
b <-matrix(21:40,4,5)<br>
2*a<br>#매트릭스 a에 저장돈 값들에 2를 곱하기. 매트릭스에 대한 산술연산은 매트릭스 안에 저장된 값들에 대한 연산으로 실행된다.  <br>
a+b <br> #동일위치에 있는 값들 간에 더하는 연산으로 바꾸어 실행됨 <br>
a <-a*3 <br> 2*a는 저장된 값들에 대해 2를 곱한 결과를 보여줄 뿐이지 저장되지 않는다. 값들이 변경되길 바란다면 적용 결과를 다시 a에 저장해야 한다.<br>
b<-b-5<br>

</p>
<p>
<h3>메트릭스와 데이터프레임의 자료구조 확인과 변환 182p </h3>
class(iris) <br> #데이터셋 자료구조 확인<br>
class(state.x77) <br>#state.x77 데이터셋의 자료구조 확인 <br>
is.matrix(iris) <br> #데이터셋이 매트릭스인지 확인하는 함수 <br>
is.matrix(state.x77)<br> #데이터셋이 매트릭스 인지 확인하는 함수 <br>
</p>
<p>
<p>
<h3>chap6 데이터의 입력과 출력은 어떻게 하는 것일까 200p</h3>
age <- c(63,4,74,23,12,43,6,8,3) <br>
young <-min (age) <br> #정보추출 <br>
old <-max(age) <br>
cat (' 가장 젊은 사람의 나이는 ', young,'이고','가장 나이든 사람의 나이는',
     old,'이다') <br> #처리 결과 입력 <br>
</p>
<p>
화면에서 데이터 입력받기 <br>
install.packages('svDialogs') <br># 패키지 설치 <br>
library(svDialogs)
user.input <-dlgInput('Input income')$res <br># 유저 입력 받는 함수 digInput(), $res 는 dlgInput()함수의 실행 결과에서 사용자가 입력한 값을 추출하는 역할이다. <br>
income <- as.numeric(user.input) <br>#문자열을 숫자로 계산 <br>
tax <-income * 0.05 <br> #세금 계산 <br>
cat ('세금: ',tax)
</p>
<p>
print(), cat() 함수ㅠ204p <br>
print() : 하나의 값을 출력할 때, 데이터 프레임과 같은 2차원자료 구조를 출력할 때, 출력 후 자동으로 줄 바꿈 <br>
cat() : 여러 개의 값을 연결해서 출력할 때( 백터는 출력되나 2차원 자료구조는 출력되지 않음), 출력 후 줄바꿈을 하려면 '\n' 필요 <br>
#206p
y<-'입니다'
z <-c(12,14,15,3)
print(x) <br>#하나의 값 출력 <br>
print(y)<br> # 하나의 값 출력 <br>
print(z) <br> # 벡터 출력 <br>
print(iris[1:5,]) <br> #데이터프레임 출력 <br>
print(x,y) <br> #에러<br>
cat(x,y) <br> #출력가능<br>
cat(x,'\n\n\n') <br>#하나의 값 출력 <br>
car(iris[1:5],'\n\n\n') <br> #에러, 타입 list인 인자 1은 cat에 의해 다루어 질 수 없다<br>
</p>
<p>
<h3>파일을 이용해 데이터를 읽고 쓰는 방법을 알아보자 209p</h3><br>
getwd()<br> # 현재 작업 폴더 알아내기 <br>
setwd('D:/Han/23-Project1-R') <br>#작업 폴더 변경 <br>
<br>
#2 .csv 파일 읽기와 쓰기 (자주씀 중요 csv. 패키지 사용 방법)<br>
setwd('D:/Han/23-Project1-R')<br>
getwd()<br>
<p>
.csv파일에서 데이터 읽기 <br>
air <-read.csv('airquality.csv',header = T) <br>#.csv파일을 읽기. 파일을 해당 작업 폴더에 옮겨놔야한다<br>
class (air)<br>#air 의 자료구조 확인 <br>
head(air) <br>#파일의 내용을 정상적으로 불러왔는지 확인 <br>
my.iris <- subset(iris, Species == 'setosa')<br> setosa 품종 데이터만 추출 <br>
write.csv(my.iris, ' my_iris.csv',row.names=F) <br># .csv파일에 저장하기 <br>
</p>
<p>
엑셀 파일 읽기와 쓰기 <br>
install.packages('xlsx')<br> #패키지 설치 <br>
library(xlsx)<br> # 패키지 불러오기 <br>
air <-read.xlsx('D:/Han/23-Project1-R', header=T,sheetIndex=1) <br># .xlsx파일 읽기 <br>
.xlsx패키지를 설치한 다음 패키지를 불러오는데 이는 엑셀 파일을 읽기 위해 필요하다. 그리고 read.xlsx()함수를 통해서 airqulity.xlsx파일을 읽는다 
</p>
</p>


</p>
</h4>



<h1> 602377123 한보름</h1> 
<h2>20230330</h2><br>
<h4>- 본격 강의 전 잠깐 </h4>
<h4>ls() # 함수 리스트 확인 list <br>
rm(foo) #함수 제거 remove <br>
rm(list = ls()) #모든 함수 제거 <br>
</h4> 
<p>
<p>
<h3>벡터 다루기</h3>
<h4>
- 1차원 자료와 2차원 자료 <br>
단일 주제에 대한 값들을 모아 놓은 것을 말한다. <br>
- 범주형 자료와 수치형 자료<br>
복수 주제에 대한 값들을 모아 놓은 자료집을 말한다. 2차원 자료는 표 ( 테이블 ) 의 형태로 표현된다.
</p>
<p>
벡터의 연산 <br>
 - 벡터의 대한 산술연산은 벡터 안에 포함된 값들 하나한에 대한 연산으로 바꾸어 실행. <br>
d <- c(1,2,3,4,5)   <br> 
#벡터에 5개의 값을 저장 <br>
2*d <br> # 벡터 d에 2를 곱한 결과, d에 포한된 값들 하나하나에 대해 2를 곱한 결과가 출력됨. <br>
주의할 점은 이 연산을 실행한 후에도 백터 d에 저장된 값들에는 변화가 없다. 이 연산은 단지 벡터 d에 2를 곱하면 어떤 결과인지 보여줄 뿐이다. <br>
d-5
3*d+4 #일회성, 결과값 출력 
<br><br>
실제의 값으로 바꾸어 저장하고 싶다면, ,<br>
d <-d*2<br> #실헹한 값들로 변경되어 벡터 d의 값은 변경된 값이 저장된다.<br>
d <- d*4 #위와 같음 <br>
<p>
<p>
벡터와 벡터의 연산 <br>
<br> 베터간 대응되는 위치에 있는 값들끼리의 연산으로 바뀌어 실행된다. <br>
벡터와 벡터의 연산이 가능하기 위해선 두 벡터의 길이가 같아야 하고, 두 벡터에 포함된 값의 종류가 같아야 한다. <br> 
x <- c(1,2,3,4) <br>
y <- c(5,6,7,8)<br>
x +y  <br> # 대응하는 원소끼리 더하여 출력 <br>
x*y <br> 대응하는 원소끼라 곱하여 출력  <br>
z <-x+y <br> 벡터 z에 x+y를 하여 저장 <br>
z<br> x+y 할 때와 같은 결과가 출력됨.
<br>

y <-c(5,6,7) <br>

x +y <br> # 두 벡터의 길이가 같지 않으면 불가능 함 <br>
y <- c('a','c','b','d') <br>
x +y <br># 값의 종류가 다르면 불가능함<br>
m <-c(x,y)<br> #문자열이 섞여있어 전부 문자화 됨<br>
m <- c( y,x)<br>
p <- c(32,45,y,x,'apple') <br>
y <-c(5,6,7,8)<br>
m <-c(x,y)<br>
</p>

<p>
벡터에 적용 가능한 함수
<br>
sum() : 벡터에 저장된 값들의 합 <br>
mean() : 벡터에 저장된 값들의 평균 <br>
median() : 벡터에 저장된 값들의 중앙값 <br>
max(), min() : 벡터에 저장된 값들의 최댓값. 최솟값 <br>
var() : 벡터에 저장된 값들의 분산 <br>
sd() : 벡터에 저장된 값들의 표준 편차 <br>
sort() : 벡터에 저장된 값들을 정렬 (오름순차) <br>
sort (x, decreasing = TRUE) #내림차순 <br>
sort(x, decreasing = FALSE) #오름차순 정렬 <br>
range () : 벡터의 저장된 값들의 범위 ( 최솟값, 최댓값) <br>
length() : 벡터에 저장된 값들의 개수 (벡터의 길이) <br>
</p>
<p>
벡터에 논리 연산자 적용<br>
논리연산자란, 연산의 결과 값이 TRUE or FALSE인 연산자를 말한다. <br>

sum (x)==-sum(y)<br>
  #x와 y의 값이 같은가? #FALSE <br>
sum (x)!=sum(y) 
<br> # x와 y의 값이 같지 않은가? TRUE <br>
d <- 1:9 <br>
d >=5 <br> # d원소의 각각이 >=5인지 ( 5보다 크거나 같은지) 검사 <br>
d[d>5] <br> # 5보다 큰 것<br>
d[ 2<d & d<7 ] <br># 2보다 크고 7보다 작은 ( 두 조건 모두 충족해야 출력)  <br>
sum (d>5) <br> #5보다 큰 값의 개수를 출력 <br>
x <- sum(d>5) <br> #x에 4(5보다 큰 값의 개수)가 들어감 <br>
d[d>5] <br> # d에 저장된 값 중 5보다 큰 값들만  추출 <br>
sum(d[d>5]) <br> # 5보다 큰 값의 합계를 출력. <br>이런 충접 명령문은 안쪽부터 실행된다. d>5를 실행 , 그 결과값으로 d[d>5]를 실행한다. 여기서 나온 결과를 다시  sum() 함수에 입력값으로 넣어준다.   <br>
따라서 이 연산의 의미는 d에 저장된 값 중 5보다 큰 값들의 합계를 구하는 것이다. <br>
</p>
연습문제 <br>
x <-c(4,5) <br>
y<- c(63,68)<br>
sale.x <-2 *x<br>sale.x에 2*x를 저장.  <br>
sale.y <-2.5 *y <br> sale.y에 2.5 *y를 저장<br>
sale.day <- sale.x + sale.y 
names(sale.day) <-c('MON','tue') <br> # sale.day 에 sale.x, sale.y 를 저장한다. 값의 이름은 요일로 설정한다. <br>
sum(sale.day) <br># 총 매출액<br>
sale.mean <- mean(sale.day) <br> 요일별 벡터로 일평균 매출액을 구하고, 새로운 변수에 저장.
<p>
펙터와 리스트 <br>
펙터 factor : 믄자형 데이터가 저장되는 벡터의 일종으로, 저장되는 문자값들이 어떠한 종류를 나타내는 값 ( 성별, 혈액형 등과 같은 범주형 자료일 때) 일 때 사용한다. 팩터는 문자형 벡터를 만든 다음 factor () 함수를 이용해 변환하여 만든다. <br><br>
벡터와 비교해서 펙터의 특징을 정리하보자면 ,<br>
1. 번주형 자료의 저장에 이용된다 <br>
2. factor() 함수로 생성한다 <br>
3. 저장되는 값들에 따옴표가 표시되지 않는다 <br>
4. 팩터의 나용을 출력하면 Levels() 옆에 저장되어 있는 값들의 종류가 표시된다. 
5. levels() 함수로 값들아 종류를 알아낼 수 있다. <br>
6. Levels() 옆에 표시되는 값들 외에 다른 값을 추가하여 저장할 수 없다. 
<br>
bt <-c('a','b','b','ab','o') <br> # 문자형 펙터 bt의 정의 <br>
bt.new <- factor(bt) <br>#bt.new 정의  <br>
<br>bt와 bt.new의 차이점은 bt는 큰 따옴표로 묶여 출력된다. bt.new는 따옴표 없는 값들이 출력된다. <br> bt.new는 펙터에 저장된 목록을 보여준다. 펙터의 목적이 어떤 종류를 나타내는 문자값을 저장하는 것이기 때문에 종류 정보를 자동으로 보여준다. <br>
bt[2] <br> bt의 번째 값 출력<br>
bt.new[2] <br>bt.new의 2번째 값 정의 <br>
as.integer(bt.new) <br>#펙터의 문자값을 숫자로 바꿔 출력<br> 
펙터의 특징 중 하나는 저장된 문자값을 숫자로 바꾸어 부석 작업에 활용할 수 있다는 것이다. .as.integer()함수를 이용하여 숫자로 바꿀 수 있는데, 이 때 바꾸는 방법에는 정해진 규칙이 있다. levels() 함수를 통해 출력된 문자값들의 순서가 바로 변환될 숫자가 되는 것이다.  <br>
levels (bt.new) <br> # levels()함수는 펙처의 저장된 값들의 종류를 알아내는 함수이다.  펙터에 저장된 값의 종류를 출력. <br>
</p>
<p> 
리스트 LIST<br>
벡터가 동일한 자료형의 값들을 1차원 형탸로 저장하는 수단이라고 한다면 리스트는 자료형이 다른 값들을 한 곳에 저장하고 다를 수 있도록 해주는 수단이다. <br> <br>

h.list <-c('balling','tennis') <br> #벡터 h.list에 취미를 저장 <br>
person <- list(name='Tom',age=25,student=TRUE, hobby=h.list) <br> # 리스트 생성 <br>
person[1] <br>  # Tom 출력 <br>
person[3] <br> #TRUE 출력 <br>
person$name <br># Tom 출력 <br>
person$hobby <br> balling tennis 출력 <br>
<br>
리스트를 만드는 함수의 이름은 list()이다. 리스트는 1차원 자료구조이면서, 다양한 자료형들의 값을 저장할 수 있다. 
</p>
</h4>
<p>
<p>
<h3> 매트릭스 MATRIX</h3> <br>
벡터가 1차원 자료를 저장하기 위한 구조라면 매트릭스와 데이터프레임은 2차원 자료구조를 위한 대표적인 자료구조이다. 쉽게 말하면 여러 개의 벡터를 모아놓은 것이 매트릭스 또는 데이터 프레임이다.<br>
1차원 자료구조가 단일 주재의 값들을 모아놓은 것이라면, 2차원 자료구조는 여러주제로 데이터를 수집한 형태를 말한다. <br>
매트릭스와 데이터 프레임의 차이점은, 매트릭스에 저장되는 모든 자료의 종류가 동일한 반면 <br>
데이터프레임에는 서로 다른 종류의 데이터가 저장될 수 있다. <br>
2차원 형태의 데이터는 테이블 형태로 표현되는데, <br>
가로 : 행(row), 또는 관측값 (observation) <br>
세로 : 열 (column), 변수 (variable) <br>
</p>
<p>
z <-matrix(1:20, nrow=4, ncol=5)  <br> # 행 4, 열 5 <br>
x <- 1:4 <br> # 벡터 x 생성 <br>
y <-5:8 <br> # 벡터 y 생성 <br>
m1 <- cbind (x,y) <br>#x와 y를 열 방향으로 결합하여 매트릭스 생성<br>
m2 <- rbind(x,y) <br> # x와y를 행 방향으로 결합하녀 매트릭스 생성 <br>
m3 <- rbind (m2, x) <br> # 매트릭스 m2 와 벡터를 x를 행 방향으로 결합 <br>
m4 <- cbind (z,x) <br># 매트릭스 z와 벡터 x를 열 방향으로 결합 <br>
</p>
<p>
매트릭스에서 값의 추출 <br>
z<- matrix(1:20,  nrow = 4, ncol =5)<br> # 매트릭스 생성 <br>
z[2,3]<br># 2행 3 열에 있는 값
z[1:10]<br> # 1행 10열에 있는 값 <br> 
z[,4] <br># 4열에 있는 모든 값 <br>
z[2,] <br> # 2 행에 있는 모든 값<br>
z [2,1:3] <br># 2행의 값 중 1~3 열에 있는 값 <br>
z[,c(1,4)] <br> #1,4 열에 있는 모든 값 <br>
z[1:2,] <br># 1~2 행에 있는 모든 값<br>
z[1,c(1,2,4)] <br> # 1행의 값 중 1~3 열에 있는 값6
z[,c(1,5)] <br> # 1,5 열에 있는 모든 값


</p>
</p>
<br>
=======
<h1> 한보름</h1> 
<h2>20230323</h2>
<p>
<h3>패키지의 개념 </h3>
<p>
<h4> R 에선 데이터 분석을 위해 다양한 함수를 재공하는데 패키지는 이러한 함수를 기능별로 묶어놓은 일종의 꾸러미이다. 
</p>

<p>
<p>
패키지 사용 방법 <br>
<br>
1. 패키지 설치 -> install.packages('ggploat2') <br>
install.packages('cowsay) <br>
# ggplot2,cowsay 패키지 설치

</p>
<p>
2. 패키지 로드 -> library(ggplot2) <br> 
 library(cowsay) <br>
ggplot2, cowsay 불러오기
</p>
<p>
3. 함수 사용하기
<br>
ggplot(data = iris, aes(x =  Petal.Length, y= Petal.Width)) +geom.point()
<br>
say('Hello world', by='cat')<br>
say ('hi world), by='snowman<br> 
</p>
<p>
</p>
</p>
</h4>

<p>
<h3>변수의 개념</h3>
</p>
<p>
<h4>프로그램 내에서 어떤 값을 저장해 놓을 수 있는 보관 상자<br>
</h4>
<p><h3>변수 만들기</h3> </p>
<p><h4>a <-10 <br>
# a에 10을 저장한다.<br>
</p>
</h4> 

<p>
<p><h3>변수 내용 확인하기</h3></p>
<h4>
total <- 1234  <br>
#1234를 변수 total에 저장<br> 
total <br> #확인 방법 1 <br>
print (total)<br> #확인 방법 2 <br>
cat ('합계',total) <br> #확인 방법3 <br>

</h4>
</p>
<p> <h3>변수를 이용한 산술 연산</h3></p>
<p> <h4> 
a <-10 <br> # a에 10을 저장 <br> 3
b <-3 <br> # b에 3을 저장 <br>
c <- a + b <br> # c 에 a+b를 저장 <br>
print (a) <br> # a, 10이 출력됨<br>
print (b)<br> # b, 3이 출력됨 <br>
print(c) <br> #c, 13이 출력됨 
</h4></p>
<p> <h3>변수에 대해 알아야 할 것들</h3></p>
<p><h4>
변수의 값은 바뀔 수 있다.<br>
a <- 12 <br>
a <- 50<br>
print (a)<br> # 50이 출력된다.
<br><br>
하나에 변수애는 하나의 값만 저장 가능하다 <br>
num <- 2,5 <br> # 에러 발생<br><br>
변수와 변수의 연산은 변수에 저장된 값들의 연산으로 바뀌어 실행 <br>
c <- a+b <br> # 62 출력 <br>
<br>
변수명 작명 규칙 <br>
- 첫글짜는 영문자나, 마침표(.) 로 시작하는데 일반적으로 영문자로 시작한다 .<br>
(마침표는 숨기고 싶은 파일 앞에 붙여준다.)
<br>
- 두 번째 글자부터는 영문자, 숫자, 마침표, 밑줄을 사용 할 수 있다 <br>
- 특수문자는 사용 불가능하다. <br>
- 변수명에서 소문자와 대문자를 별개의 문자로 취급한다. <br>
- 변수명 중간에 빈 칸을 넣을 수 없다.
<p><h3> 변수에 저장될 수 있는 값의 종류</h3></p>
- 숫자형. 정수, 실수 모두 가능 <br>
- 문자형. 작은 따옴표나 큰 따옴표로 묶어 표현한다.<br>
- 논리형. TRUE, FALSE<br>
- 특수값. <br>
NULL: 정의되어 있지 않음. 자료형도 없고 길이도 0 <br>
NA: 결축값 (missing number)<br>
NaN: 수학적으로 정의가 불가능한 값 (Not A Number)
Inf, -Int: 양의 무한대 (Inf), 음의 무한대 (-Inf)
</h4></p>
<p> <h3>벡터 VECTOR </h3></p>
<h4>벡터의 개념 <br>
<p>R에서는 여러 개의 값을 한 번에 저장하는 기능을 벡터 vector라고 한다. 일반적인 프로그래밍 용어로는 1차원 배열 (array)라고도 한다. <br>
score <- c(1,2,3,4,5,6,7)
<br># score변수에 1,2,3,4,5,6,7 저장 <br>
mean(score) <br># 평균값 출력<br>
</p>
<p>
하나의 백터애는 동일한 자료형 (date type) 의 값이 저장되어야 한다.<br>
w<- c(1,2,3,'a','b','c') <br > # 숫자와 문자를 섞어 벡터에 저장하게 되면 숫자가 모두 문자로 바뀌게 된다. <br>
</p>
<p>
연속적인 숫자로 이루어진 벡터 <br>
v1 <- 50:90 <br># 클론 (:)을 사용하면 연속된 정수로 이루어진 벡터를 만들 수 있다. 50:90은 50부터 90사이의 정수를 의미한다.
<br>
v1 <-c(1,2,3,50:90)
<br># c 함수 안에서 사용될 수 있다. 1,2,3,50부터 90까지의 수가 저장됐다.
</p>
<p>일정한 간격의 숫자로 이루어진 벡터 <br>
<p>
seq(시작값, 종료값, 간격)<br>
가나격은 소수도 가능하다. seq() 함수는 시작값에서 출발하여 일정 간격으로 정수값 또는 소수값을 생성하다가 종료값이 되면 생성을 종료한다.</p>

v2 <- seq(1,101,3) <br># 시작, 종료, 간격 <br>
v3 <- seq(0.1,1.0,0.1) <br> #시작, 종료, 간격 <br>
</p>
<p>
반복된 숫자로만 이루어진 벡터 <br>
<p>rep(반복 대상값, times =  반복횟수)<br> 반복 대상값은 하나의 값일 수도 있고 여러개의 값일 수도 있다.
</p>
v4 <-rep(1, times =5) <br># 1을 5번 반복
<br>
v5 <-rep(1:5,times=3) <br># 1에서 5까지 3번 반복
<br>
v6<- rep(c(1:3,times=5)) <br># 1에서 3까지 5번 반복
 </p>
 <p>
 벡터의 값에 이름 붙이기<br>
 absent <-c(1,2,3,4) <br># 제작자는 숫자의 의미를 알지만 제 3자는 알기 어렵다.
 names (absent) <br># absent 벡터의 값들의 이름을 확인 <br>
 names(absent) <-c('one','two','three','four') <br># 값들의 이름을 확인
 <br>
 absent <br># absent 벡터의 내용 출력 <br>
 names(absent) <br># absent 벡터의 값들의 이름을 확인.
 </p>
 <p>
 벡터에서 원소값 확인하기
 <p>
 R에서는 벡터에 저장된 값들을 구별하기 위해서 앞쪽에의 값부터 순서를 부여하는데 이를 인덱스 (Index)라고 한다.
 </p>
 d <-c(1,2,3,4) <br> # d[1]은 저장된 값 중 첫번째 값을 지칭하므로, d[1] 을 출력하면 1이 출력된다. <br>
 d # 벡터 전체를 출력 <br>
 d[2] # 2가 츨력된다. <br>
 </p>
 <p>
 벡터에서 여러 개의 값 한번에 추출하기
 </p>
d[c(1,2)]<br> #1,2 번째 자료 출력 <br>
d[1:3]  <br> # 1부터 3까지의 자료 출력<br>
d[seq(1,5,2)] <br> #홀수 번째의 자료 출력, 1부터 5까지의 값을 2씩 건너뛰어 가져온다는 의미.<br>
d[-2] <br> # -는 제외하고 를 의미한다. 두 번 째 값을 제외한 나머지 값을 모두 가져오라는 의미.
<br>
<br>
<p>
이름으로 값을 추출하기
</p>
일반적으로 벡터에 저장된 값 중 원하는 값을 가져오는 방법은 대응하는 인덱스를 저장하는 것으로 가능하다. 그리고 배운 바와 같이 인덱스는 순서를 지정하는 숫자이다. 그런데 인덱스를 사용하지 않고 값에 붙여진 이름으로도 원하는 값을 추출할 수 있다.
<br>
sales <-c(3,4,5,6)  <br>
names (sales) <-c('a','b','c','d')> <br>
sales[1]<br>
a <br> 
3 <br>  # 출력값<br>
sales ['b'] <br>
b <br>
3  #출력값 <br>
<br>
<p> 벡터에 저장된 원소값 변경하기
<br>
v1 <-c(1,2,3,4,5) <br>
v1[2] <-3 <br> # v1의 두 번째 값을 3으로 변경 <br>
v1[c(1,5)] <-c (10,20) <br># 1번째와 5번째 값을 10과 20으로 변경 <br>


</p>
</h4>
</p>


</p>

20230323
library(ggplot2)
library(cowsay)
say("Hello wolrd", by="cat")
say("Hello wolrd", by="snow")
Sys.time()
total <- 3030
total
print(total)
cat("total: ", total)
print("total: ")
a <- 2
b <- 30
a+b
print(a+b)
 a <-50
 c <- a+b
 print(c)

vector 

# 한보름 h1 이름
## 2030316 h2  강의날짜
## 학습 내용 h2이하
### 작성코드 H 자유
### 최근 내용이 위로 오게
### 날짜별 구분이 잘 가도록 
>>>>>>> 702dd373be75b24151c88703dbf0554e0c2517c0
---
library(ggplot2)
library(cowsay)
say("Hello wolrd", by="cat")
say("Hello wolrd", by="snow")
Sys.time()
total <- 3030
total
print(total)
cat("total: ", total)

. -  숨기는 파일 만들때

null, nah, na
