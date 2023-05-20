<h1> 602377123 한보름</h1> 
<h2>20230518</h2><br>
<h4>
<h3>Sectio02.이것이 정렬입니다 402p</h3>
<br>
#정렬(sort)은 주어진 기준에 따라 데이터를 크기순으로 재배열하는 과정<br>
#숫자의 경우는 숫자의 크기에 따라 정렬이 가능<br>
#문자열의 경우는 알파벳 순 또는 가나다순으로 정렬 가능<br>
<br>
#벡터의 정렬 <br>
v1 <-c(1,2,5,3,6) <br>
v1 <-sort(v1) #오름차순(기본값)<br>
v1 <br>
v2 <-sort(v1, decreasing =T) # 내림차순<br>
v2<br><br>
#내림차순으로 하려면 sort()매개변수 decreasing =T 로 설정하면 된다.<br><br>
name <-c('가나다','라마','바사')<br>
sort(name) #오름차순<br>
sort(name, decreasing = T) #내림차순<br>
<br>
#403p <br>
#sort함수는 값의 크기에 따라 값들을 정렬하는 함수이다.<br>
#order()함수는 값의 크기에 따라 값들의 인덱스를 정렬하는 함수 <br>
order(name)#오름차순<br>
order(name, decreasing = T)#내림차순, 값들의 인덱스를 값의 크기에 따라 내림차순으로 정렬하는 것<br>
<br>
idx <-order(name)<br>
name[idx] #오름차순 정렬<br>
#이 명령문은 값의 크기에 따라 오름차순으로 인덱스를 정렬한 뒤, 정렬된 인덱스를 이용해 값을 정렬하는 과정<br>
#값의 크기에 따라 오름차순으로 인덱스를 정렬한 뒤, 정렬된 인덱스를 이용하여 값을 정렬<br>
<br>
<br>
#메트릭스와 데이터프레임의 정렬 404p  <br>
#특정 열의 값들을 기준으로 행을 재배열하는 방법
<br><br>
#iris 데이터셋에서 꽃잎의 길이를 기준으로 행을 재정렬하는 예 <br>
head(iris) #행들의 순서를 나타냄. 입력된 순서대로 번호가 붙는다<br>
order(iris$Sepal.Length)  # 주어진 열의 값들에 대해 순서를 붙인다.,$ = 데이블에서 열을 선택 <br>
iris[order(iris$Sepal.Length),]#오름차순으로 정렬 <br>
iris[order(iris$Sepal.Length,decreasing =T),] #내림차순으로 정렬<br>
iris.new <-iris[order(iris$Sepal.Length),] #정렬된 데이터를 저장<br>
head(iris.new)
iris[order(iris$Species, decreasing = T, iris$Petal.Length),] #정렬 기준이 2개<br>
<br>
#정렬결과를 유지하기 위해선 새로운 벡터(iris.new)에 저장해야됨<br> <br>
<h3>#Section 03. 샘플링과 조합 409p </h3>
 <br>
#샘플링:주어진 값들에서 임의의 개수만큼 값을 추출하는 작업<br>
#한 번 뽑은 값을 제외한 뒤 새로운 값을 추출하는 방식 -> 비복원 추출(데이터분석에서 주로 사용)<br>
#뽑았던 값을 다시 포함시켜 새로운 값을 추출하는 방식 -> 복원 추출
<br>
#샘플링이 필요한 때 : 데이터셋이 너무 커, 분석에 시간이 많이 걸리는 경우, 일부 데이터만 추출하여 대략의 결과를 미리 확인 <br><br>

x <- 1:100<br>
y <-sample(x,size = 10,replace = FALSE) #비복원 추출<br>(replace = FALSE)<br>
y<br>
#sample()함수에서size는 추출할 값의 개수를 지정하는 매개변수이고, replace=FALSE는 비복원추출을 의미,<br>복원 추출을 원하면 replaces =TRUE 지정<br><br>

