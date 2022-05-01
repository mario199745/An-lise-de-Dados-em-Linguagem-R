#-----------------------3.1. Utilizando join ----------------------


#Join

#Instalando un paquete

#install.packages("dplyr")
library(dplyr)


df1 <- data.frame(Producto = c(1,2,3,5), Precio = c(15,10,25,20))

head(df1)

df2 <- data.frame(Producto = c(1,2,3,5), Nombre = c("A","B","C","D"))
head(df2)


#Resultado de join df1 + df2 usando ---> left join 

df3 <- left_join(df1,df2,"Producto")
head(df3)


#Resultado de join  df1 + df2 usando ---> right join

df4 <- right_join(df1,df2, "Producto")
head(df4)

#Resultado de join  df1 + df2 usando ---> inner join

df5 <- inner_join(df1, df2, "Producto")
head(df5)


#Aqui puedes encontrar mas codigos 
#https://www.datasciencemadesimple.com/join-in-r-merge-in-r/#:~:text=Right%20join%20in%20R%3A%20merge,keys%20from%20the%20left%20table.

#La columna a unirse puede ser diferente en consecuencia con el mismo nombre de la columna 
#pero con elementos diferentes left_join y rigth_join determinan la predominancia de la columna 
#ya sea de df1 o df2. 

