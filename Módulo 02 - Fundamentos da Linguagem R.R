
#https://mooc38.escolavirtual.gov.br/course/view.php?id=4080

#----------------2.1. Creando tu primer script -----------------------


#Imprimiendo el primer mensaje 

mensaje <- 'hola como estas'


#Imprimiendo el valor de la variable en la consola 

print(mensaje)

# Creando el primer script 



#-----------2.2 Comentando su codigo---------------------

#Esto es un comentario 


#Los comentarios pueden ser utilizados para ayudar a otros programadores a entender su codigo 

#Para comentar es suficiente insertar el caracter # al inicio de la linea 
#con eso el interpretador de lenguaje R ignora lo que se encuentra digitado en la linea 
#caso contrario puede mostrar un mensaje de error



# No olvide comentar su codigo !


#---------------2.3 Documentacion de la funcion----------------

#Acessando a la documentacion de la funcion adicionando el signo de interrogacion (?) al frente de la funcion 

#Ejemplo: consultando la documentación de la funcion print 


?print

#El resultado aparece en la ventana help 

#Visualizando la documentación de otras funciones 

?str
?getwd
?mean
?sd
?sum
?seq



#-----------------2.4 Instalacion de paquetes--------------------

#Instalanddo un nuevo paquete 

#Instalando el paquete ggplot2
#install.packages("ggplot2")

#Cargando el paquete ggplot2
#library(ggplot2)

#ggplot es un paquete de visualizacion de datos utilizado para la creacion de graficos 
?ggplot2


#Si deseas aprender más de ggplot puedes revisar los siguientes enlaces: 

#Visualizacion de datos en ggplot - Autor: Rverso 
#https://www.youtube.com/watch?v=o6ab2qFDzB0

#Aja pero no es el unico paquete que puede ser de utilidad para desarrollar gráficos. 

#tmap: Mapas en R
#https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html

#gganimate: Graficos animados 
#https://gganimate.com/

#-----------------------2.5 Estructura de datos---------------------------

########################## VECTORES 

#Almacena un conjunto de valores ordenados llamados de elementos. Todos los elementos de un vector deben ser del mismo tipo. 


#Creando un vector 
?c()

ciudades <-c("Brasilia","Sao Paulo", "Rio de Janeiro","Porto Alegre")

#Visualizando los datos de un vector 

ciudades

#creando nuevos vectores 

temperatura <- c(32,22,35,17)

region <- c(1,2,2,3)

#Animate a crear mas vectores............


#¿Como puedo acceder al primer elemento del vector ciudades?
ciudades[1]
#¿Como puedo acceder al tercer elemento del vector temperatura?
temperatura[3]
#¿Como puedo acceder al cuarto elemento del vector region?
region[4]

#Ahora si deseo acceder a un intervalo de elementos

temperatura[1:3]


#Copiando el contenido de un vector 



ciudades2 <- ciudades

ciudades2


#Excluyendo al segundo elemento de la consulta pero primero revisemos el contenido original 
#y visualizemos la diferencia 
temperatura 
temperatura[-2]#Se debería excluir el numero 22, ¿no es cierto?

#Modificando un vector 

ciudades2#Ahora deseo cambiar a Rio de Janeiro por Belo Horizonte 

ciudades2[3] <- "Belo Horizonte"
ciudades2

#Adicionando un nuevo elemento al vector 

ciudades2[5] <- "Curitiba"
ciudades2 

#Borrando un vector 

ciudades2 <- NULL
ciudades2

########################## FACTORES 


#Almacena valores categoricos(nominal  u ordinal)

#Datos por niveles 




UF <- factor(c("DF", "SP", "RJ", "RS"))
UF


grado.instruccion <- factor(c("Excelente",
                           "Superior",
                           "Nivel Medio",
                           "Fundamental"),
                         levels = c("Fundamental",
                                    "Nivel Medio",
                                    "Superior",
                                    "Excelente"),
                         ordered = TRUE)

grado.instruccion

#¿Que aplicaciones tienen los factores?
#¿Que son los datos categoricos?
#Aqui puedes encontrar las respuestas.................

#R para ciencia de datos 
#https://es.r4ds.hadley.nz/factores.html

########################## LISTAS

#Son un tipo especial de vector porque a diferencia de las mismas es posible adicionar elementos de DIFERENTES TIPOS.  


persona <- list(sexo = "M", ciudad = "Brasilia", edad = 20)


#Accediendo al primer elemento de la lista

persona[1]
persona[3]


#Editando la lista en este caso de persona 

persona[["edad"]] <- 24
persona

#Borrando un elemento de la lista en este caso de ciudad 

persona[["ciudad"]] <- NULL
persona

#Creando una nueva lista 

persona <- list(sexo = "M", ciudad = "Brasilia", edad = 20)

#Filtrando elementos de la lista 

persona[c("ciudad", "edad")]

#Lista de listas
listad <- list(cda = ciudades, tra = temperatura, rgn = region)
listad

#Animate a crear una lista!!!!!!!


########################## DATAFRAME

#Creando un dataframe con vectores 