#iris데이터셋에서 50개의 행을 임의로 추출하는 예 409<br>
idx <-sample(1:nrow(iris),size=50,replace = F) #50개의 행 추출 , nrow는 함수는 행의 개수를 알아내는 함수.1:150 사이의 숫자중 50개를 임의로 추출하여 idx에 저장<br>
iris.50 <-iris[idx,] #50개의 행 임의로 추출<br>
dim(iris.50) # 행과 열의 개수 확인<br>
head(iris.50) <br> <br>
#410 <br> <br>
#sample()함수는 임의 추출이기 때문에 함수를 실행할 때마다 결과가 다름.<br>
#임의로 추출하되 다음에도 동일한 결과가 나오도록 해야할 째는 sample()실행전 , set.seed()함수를 먼저 실행. <br>
#set.seed()함수의 매개변수 값이 같으면 sample()함수의 결과도 같다. <br>
sample(1:20, size=5)<br>
sample(1:20, size=5)<br>
sample(1:20, size=5)# 매번 다른 결과값 <br>
set.seed(100)<br>
sample(1:20, size=5)<br>
set.seed(100)<br>
sample(1:20, size=5) <br>
#set.seed(100)을 먼저 실행한 후 샘플링을 두 번 징행하면 결과가 같지만 set.seed()힘수 없이 샘플링을 하면 결과가 다르게 나온다<br>
#알 수 있는 사실은 set.seed()함수의 효과는 샘플링을 한 번 하면 사라진다는 것이다. <br> <br>
#조합 412<br>
#조합(combination): 주어진 데이터값 중에서 몇 개씩 짝을 지어 추출하는 작업으로 combn()함수를 사용<br>
#결과에서 얻은 각 열은 하나의 조합을 의미한다.<br>
<br><br>
combn(1:5,3) #1-5에서 3개를 뽑는 조합 <br>
x <- c('red','green','blue','black','white') <br>
com <-combn(x,2) #x의 우언소를 2개씩 뽑는 조합<br>
com<br>
<br>
for (i in 1:ncol(com)){ #조합을 출력<br>
  cat(com[,i],'\n')<br>
}<br> <br>
<h3>#Section4.데이터 집계 <br></h3>
#집계: 데이터의 그룹에 대해서 합계나 평군을 계산하는 작업 aggregate()함수 사용<br>
<br>
#iris데이터셋에서 각 품종별로 꽃잎 꽃받침의 폭과 길이의 평균을 나타내자. <br>
agg<- aggregate(iris[,-5], by=list(iris$Species), FUN=mean) <br>
agg <br>
#iris[,-5] : 집계 작업을 수행할 데이터셋을 의미한다. <br>
#by=list(iris$Species) :집계 작업의 기준이 품종 열의 값임을 의미한다. <br>
# FUN= mean :집계 작업의 내용이 평균 (mean)계산임을 의미한다<br>
<br>
#2개의 기준에 대해 다른 열들의 최댓값 구하기 417p<br>
#mtcars데이터셋에서  cyl, vs 를 기준으로 다른 열들의 최댓값 구하기<br>
head(mtcars)<br>
agg <-aggregate(mtcars, by=list(cyl=mtcars$cyl), vs =mtcars$vs,FUN=max)<br>
agg<br> <br>

<h3>#Chapter12 고급 그래프 작성하기</h3>
#SEction 1.나무지도 426p <br>
#나무지도를 작성하기 위해선 treemap 패키지를 설치해야된다.<br>
install.packages('treemap')<br>
library(treemap) #treemap패키지 불러오기 <br>
data(GNI2014) #데이터 불러오기<br>
head(GNI2014) #데이터 내용 보기<br>
<br>
treemap(GNI2014,<br>
        index=c('continent','iso3'), #계층 구조 설정 (대륙 -국가), 나무지도 상에서 타일들이 대륙안에 국가의 형태로 배치되는 것을 지정<br>
        vSize='population', #타일의 크기. 타일의 크기를 결정하는 열을 지정<br>
        vColor='GNI',#타일의 컬러, 타일의 색상을 지정<br>
        type='value', #타일 컬러링 방법, 타일의 컬러링 방법을 지정<br>
       # bg.labels='yellow', #레이블의 배경색<br>
        title='World s GNI') #나무지도 제목<br>
        <br>
        
st <-data.frame(state.x77) #매트릭스를 데이터프레임으로 변환<br>
st <-data.frame(st, stname=rownames(st)) #주의 이름 열 stname 추가 <br>

