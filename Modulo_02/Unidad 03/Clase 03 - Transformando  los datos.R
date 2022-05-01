#----------------------- 3.3 Transformando los datos -------------


#Tidyr
#Ayuda a crear datos ordenados


#Recuerda instalar el paquete 

#install.packages("tidyr")
library(tidyr)


#Cantidades de ventas por año y producto 

#Dataframe - Cantidades de productos por ano 

dfDate <- data.frame(Producto = c('A','B','C'),
                     A.2015 = c(10,12,20),
                     A.2016 = c(20,25,35),
                     A.2017 = c(15,20,30)
)

head(dfDate)


#Utilizando la funcion gather para cambiar el formato de la tabla 
#En este caso cambiando el nombre de los encabezados de las columnas 


dfDate2 <- gather(dfDate, "Ano", "Cantidad", 2:4)
head(dfDate2)


#separate 


#Creando una nueva columna para separar los datos 
#En este caso se ha creado la columna A

dfDate3 <- separate(dfDate2, Ano, c("A", "Ano"))
dfDate3

#Removiendo la columna

dfDate3 <- dfDate3[-2]
dfDate3

#Incrementando una columna mas, en este caso 

dfDate3$Mes <- c('01','02','03')

dfDate3

#unite 

#Realizando la union de la columna ano y mes en una nueva con unite separado por /

dfDate3 <- separate(dfDate2, Ano, c("Producto", "Ano"))
dfDate3

dfDate4 <- dfDate3 %>%
  unite(Producto,col='pro-ano', Ano, sep = '/')

head(dfDate4)

# Tips: unite puede ser de utilidad para concatenar fechas dia, mes y ano


