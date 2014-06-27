x<-seq(1,6)
m1<-matrix(x,2,3)
m2<-matrix(x,3,2)
m3<-matrix(x,2,3,byrow=TRUE)
m4<-matrix(x,3,3)
#Problema 2
matrix(1:6,nrow=2)
matrix(1:6,nrow=4)
#Lo hace pero genera warning
matrix(1:6,nrow=4,ncol=4)
#Lo hace pero genera warning
A<-matrix(1:4,nrow=2)
B<-matrix(c(3,8))
A*B
#Error
A%*%B
#[,1]
#[1,]   27
#[2,]   38
#Problema 3
mi.matriz<-matrix(rnorm(100),20,10)
mi.matriz[5,3]
mi.matriz[5,]
mi.matriz[,2]
mi.matriz[,1:5]
submatriz<-mi.matriz[2:8,3:9]
det(submatriz)
solve(submatriz)
mi.matriz[c(1,2,4,6),seq(3,7,2)]
#problema 4
for (i in 2:10)
  print(A%^%i)
#Problema 5
coef<-matrix(c(1,2,1,1,1,-3,-2,0,1,0,1,2,0,0,-4,0),4)
solve(coef,c(10,-5,13,3))
#Problema 6
eigen(coef)$val
eigen(coef)$vec
#Problema 7
X1=c(5, 5, 3, 6, 5, 6, 5, 6, 5, 5)
X2=c(8, 6, 10, 12, 6, 11, 8, 8, 11, 9)
X3=c(13, 10, 14, 11, 12, 12, 10, 13, 12, 11)
Y=c(21, 18, 22, 37, 16, 33, 24, 23, 31, 26)
#7a
X<-cbind(rep(1,10),X1,X2,X3)
#7b
matriz.xpx<-t(X)%*%X
#7c
solve(matriz.xpx)
#7d
beta.est<-solve(matriz.xpx)%*%t(X)%*%Y