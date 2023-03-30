<h1> 한보름</h1> 
<h2>20230323</h2>

<h4>ls() # 함수 리스트 확인 list <br>
rm(foo) #함수 제거 remove <br>
rm(list = ls()) #모든 함수 제거 <br>
</h4>
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