treemap(st,<br>
        index=c('stname'), # 타일에 주 이름 표기<br>
        vSize='Area', #타일의 크기 <br>
        vColor='Income', #타일의 컬러<br>
        type='value',#타일의 컬러링 방법 <br>
        title='USA states area and income') #제목<br>
        
treemap(st,<br>
        index=c('stname'),<br>
        vSize='Population',<br>
        vColor='Illiteracy',<br>
        type='value',<br>
        title='USA states 인구와 문맹률')<br>






</h4>


<h1> 602377123 한보름</h1> 
<h2>20230511</h2><br>
<p>
<h4>
#중간고서 답안 <br>
# rm(list=ls()) 데이터 전체 삭제 <br>
installed.packages('wordcloud')<br>
library(wordcloud)<br>
foo <-rownames(USArrests)<br>
bar <-USArrests<br>
foobar <-data.frame(foo,bar)<br>
wordcloud(words=foobar$foo)<br>
</h4>
</p>
<br>
<h4>
<h3>10-3 다중 데이터 변수를 분석해보자 379p</h3>
#다중변수 데이터는 변수들을 개별 분석보다 변수 간의 관계를 찾는 것이 더 중요 <br>
# 1.두변수의 상관관계<br>
<br>
#1. 데이터 확인<br>
head (pressure) #측정값들이 저장되어있는 는 것을 알 수 있다.<br>
#2.산점도 작성<br>
plot(pressure$ temperature, #x축 그래프<br>
     pressure$pressure,#y축 그래프<br>
     main='온도와 기압', # 그래프 제목<br>
     xlab='온도 (화씨)',#x축 레이블<br>
     ylab = '기압')# y 축 레이블<br>
     
<br>plot()함수를 이용해 산점도를 통해 온도와 기압 사이의 관계를 확인.     
<br>
#상관관계 381p<br>
#x축  변수의 값이 증가하면y축의 변수의 값이 비례해서 증거하거나 반대로 x축 변수의 값이 증가하며 <br>
#상관계수가 (-) 인 경우 x,y가 반비례 음의 상관관계에 있음 <br>
#상관계수가 (+) 인 경우 x, y 가 비례 양의 상관관계에 있음 <br>
<br>
#381 cars 데이터셋을 이용한 산점도와 상관계수 계산 (plot 잘 알아두세요) <br>
 1.데이터 확인<br>
head (cars)<br>
2. 산점도의 작성 <br>
plot(cars$speed, #x축 데이터<br>
     cars$dist,   #y축 데이터<br>
     main='자동차 속도와 제동거리', #그래프 제목<br>
     xlab='속도', # x축 레이블<br>
     ylab='제동거리') #y측 레이블<br>
     <br>
<br>
#상관계수를 구하는 함수cor <br>
cor (cars$speed, cars$dist) <br>
<br><br>
#다중변수 사이의 상관관계 383<br>
볌수가 3개인 데이터는 변수를 2개씩 짝지어서 상관관계를 분석할 수 있다. <br>
<br>
<br>
#데이터 확인<br>
st <-data.frame(state.x77) #매트릭스(state.x77)를 데이터 프레임으로 변환<br>
head(st)<br>
<br>
#다중 산점도 작성<br>
plot(st)<br>
<br>
#다중 상관계수<br>
cor(st)<br>
<br>

#기대수명과 살인 범죄율은 매우 강한 음의 상관관계<br>
#인당 소득과 고등학교 졸업률은 어느 정도의 양의 상관관계<br>
#상관관계를 구하는cor()함수에 2개가 아닌 3개 이상의 변수 데이터를 입력하면 다중 산점도와 비슷한 형태의 결과가 나타남<br>
#살인 범죄율과 문맹률으ㅢ 상관관계는 상당히 높은 상관관계<br>
#상관관계는 인과관계를 의미하지 않는다. 기대수명과 실인 범죄율의 상관계수가 <br>
#높다고 해서 범죄가 원인이 되어 기대수명이 낮아진다고 단정할 수는 없다.<br>
#인과관계는 보다 심층적인것 385p<br>

