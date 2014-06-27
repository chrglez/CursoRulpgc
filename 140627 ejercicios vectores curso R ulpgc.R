x<-c(1,2,3,4,5)
x<-1:5
x<-seq(1,5)
x<-seq_len(5)
#Problema 2
y<-c(1,5,9,13,17)
y<-seq(1,17,4)
#Problema 3
#3a
x<-c(8,7,6,5)
x<-seq(8,5,-1)
#3b
y<- c(3, 3, 3, 3, 3, 3, 3, 3, 2, 2)
y<- rep(c(3,2),c(8,2))
#3c
z <- c(1, 1.75, 2.5, 3.25, 4)
z <- seq(1,4,0.75)
#Problema 4
chica<-c("Ana","Maria","Natalia","Almudena")
#4a
class(chica)
#[1] "character"
#4b
nletras<-nchar(chica)
#4c
mchicas<-toupper(chica)
#4d
ncomp<-c(paste(chica[c(1,3)],collapse=" "),paste(chica[c(2,4)],collapse=" "))
#equivqlente
ncomp<-paste(chica[c(1,2)],chica[c(3,4)])
#Problema 5
x <- c(2, 5, 4, 6, 2, 8)
#5a
x[x>0]
#[1] 2 4 6 8
#5b
x[x<0]
#[1] -5 -2
#5c
x[-1]
#[1] -5  4  6 -2  8
#5d
x[seq(1,5,2)]
#[1]  2  4 -2
#Problema 6
x <- c(1, 2, 3, 4, 5, 6)
y <- c(7, 8)
z <- c(9, 10, 11, 12)
#6a
x+x
# [1]  2  4  6  8 10 12
#6b
x+y
#[1]  8 10 10 12 12 14
x+z
#[1] 10 12 14 16 14 16
#Warning message:
#  In x + z : longer object length is not a multiple of shorter object length
#Problema 7
x <- c(1,3,5,7,9)
y <- c(2,3,5,7,11,13)
#7a
x+1
#[1]  2  4  6  8 10
#7b
y*2
#[1]  4  6 10 14 22 26
#7c
length(x)
#[1] 5
length(y)
#[1] 6
#7d
x+y
#[1]  3  6 10 14 20 14
#Warning message:
#  In x + y : longer object length is not a multiple of shorter object length
#7e
sum(x>5)
#[1] 2
sum(x[x>5])
#[1] 16
#7f
sum(x>5 | x< 3)
#[1] 3
#7g
y[3]
#[1] 5
y[-3]
#[1]  2  3  7 11 13
#7h
y[x]
#[1]  2  5 11 NA NA
#7i
y[y>=7]
#[1]  7 11 13
#Problema 8
x <-c(1, 8, 2, 6, 3, 8, 5, 5, 5, 5)
#8a
sum(x)/10
#[1] 4.8
#8b
log10(x)
#[1] 0.0000000 0.9030900 0.3010300 0.7781513 0.4771213
#[6] 0.9030900 0.6989700 0.6989700 0.6989700 0.6989700
#8c
(x-4.4)/2.875
#[1] -1.1826087  1.2521739 -0.8347826  0.5565217
#[5] -0.4869565  1.2521739  0.2086957  0.2086957
#[9]  0.2086957  0.2086957
#8d
diff(range(x))
#[1] 7
#8e
(x-mean(x))/sd(x)
#[1] -1.65234745  1.39145049 -1.21751917  0.52179393
#[5] -0.78269090  1.39145049  0.08696566  0.08696566
#[9]  0.08696566  0.08696566
#8f
scale(x)
#[,1]
#[1,] -1.65234745
#[2,]  1.39145049
#[3,] -1.21751917
#[4,]  0.52179393
#[5,] -0.78269090
#[6,]  1.39145049
#[7,]  0.08696566
#[8,]  0.08696566
#[9,]  0.08696566
#[10,]  0.08696566
#attr(,"scaled:center")
#[1] 4.8
#attr(,"scaled:scale")
#[1] 2.299758
#Problema 9
x<-c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
#9a
entr<-diff(x)
#[1] 313 284 311 280 322 324 302
#9b
max(entr)
#[1] 324
mean(entr)
#[1] 305.1429
#Problema 10
#10a
x<-rnorm(100,mean=10,sd=2)
#10b
y<-rnorm(100,mean=9,sd=4)
#10c
matrix(c(min(x),min(y),mean(x),mean(y),max(x),max(y)),2,3)
#[,1]      [,2]     [,3]
#[1,]  4.5316421 10.308327 14.95669
#[2,] -0.4780693  9.331416 19.82787
#10d
t.test(x,y)

#Welch Two Sample t-test

#data:  x and y
#t = 2.1307, df = 139.385, p-value = 0.03487
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
#  0.0704177 1.8834044
#sample estimates:
#  mean of x mean of y 
#10.308327  9.331416 
#10e
for (i in 1:10)
{
  x<-rnorm(100,mean=10,sd=2)
  y<-rnorm(100,mean=9,sd=4)
  matrix(c(min(x),min(y),mean(x),mean(y),max(x),max(y)),2,3)
  t.test(x,y)
}
