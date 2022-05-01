#---------------------- 3.2 Selecionando los datos  ------------
#install.packages("dplyr")
library(dplyr)

#¿Quieres saber lo que es IRIS?

? iris

#Explora la base de datos iris ....
#Recuerda que puedes utilizar 
#head()- Muestra las primeras filas de la tabla 
#tail()- Muestra las dos ultima filas de la tabla 
#names() - Muestra los encabezados de las columnas 
#print() - Muestra la tabla completa en la consola 

View(iris)

#dataset iris

head(iris)

#Aja!!! si deseas visualizar tu tabla de formas mas optima puedes utilizar: 
View(iris)

#Visualizando los tipos de datos com glimpse
glimpse(iris)

#glimpse: Permite visualizar los encabezados en una columna junto a algunos de los datos que contiene

#https://www.r-bloggers.com/2020/05/examining-data-with-glimpse/

#Filter - filtrando los datos para la especie versicolor 

versicolor <- filter(iris, Species == "versicolor")
versicolor

#También puedes filtrar para otras especies y analizar los resultados 

#Virginica
#Setosa


#Visualizando las dimensiones 
dim(versicolor)

#Slice - Selecionando algunas lineas especificas 

slice(iris, 5:10)

#Select - selecionando algunas columnas 

select(iris, 2:4)

#Selecionando todas las colunas excepto Sepal width

select(iris, -Sepal.Width)

#Creando una nueva columna con en columnas existentes (Sepal.Length + Sepal.Width)
iris2 <- mutate(iris, nova.coluna = Sepal.Length + Sepal.Width)
iris2[,c("Sepal.Length", "Sepal.Width", "nova.coluna")]


#Arrange - ordenar los datos 

select(iris, Sepal.Length) %>%
  arrange(Sepal.Length)


#Group by

#Agrupando los datos segun la media por cada especie 

iris %>% group_by(Species) %>%
  summarise(mean(Sepal.Length))