<h2>chapter 11, 데이터 전처리 알아보기 </h2>
#11-1 결측값에 대해 알아봅시다. 394p <br>
<br>
#데이터 전처리<br>
확보한 데이터를 정제하고 가공해 분석에 적합한 형태로 만드는과정<br>
현실에서는 잘 정리된 데이터셋을 바로 얻는 경우가 많지 않음<br>
데이터 전처리는 전체 분석 과정에서 오랜 시간을 처지<br>
<br>
#결측값의 저리
결측값은 데이터 수집, 저장과정에서 값을 얻지 못하는 경우 발생 (NA 로 표현) <br>
결측값이 섞여있는 데이터셋은 분석할 때 문제를 일으킴 ex) 합 평균 계산 시 <br>
#결측값은 데이터의 수집, 저장과정에서 값을 얻지 못하는 경우 발생. 결측값은 NA로 표현된다. <br>
#결측값 처리 방법은 1.결측값을 제거, 제외한 후 분석<br> 2.결측값을 추정하여 적당한 값으로 치환한 후 분석<br>

score <- c(90,70,NA,40,60)
sum(score)
<br>#실행결과는 NA 가 나온다 <br>
<br>
#벡터의 결측값 394p <br>
z <-c(1,2,3,NA,5,NA,8) # 결측값이 포함된 벡터  <br>
sum(z) #정산 계산 안됨 <br>
is.na(z) #결측값NA 여부 확인<br>
sum(is.na(z)) #결측값 개수 확인, TRUE는 1, FALSE 는 0으로 변환. 이 명령문은 is.na (z)에 포함된 TRUE 개수를 세는 역할을 한다. <br>
sum(z, na.rm=TRUE) #결측값 제외하고 합계를 계산<br>
<br>
#NA를 다른 값으로 대처하는 방법과 NA를 제거하는 방법 396p<br>
z1 <-c(1,2,3,NA,5,NA)<br>
z2<-c(5,7,3,NA,NA)<br>
z1[is.na(z1)] <-0 #NA를 0으로 치환<br>
z1<br>
is.na(z1)함수는 벡터 z1에서 NA값을 TRUE 로, NA 가 아닌 값을 FALSE로 변환시켜 결과를 반환합니다. 따라서 z1[is.na(z1)]는 z1에 있는 NA 값들을 의미힌다. 이 값들에 대해서만 값이 0으로 바뀐다. 결과 값을 보면 NA값들이 0으로 바뀐 것을 알 수 있다. 
<br>
z3 <-as.vector(na.omit(z2)) #NA를 제거하고 새로운 벡터 생성<br>
z3<br>
na.omit(z2) 함수는 벡커 z2값에서 NA 값들을 제거하는 함수인데, 결과의 자료구조가 벡타가 아니기 때문에 as.vector()함수를 이용하여 벡터로 만든다.  실행결과를 보면 NA 를 제외한 값들오 z3이 만들어졌음을 확인 할 수 있다. <br>

<h3>#매트릭스와 데이터 프레임의 결측값 397p<h3>
#NA를 포함한 test데이터 생성 <br>
x <-iris <br>
x[1,2] <-NA; x[1,3] <-NA <br>
x[2,3]<-NA; x[3,4]<- NA<br>
head(x)<br>
#for문을 이용한 방법<br>
i <-c(1,2,NA,4,NA,76,NA)<br>
for (i in 1:ncol(x)) {<br>
  this.na <-is.na(x[,1])<br>
  cat(colnames(x)[i],'\t',sum(this.na), '\n')<br>
}<br>
<br>for문을 살펴보먄 is.na() 함수를 통해 각 열별로 NA의 개수를 파악한 뒤  cat() 함수를 통해 열이름과 NA의 개수를 출력한다. <br>
#is.na함수를 통해 각 열별로  NA의 개수를파악한 뒤 cat ()함수를 통해 열이름과 NA의 개
<br>
#apply를 이용한 방법<br>
col_na <-function(y){<br>
  return (sum(is.na(y)))<br>
}<br>
na_count <-apply(x,2,FUN=col_na)<br>
na_count<br>
<br>appy를 이용한 방법은 먼저 열별로 NA의 값을 파악하는 col_na()함수를 정의하고 apply()함수에서 각 열 별로 col_na() 함수를 적용하여 결과를 얻습니다 <br>
<br>
#행 별로 결측값이 몇 개 인지 알아보기 398p <br>
rowSums(is.na(x)) # 행별 NA 개수<br>
sum(rowSums(is.na(x))>0) #NA가 포함된 행의 개수<br>
sum(is.na(x)) #데이터셋 전체에서 NA 개수<br><br>

