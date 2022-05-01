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
