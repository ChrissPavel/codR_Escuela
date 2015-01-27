##Manipulaciones básicas
##Si queremos correr cualquier linea en la consola: Ctrl + r

sin(pi/2)

Inf + 1

"Hola R"

exp(pi*1i)

cos(6+7i)

sin(pi/2)==1


##Ayuda sobre cualquier función mediante
?sin
help(sin)
## ?? busca en las ayuda la palabra que le sigue
??anova

c(2,3,4,5,6,7,8,9,10)

2:10

seq(-10,10,by=pi)


x1<-seq(1,20,2)
x1

c(2,"Hola",3,"mundo")->x2 #Asignación en el otro sentido
x2

rep()
?rep
rep(1:4, each = 2, len = 10)

#atributos.
#names, dimnames dimensions (e.g. matrices, arrays) class length other user-defined attributes/metadata


#Varias funciones útiles


runif(100)
rnorm(100)
rpois(100,0.9)

?Distribution
set.seed(5)
x<-rnorm(100,200,46)


head(x)
tail(x)
sum(x) 
max(x) 
min(x) 
which.max(x) 
which.min(x) 
range(x) 
length(x) 
mean(x) 
median(x)

mode(x)#no es la moda ojo

sd(x)
var(x)
quantile(x)
scale(x)

mean(scale(x))
var(scale(x))

y<-c(7,6,9)
rbind(y,y)
cbind(y,y)

sample()

sample(1:10,9)
sample(1:10,19)
sample(1:10,19,rep=T)

9:3 %in% c(1,3,5,9)

match(9:3,c(1,3,5,9))


which(9:3 %in% c(3,2,1,5,9)==TRUE)


set.seed(5)
x<-sample(2:9,16,replace=T)

x

sort(x)
rev(x)
log(x,10)
exp(x)
sqrt(x)
abs(x)
round(4.1365,2)
cumsum(1:10)
sum(1:10)
cumprod(1:10)

y

union(x,y)
intersect(x,y)
setdiff(x,y)
is.element(x,y)




###Matrices

Y<-matrix(x,byrow=T,nrow=4)

Y

matrix(x,byrow=T,nrow=4,ncol=2)

Y[2,]

Y[,4]

t(Y)

set.seed(49)
x1<-sample(1:4,replace=T,9)
x1

diag(c(1,2,3),3,3)

diag(c(7,2),5,5)

diag(c(7,2),5,3)


matrix(x1,3,3)

A<-matrix(sample(c(1,3,7,12),replace=T,9),4,4)
B<-matrix(sample(c(0,1),replace=T,9),4,4)
A
B

#nrow(A)
#ncol(A)

A*B
A%*%B
B%*%A
b<-c(1,2,3,5)

solve(A,b) 


solve(A)%*%A 


###Listas
a<-sample(1:9,replace=T,10)
b<-letters
c<-diag(rep(1,3))
d<-list(a,b,c)
d
d[1]

d[[1]]

d[[3]][3,3]


#Data frames (es una lista)

data()

head(mtcars)
mtcars[1:6,]
names(mtcars)

mtcars[,"mpg"]
mtcars[,1]


attach(mtcars)

mpg

mtcars[cyl==8,]

mtcars[cyl==8 & gear==3,]
mtcars[disp>300 & wt>5, ]

mtcars[disp>300 | wt>5, ]

rownames(mtcars)

grep("Merc", rownames(mtcars))

mtcars[grep("Merc", rownames(mtcars)),]

library()#describe las librerias disponibles
search()#lista de paquetes con attach
data()#archivo con bases de datos disponibles 
ls()#lista de  objetos


########
#Bonus :) función para calcular la moda

moda<-function(x){
dato<-as.data.frame(table(x))
resultado<-dato[which(dato$Freq==max(dato$Freq)),1]
return(resultado)
}