#NA를 제외하고 새로운 데이터셋 만들기. 이 작업을 위해 complete.cases() 사용된다.<br>
#어떤 데이터셋에서 NA를 포함하지 않은 완전한 (complete)행들을 찾아준다. <br>
head(x)<br>
x[!complete.cases(x),] #NA가 포함된 행들을 나타냄 <br>
y <-x[complete.cases(x),] #NA가 포함된 행들을제거 <br>
head(y) #새로운 데이터셋인 y의 내용 확인 <br>
<br>
#400p<br>
col_na <-function(y){<br>
  return (sum(is.na(y)))<br>
}<br> 
<br>
#R에서 제고앟는 airquality 데이터셋에 대해 열별로 NA값이 존재하는지 apply()함수를 이용해 나타내지
apply(airquality, 2, FUM=col_na)<br>
<br>
#SEctio02. 이것이 정렬입니다<br>
#정렬(sort)은 주어진 기준에 따라 데이터를 크기순으로 재배열하는 과정<br>
#벡터의 정렬<br>
v1 <-c(1,2,5,3,6)<br>
v1 <-sort(v1)<br>
v1<br>

</h4>
<h1> 602377123 한보름</h1> 
<h2>20230504</h2><br>
<h3>#복수의 선그래프 작성하기 #334p</h3>
month =1:12 <br>
late1 =c(3,4,5,1,5,3,7,2,89,2,32,12) <br>
late2 =c(3,4,3,1,5,3,7,2,8,2,12,12) <br>
plot (month, # x데이터<br>
      late1, #y데이터 <br>
      main = 'late student', <br>
      type='b', #그래프 종류 선택<br>
      lty=1, #선의 종류 선택 <br>
      col='red', # 선의 색상 선택 <br>
      xlab='MOnth',#x축 레이블 <br>
      ylab='late cnt') #y축 레이블 <br>
<br>
lines (month, #x 데이터, line()함수는 그래프 위에 선을 겹쳐 그리는 역할을 한다<br>
       late2, #y데이터 <br>
       type='b', #선의 종류 선택 <br>
       col='blue') #선의 색상 선택 <br><br>
lines() 함수는 plot() 함수로 작성됨 스래프 위에 선을 겹쳐 그리는 역할을 한다. 함수를 추가할 때 마다 선이 하나씩 추가된다. <br>
<br>
<h2>상자 그림에 대해 알아보자#338p </h2>
<h3>사분위수를 시각화하여 그래프 형태로 나타낸 것, 하나의 그래프로 데이터의 분포
형태를 포함한 타양한 정보를 전달하기 때문에 단일변수 수치형 자료를 파악하는 데 자주 사용 된다
</h3>
<h4>
dist <-cars[,2] #자동차 제동거리 단위 (단위 :피트) <br>
boxplot(dist, main='자동차의 제동 거리') #상자그림은 데이터의 전반적인 분포를 이해하는 데엔 도움이 되지만 구체적인 값을 정확히 알긴 어렵다 <br>
#이를 알기 위해서는 boxplot.stats()함수를 사용하면 된다. 실행 결과는 list형태로 출력 된다 <br>
#340<br>
boxplot.stats(dist) #$stats: 정상 범위의 데이터 내에서 사분위수에 해당하는 값들이 표시된다. <br>
boxplot.stats(dist)$out #특이값만 출력, $out: 특이값들의 목록을 저장한다. <br>
<br>
#341 그룹이 있는 테이터의 상자그림 <br>
boxplot(Petal.Length~Species, #데이터와 그룹 정보 <br>
        data=iris, #데이터가 저장된 자료 구조<br>
        main='품종별 꽃잎의 길이', #그래프의 제목<br>
        col=c('gray23','gray','gray11')) #상자들의 색<br>


<h3>#344 section3. 산점도란 무엇인가 <br> </h3>
산점도 (scatter plot) 는 다중변수 데이터에서 두 변쉥 포함된 값들을 2차원 그래프상에 점으로 표현하여 분포를 관찰 할 수 있도록 하는 도구이다. <br><br>

