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
