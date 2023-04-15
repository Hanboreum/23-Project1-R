sales <- c(1,2,3,4,5)
names(sales) <-c('s1','s2','s3','s4','s5')
sales[1]
sales['s3']
sales [c('s1','s2')]
sales[c(1,2)]

sales[2] <- c(10)
sales
sales <- c(43,65,345,23)
names( sales) <- c('s','a','l','e')
sales [c('s')]
sales[2]
sort (sales)
sort (sales, decreasing = FALSE)
sort (sales , decreasing = TRUE)
d <-c(5,3,2,1,9)
2*d
d<- d*2
d
a <- c(4,6,3,4,7)
a+d
z <- a+d
z <- c(a,d)
z
n <- c(d,a)
n
f <- c(a,d,222,333)
f
b <- c(3434,25225,f,n)
b
sum(b)
mean(d[1:5])
mean(d)
median(b)
max(b)
min(b)
var(b)
sd(b)
sort (d, decreasing = FALSE)
range(b)
length(b)
d >= 10
d[d>5]
sum (d>5) # 갯수
sum(d[d>5]) # 합
d[d>5]
mean(d)
ess <- c(5,2,3,5,2)
am <- c(9,9,9,9,5)
latte <- c(8,6,5,8,6)
sale.ess <-ess *2
sale.am <- am *2
sale.latte <-latte *2
sale.day <-sale.ess+sale.am+sale.latte# saleday에 총 판매액을 넣는다
names(sale.day) <-c('m','tu','w','th','f') # saleday에 이름을 붙여요
sum(sale.day) #총 매출액액
sale.mean <- mean(sale.day) # 평균 매출액액
names (sale.day [sale.day >= sale.mean]) # 매출이 평균 이상인 것 출력
names (sale.day [sale.day <=sale.mean])
min(sale.day)
max(sale.day)]
mean(sale.day)
sale.day
bt <- c('a','b','b','o','ab','o')
bt.new <- factor (bt)
bt.new
bt
bt[3]
bt.new[3]
levels(bt.new)
levels(bt)
as.integer(bt.new)
bt.new[7] <-'a'
bt.new
bt.new [6]
bt.new[10]<-'o'
bt.new
h.list <-c('climbing','read','watch')
person <-list(name='Han',age='22',student=TRUE, hobby=h.list)
person
person[1]
person$name
person [[1]]
person[2] # 뭐가 다른거지
person[[2]] # 뭐가 다른거지
oneday = list(class='sun',day = c('mon','fri','sun'), price=60000, parking =TRUE)
oneday
oneday[2]
oneday$price

cafe <- list (ess = c(1,5,3), am = c(7,5,8), latte = c(5,7,6), menu = c('ess','am','latte'))
cafe$menu <- factor(cafe$menu)

z <- matrix(1:20, nrow=4,ncol=5)
z
rm(z)
z <- matrix(1:20, nrow = 10, ncol=2)
z
 x<- 1:4
y <- 5:8 
m1 <- cbind(x,y)
m2 <- rbind (x,y)
m2
m3 <- cbind (m1, x)
m3
m4 <- rbind(m2,y)
z[2]
z[2,3]
z[1,2]
z[1,]
z[,2]
z[7,1]
z[2,1:2]
z[1, 1:2]
z[1,c(1)]
z[2,c(2)]
z[7,1]
z[10,2]
z[3,1]
z[6,2]
z[1:2,]
z[c(1,4)]
rm (z)
z <- matrix( 1:20, nrow = 5, ncol=4)
z
s <- matrix(1:20, nrow =4, ncol=5)
s
x <-1:4
y <- 5:8
z <- matrix(1:20, nrow =4, ncol=5)
z
m1 <-cbind (x,y)
m1
m2 -rbind(x,y)
m2
m3 <-rbind (m2,y)
m3
z[2,3]
z[4,5]
z[3,]
z[,5]
z[2,]
z
z[,2]
z[2,1:3]
z[1,c(4,5)]
z[4,c(4,5)]
z[,c(1,4)]
z[1,2]
z[2,]
z[,4]
z[c(1,3),3:4]
z[c(1,3),c(3,4)]
z
getwd()
setwd('C:\Han\23-Project1-R')
air <-read.csv('airquality.csv',header=T)