#두 변수 사이의 산점도 345p <br>
#산점도를 그려보면 두 변수의 데이터 분포와 변수 사이의 관계 파악 가능<br>
#산점도는 두 변수의 데이터 분포를 보는 것이므로 두 변수의 데이터 필요<br>
wt <-mtcars$wt # 중량 데이터, x축에 해당하는 데이터 (벡터)를 뜻 한다.<br>
mpg <-mtcars$mpg #연비 데이터 ,y축에 해당하는 데이터(벡터) 를 뜻한다.<br>
plot(wt,mpg, #2개의 변수 <br>
     main='중량 연비 그래프', #제목<br>
     xlab='중량', #x축 레이블<br>
     ylab='연비 (MPG)', #y축 레이블<br>
     col='gray65', #point 의 color<br>
     pch=19) #point의 종류(모양)<br>

산점도는 두 변수의 데이터 분포를 살펴보는 것이기 때문에 두 개의 변수에 대한 데이터가 필요하다. wt,mpg에 각각 중량과 연비 데이터를 저장한 후 plot() 함수를 이용하여 산점도를 작성한다. <br>

#347p 여러 변수들 간의 산점도 <br>
vars<-c('mpg','disp','drat','wt') # 대상 변수 <br>
target <- mtcars[ ,vars] # 대상 데이터 생성 <br>
head(target) <br>
plot(target,  # 대상 데이터 <br>
     min='Multi plots')<br>
 #mtcars 데이터셋에는 11개의 변수가 저장되어 있는데 이 중 4 개의 변수 데이터만 선택하여 target에 저장했습니다. <br>
<br>
#349p 그룹 정보가 있는 2개 변수의 산점도 349p<br>
iris.2 <-iris[,3:4] #데이터의 준비<br>
levels(iris$Species) #그룹 확인<br>
group <-as.numeric(iris$Species) #점의 모양과 색<br>
group<br>
color <-c('gray','gray7','red') #점의 색<br>
plot (iris.2, #plot() 함수를 이용해 산점도를 작성 <br>
      main='Iris plot',<br>
      pch=c(group), #품종별로 점의 모양을 다르게 지정하려면 pch를 숫자로 지정해야함<br>
      col=color[group])<br>
    
