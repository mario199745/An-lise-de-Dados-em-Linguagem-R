#--------------------2.9 Utilizando funciones apply -----------------

#¿Que son las funciones apply?

#Aplica una funcion a traves de una matriz, array o data frame. 

#Mas informacion: 
#https://bookdown.org/jboscomendoza/r-principiantes4/apply.html


#Apply()


x <- seq(1:9)
x

matriz <- matrix(x, ncol = 3)
matriz

result1 <- apply(matriz, 1, sum)
result1

result2 <- apply(matriz, 2, sum)
result2




numeros.p <- c(2,4,6,8,10,12)
numeros.i <- c(1,3,5,7,9,11)
numeros <- list(numeros.p,numeros.i)

numeros

numeros[[2]]



lapply(numeros, mean)


?sapply
sapply(numeros, mean)


library(dplyr)