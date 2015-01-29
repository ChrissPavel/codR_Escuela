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

#Repaso última clase
#crear un vector x1 que tenga como elementos las cadenas "Hola R"  "R user" "2 Escuela R"
x1<-c( "Hola R" , "R user", "2 Escuela R")
#crear un vector x2 de números 9 números aleatorios de números enteros del 100 al 150
#utilizar una semilla igual a 235
set.seed(235)
x2<-sample(100:150, 9, replace=TRUE)

#crear una matriz A de orden 3,4 con los valores de x2, llenados por filas 
A<-matrix(x1,3,4,byrow=TRUE)

#[ always returns an object of the same class as the original; can be used to select more than one
#element (there is one exception)
#[[ is used to extract elements of a list or a data frame; it can only be used to extract a single
#element and the class of the returned object will not necessarily be a list or data frame
#$ is used to extract elements of a list or data frame by name

d<-list(x1,x2,A)
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

#sample factors
#complete.cases()
#mydata$logsize <- log(mydata$size.mm) modifying columns of dataframe
#remove rows or cols with -c(2,4) assigning NULL
#function subst
#newdata <- subset(mydata, sex == "f" & size.mm > 25, select = c(site,id,weight))
#Factors are used to represent categorical data. Factors can be unordered or ordered. One can think
#of a factor as an integer vector where each integer has a label.
#Factors are treated specially by modelling functions like lm() and glm()
#Using factors with labels is better than using integers because factors are self-describing; having
#a variable that has values “Male” and “Female” is better than a variable that has values 1 and 2




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