#Dataframe: utilizado para organizar elementos en lineas y columnas, semejante a una planilla o base de datos. También pueden ser formados por listas y vectores. 

df <- data.frame(ciudades,temperatura)
df

df2 <- data.frame(ciudades)
df2

#Filtrando valores del dataframe
#Visualizando el valor de la fila 1 y columna 2
df[1,2]

#Visualizando los valores de la primera columna 
df[, 1]

#Visualizando la primera fila y todas las columnas
df[1,]


#Visualizando el nombre de las columnas 

names(df)

#Visualizando las dimensiones de filas y columnas 

dim(df)

#Visualizando los tipos de datos 

str(df)


#Accediendo a la columna de un dataframe

df$ciudades

#Visualizando una columna 


df['ciudades']



########################## MATRICES

#Matrices
#Almacena datos tabulares semejante a un dataframe pero solo acepta un tipo de dato 


#Creando una matriz 

m <- matrix(seq(1:9), nrow = 3)
m

#Ahora creamos una nueva matriz 

m2 <- matrix(seq(1:25), 
             ncol = 5,
             byrow = TRUE,
             dimnames = list(c(seq(1:5)),
                             c('A','B','C','D','E'))
)

m2

#Filtrando una matriz 

m2[c(1:2), c("B","C")]


#---------------------2.6 Estructuras de repeticion----------------

#Loops

#For

# for (valor in secuencia){
#   codigo...
# }



#Ejemplo for

#El siguiente codigo permite imprimir una secuencia de numeros desde el 1 a 12 
for (i in seq(12)){
  print(i)
}


#While

# while(condicion){
#   codigo...
# }


#Exemplo while

#El siguiente codigo permite imprimir una secuencia de numeros desde el 1 a 10
i <- 0
while(i <= 10){
  print(i)
  i = i+1
}



#----------------2.7 Control de flujo (condicionales)----------

#Control de flujo 

# if(condi??o){}
#   c?digo...
# }


#Ejemplo - Control de flujo 

#Si x es mayor a cero entonces imprimir "Numero positivo"

x = 10
if (x > 0){
  print("Numero Positivo")
}


#Evaluar la nota e indicar la categoria a la cual corresponde 

nota = 4
if (nota >=7){
  print("Aprovado")
}else if (nota > 5 && nota < 7){
  print("Recuperacion")
}else{
  print("Reprovado")
}


# Ahora animate a crear algunos codigos que puedan resolver los siguientes casos

# 1. Categorizar objetos si estos pesan más de 25 kg entonces corresponden a grandes si es menor entonces son pequenos

# 2. En un colegio los alumnos mayores a 12 anos deben estar en el salon A y los menores en el salon B, pero si son mayores de 15
#   estaran en el salon C. 





#---------------2.8 Creando funciones----------------



#Estructura de una funcion 



# nombre de la funcion <- funcion(argumento){
#   codigo
# }

#Creando una funcion 
#La funcion permitira determinar si un numero es par o impar 

par.impar <- function(num){
  if((num %% 2) == 0){
    return("Par")
  }else
    return("impar")
}


#Aplicando la funcion 


num = 3
par.impar(num)




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

#---------------- 2.10 Creando graficos ------------


#Los graficos son esenciales para reprentar los resultados de tus analisis 
#incluso pueden crarse graficos animados pero para ello nececitas contar con una  base de datos 
#entonces utilizaremos la base de datos mtcar, la cual es de acceso libre. 


#Graficos

#dataset/conjunto de datos

?mtcars

#Filtrando columnas del dataset

carros <- mtcars[,c(1,2,9)]

#Visualizando el dataset 

head(carros)

#Ahora vas a crear tu primer grafico!!!!!!!!



#Histograma

hist(carros$mpg)

#Grafico de dispersion 

plot(carros$mpg,carros$cyl)



#Creando graficos con ggplot 
#¿Porque utilizar ggplot?
#Permitira crear graficos mas esteticos que mejoraran la visualizacion y analisis de tus datos 



#install.packages("ggplot2")

library(ggplot2)

#Criando grafico de barras con ggplot2

ggplot(carros,aes(am))+
  geom_bar()

#¿Visualizas la diferencia?
#Quizas no, pero aquí puedes encontrar mas graficos ademas es recomendable tener a la mano el 
#cheat sheet de ggplot, ya que puedes incorporar mas parametros si deseas mejorar la visualizacion. 

#Data Visualization with ggplot2 : : CHEAT SHEET!!!!!!!!
#https://www.maths.usyd.edu.au/u/UG/SM/STAT3022/r/current/Misc/data-visualization-2.1.pdf


# Graficando un diagrama de dispersion 

ggplot(mtcars,aes(x = mpg, y = hp))+geom_point(aes(color=factor(cyl), shape = factor(cyl),size = factor(cyl)))+ theme_classic()+
  labs(title = "Scatterplot - MPG Vs HP",
       subtitle = "Scatterplot showing Negative Correlation",
       x = "Miles Per Gallon",
       y = "Horsepower",
       caption = "Source: MTCARS Dataset")
#Fuente: https://medium.com/@mukul.mschauhan/data-visualization-in-r-with-ggplot-b39b14991d69



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