<br>
#기본그래프 1에 있는거 정확한 학습 필요<br>
<br>
<h2>#10장 데이터 탐색하기 362p </h2>
#단일 변수 데이터를 분석해보자 367p <br>
#데이터 준비<br>
installed.packages('carData')<br>
library(carData) <br>
room.class <-TitanicSurvival  #선실 정보<br>
room.class <br>
<br>#도수 분포 계산
tbl <-table (room.class)<br>
tbl<br>
sum(tbl) #전체  탑승객수<br>
<br>#막대 그래프 생성 <br>
barplot(tbl, main='선실병 탑승객', <br>
xlab='선실등급',<br>
ylab='탑승객수',<br>
col=c ('blue','green','yellow.))<br>
<br>#원그래프 작성 <br>
tbl/sum(tbl) <br>
par (mar=c(1,1,4,1)) <br>
pie(tbl,main ='선신별 탑승객',<br>
col=c('blue','green','yellow'))<br>
par(mar=c(5.1,4.1,4.1,2.1)) <br>
<br>
<br> #단일변수 수치형 데이터 분석 269p<br>
#데이터 준비 <br>
grad <-state.x77[,'HS Grad'] #주별 고등학교 졸업률<br>
grad<br>
<br>#사분위수 <br>
summary(grad) <br>
var(grad) #분산<br>
sd(grad) #표준편차<br>
<br>#히스토그램 <br>
<br>
#타이타닉 중요

</h4>
<h1> 602377123 한보름</h1> 
<h2>20230427</h2><br>
<h2>8장. 기본 그래프 작성하기 282p</h2>
<h3>막대그래프를 작성해봅시다 </h3>
<h4>
도수분표도 계산하기 283p <br>
favorite <- c('winter','spring','summer','fall','winter') # 데이터 입력 <br> 
 ds <-table (favorite) # 도수분표도 저장 <br>
 -table()함수는 벡터에 저장된 범주형 데이터에 대한 데이터 값이 종류별로  몇 개인지 계산하는 함수이다 <br>
 <br>
 막대그래프 작성하기 284p<br>
 ds <-table(favorite) #도수 분포도 저장 <br>
 ds barplot(ds, main = 'Favorite season') # 막대 그래프 작성<br>

  barplot(ds, main = 'Favorite season', col ='grey20') # col = 색상 적용 <br> 
  colors() # 색상확인 <br>
  <br>
  #막대별로 색상 지정 286 ,col=c('','') <br>
 barplot(ds, main = 'Favorite season' , col=c('grey2','grey39','grey','grey20'))   <br><br>
#x,y 축에 설명 붙이기 288p <br>
xlab() barplot(ds, main = 'Favorite season' ,<br>
col=c('grey2','grey39','grey','grey20'), #막대의 색을 지정<br>
xlab='계절', ylab='빈도수')  #축 설명<br> <br>

색상 랜덤 지정288p/ raibow() <br>
barplot(ds, main = 'Favorite season' , col=rainbow(4))
<br>
<br>
<h4>수평 그래프 /horiz 288p<br>
barplot(ds, main = 'Favorite season' , #<br> 
col=c('grey2','grey39','grey','grey20'), # 색상 지정<br>
xlab='계절', ylab='빈도수', # x,y축<br>
horiz=TRUE) #  Horiz=TRUE 수평 방향 출력 <br>
<br>
#x축의 그룹 이름 바꾸기 289p <br>
 names() 매개변수 names는 그룹의 이름을 다른 것으로 바꾸어 출력하고 싶을 때 사용 <br>
 barplot(ds, main = 'Favorite season' , <br>
 col='gray', #막대의 색을 지정 <br> 
 names=c('가을','봄','여름','겨울'))  #그룹 이름을 바꾸어 출력<br>
<br>
#x축의 그룹 이름을 수직 방향으로 작성 /las() <br>
,1정상,2 x축만 바꿈,축을 기준으로수직 ,3 x,y 축 모두 틀어짐,축 방향과 상관 없음<br>
barplot(ds, main = 'Favorite season' , <br>
 col='gray', # 색상 지정<br> 
 names=c('가을','봄','여름','겨울'), #그룹<br>
  las =3) # 그룹 이름을 수직 방향으로  <br>
<br>
#중첩 막대 그래프 291 <br>
 age.A <-c(23,352,654,234,643) #데이터 입력 <br> 
  age.B <-c(456,747,876,345) <br>
  age.C <-c(66,44,32,88) <br>
  ds <- rbind (age.A, age.B, age.C) #abs를 rbind로 묶어줌<br>
  colnames(ds) <- c('1907','1990','2010','2030','2050') #<br> 
  ds<br>
  barplot(ds, main='인구 추정')<br> #그래프 작성 <br>
  <br>
#연령대 별로 색상 rainbow() <br>
barplot(ds, main ='인구측정', <br> 
col = rainbow(3)) #or<br> 
col =c('green','blue','yellow')  <br><br>

#연령대를 각각의 막대로 표현하기- #beside() 294p <br>
 중첩하지 않고 각각 표시하는 방법 FALSE or TRUE<br>
 barplot(ds, main ='인구측정',<br>
  beside=T) <br> <br>

#범례(legend) 295p<br>
 legend.text = T barplot(ds, main ='인구측정',col = rainbow(3),<br>
 legend.text = T) #범례 추가 <br>
<br>
#범례를 그래프 밖에 표시 296p <br>
par()함수는 그래프를 표시할 창에 대해 설정하는 역할을 한다. 범례를 표시하려면 써줘야 한다.
par(mfrow=c(1,1), mar=c(5,5,5,7)) #범례를 그래프 밖에 표시2<br>

 barplot(ds, main ='인구측정',col = rainbow(3),legend.text = T,<br>
 args.legend = list(x='topright',bty='o',inset=c(0.25,0))) #범례를 그래프 밖에 표시 <br>
 barplot()함수에서 범례에 관한 사항을 지정하는 데 사용하는 매개변수는 args.legend이다. 이 함수는 여러 개의 사항을 list() 함수로 묶어서 지정할 수 있다.
<br><br>
#범례의 내용 바꾸기 298p<br>
barplot()함수에서 범례의 내용을 정하는 매개변수는 legend.text이다. 이 값을 TRUE of FALSE로 설정하면 그래프를 그릴 대상 데이터 행 이름이 자동적으로 표시된다. 
<br>
legend.text=c(), 기존에 있던 legend.text=T 없앰 barplot(ds, main ='인구추정',col = rainbow(3),args.legend = list(x='topright',bty='o',inset=c(0.25,0)),legend.text=c('0-14','15-64','65~'))<br>
par(mfrow=c(1,1), mar=c(5,5,5,7)) <br>
barplot (ds,main='인구추정', <br>
col=c('green','blue','yellow'),<br>
beside=TRUE ,<br>
legend.text= c('0-14','15-65','65-') <br> #직접 추가할 내용을 입력
args.legend = list(x = 'topright',bty='n', inset =c(-0.24,0)) <br>
par (mfrow=c(1,1),mar=c(5,4,4,3)+0.1)  #그래프창 설정 해제 <br>
)
<br><br>
<h3>히스토그램을 작성해 봅시다 303p</h3>
외관상 막대 그래프와 비슷한 그래프로, 그루빙 명시적으로 존재하지 않는 수치형 자료의 분포를 시각화 할 때 사용된다.
<br>
 head(cars) <br>
dist <- cars[,2]   #자동차 재동 거리<br>
dist<br>
hist(dist, #데이터<br>
 main = 'Histogram for 제동거리 ', #제목<br>
  xlab = '제동거리', #x축 레이블 <br>
  ylab = '빈도수', #y 축 레이블 <br>
  border='blue', #막대 테두리 색 <br>
  col='green', #막대색 <br>
  las=2, #x축 글씨 방향 <br>
  breaks=2) # 막대 개수 조절 <br>
<br>
#305p 히스토그램은 막대의 면적이 의미가 있다.
<br> 히스토그램에서 구간별 빈도수를 도수분포표 형태로 알아볼 수 있는 방법이 있다. <br>
result <- hist(dist, #data<br>
main='Histogram for 제동거리', #제목 <br>
breaks = 5)  #막대 개수 조절 <br>
result <br>
freq <-result$counts #구간별 빈도수 저장 <br>
names(freq) <-result$breaks [-1] #구간별 빈도수 출력 <br>
freq #구간별 빈도수 출력<br>
<br>
<h3>다중 그래프 310p</h3> <br>
매개변수 mar는 같이 그래프가 출력되는 영역 밖의 여유 공간을 지정하는데, 분할된 화면에 각각 적용된다. <br>
par(mfrow=c(2,2), mar=c(3,3,4,2)) #화면 분할<br>

hist(iris$Sepal.Length, main='Sepal.Length',col='orange') #그래프1 <br>

barplot(table(mtcars$cy),main='mtcars', col=c('red','blue','gray')) #그래프 2<br>

pie (table(mtcars$cyl),main='mtcars',col=topo.colors(3),radius = 2) #topo팔레트 사용 <br>
 <br> 
par(mfrow=c(1,1),mar=c(5,4,4,2)+.1) #분할 취소 <br>
#그래프 줌 -- save as 클릭 후 확장자 설정or Export<br>

#종업원 팁 정보 var(res, main='식사시간팁', col=c('gray','gray23'), legend.text =c('lunch','dinner') ) <br>

#par(mfrow=c(1,1) ) 해제 #이번주 :barplot,par,hist
<br>
<h3> 원그래프와 선그래프를 작성 328 </h3>  <br>
pie( ) pie(ds,main = '선호계절', radius=1) #원그래프 작성 <br>
<br>
#plotrix() 3D함수 330p <br>
 install.packages('plotrix') <br>
  library(plotrix) <br>
  pie3D(ds,main = '선호계절', radius=1) #그래프간 간격explode <br>
  pie3D(ds,main = '선호계절', radius=1,explode = 0.1) <br>
<br>
선그래프 331p
month =1:12 #데이터입력 <br>
late = c(3,5,2,6,4,3,7,34,7,5,22,11,)#데이터 입력<br>
plot(month, #x데이터 <br> 
late, #y데이터 <br>
main='지각 통계', #제목<br>
type='1', #그래프의 종류 선택 (알파벳) <br>
 lty=1, #선의 종류(line type)선택 <br> 
 lwd=1, # 선의 굵기 선택 <br>
 xlab='month', #x축 레이블 <br>
 ylab='late cnt' )  #y축 레이블 <br>
 #332
</h4>
</h4>

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
