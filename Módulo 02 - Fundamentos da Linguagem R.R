
#https://mooc38.escolavirtual.gov.br/course/view.php?id=4080

#----------------2.1. Creando tu primer script -----------------------


#Imprimiendo el primer mensaje 

mensaje <- "Hello world!"

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
#Aquí puedes encontrar las respuestas.................

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

#Matrizes
#Armazena dados tabulares semelhante ao data frame, por?m s? aceita um tipo de dado.

#Criando uma matriz
m <- matrix(seq(1:9), nrow = 3)
m

m2 <- matrix(seq(1:25), 
             ncol = 5,
             byrow = TRUE,
             dimnames = list(c(seq(1:5)),
                             c('A','B','C','D','E'))
)
m2

#Filtrando a matriz
m2[c(1:2), c("B","C")]


#---------------------2.6 Estruturas de repeti??o-----------------
#Loops

#For

# for (valor in sequencia){
#   c?digo...
# }

?seq

#Exemplo for
for (i in seq(12)){
  print(i)
}


#While

# while(condi??o){
#   c?digo...
# }


#Exemplo while

i <- 0
while(i <= 10){
  print(i)
  i = i+1
}



#----------------2.7 Controle de fluxo----------

#Controle de fluxo

# if(condi??o){}
#   c?digo...
# }


#Exemplo - Controle de fluxo

x = 10
if (x > 0){
  print("N?mero Positivo")
}


nota = 4
if (nota >=7){
  print("Aprovado")
}else if (nota > 5 && nota < 7){
  print("Recupera??o")
}else{
  print("Reprovado")
}


#---------------2.8 Criando fun??es----------------

#Estrutura da fun??o

# nome.funcao <- function(argumento){
#   c?digo
# }


#Criando a fun??o
par.impar <- function(num){
  if((num %% 2) == 0){
    return("Par")
  }else
    return("?mpar")
}

#Usando a fun??o
num = 3
par.impar(num)




#--------------------2.9 Utilizando fun??es apply-----------------


#Apply()
?apply

x <- seq(1:9)
x

matriz <- matrix(x, ncol = 3)
matriz

result1 <- apply(matriz, 1, sum)
result1

result2 <- apply(matriz, 2, sum)
result2



?list

numeros.p <- c(2,4,6,8,10,12)
numeros.i <- c(1,3,5,7,9,11)
numeros <- list(numeros.p,numeros.i)

numeros

numeros[[2]]


?lapply

lapply(numeros, mean)


?sapply
sapply(numeros, mean)


library(dplyr)

#---------------- 2.10 Criando gr?ficos ------------


#Graficos

#dataset/conjunto de dados
?mtcars

#Filtrando colunas do dataset
carros <- mtcars[,c(1,2,9)]

#Visualizando o dataset
head(carros)

#Histograma
hist(carros$mpg)

#Gr?fico de dispers?o
plot(carros$mpg,carros$cyl)

#install.packages("ggplot2")
library(ggplot2)

#Criando gr?fico de barras com ggplot2
ggplot(carros,aes(am))+
  geom_bar()



#-----------------------3.1. Utilizando jun??es----------------------


#Join

#Instalando e carregando o pacote
#install.packages("dplyr")
library(dplyr)

??dplyr
?data.frame

df1 <- data.frame(Produto = c(1,2,3,5), Preco = c(15,10,25,20))
head(df1)

df2 <- data.frame(Produto = c(1,2,3,4), Nome = c("A","B","C","D"))
head(df2)

#Resultado da jun??o df1 + df2 usando left join
df3 <- left_join(df1,df2,"Produto")
head(df3)

#Resultado da jun??o df1 + df2 usando right join
df4 <- right_join(df1,df2, "Produto")
head(df4)

#Resultado da jun??o df1 + df2 usando inner join
df5 <- inner_join(df1, df2, "Produto")
head(df5)






#---------------------- 3.2 Selecionando os dados ------------
#install.packages("dplyr")
library(dplyr)

? iris

#dataset iris
head(iris)

#Visualizando o tipo dos dados com glimpse
glimpse(iris)


#Filter - filtrando os dados - apenas versicolor
versicolor <- filter(iris, Species == "versicolor")
versicolor
dim(versicolor)

#Slice - Selecionando algumas linhas especificas
slice(iris, 5:10)

#Select - selecionando algumas colunas
select(iris, 2:4)

#Selecionando todas as colunas exceto Sepal width
select(iris, -Sepal.Width)

#Criando uma nova coluna com base em colunas existentes (Sepal.Length + Sepal.Width)
iris2 <- mutate(iris, nova.coluna = Sepal.Length + Sepal.Width)
iris2[,c("Sepal.Length", "Sepal.Width", "nova.coluna")]


#Arrange - ordenar os dados
?arrange

select(iris, Sepal.Length) %>%
  arrange(Sepal.Length)


#Group by
?group_by

# Agrupando os dados - Tamanho m?dio da s?pala por esp?cie
iris %>% group_by(Species) %>%
  summarise(mean(Sepal.Length))


#----------------------- 3.3 Transformando os dados -------------


#Tidyr
#install.packages("tidyr")
library(tidyr)

#Quantidade de vendas por ano e produto


#Dataframe - Quantidade de Produtos por Ano
dfDate <- data.frame(Produto = c('A','B','C'),
                     A.2015 = c(10,12,20),
                     A.2016 = c(20,25,35),
                     A.2017 = c(15,20,30)
)

head(dfDate)

#Utilizando a fun??o gather para mudar o formato da tabela
?gather

dfDate2 <- gather(dfDate, "Ano", "Quantidade", 2:4)
head(dfDate2)


?separate

#Criando uma nova coluna para separar os dados
dfDate3 <- separate(dfDate2, Ano, c("A", "Ano"))
dfDate3

#Removendo a coluna 
dfDate3 <- dfDate3[-2]
dfDate3

#Acrescentando uma coluna M?s
dfDate3$Mes <- c('01','02','03')

dfDate3

#Fazendo a uni?o da coluna Ano e M?s
?unite

#Criando a coluna Data para receber M?s e Ano - separado por /
dfDate4 <- dfDate3 %>%
  unite(Data, Mes, Ano, sep = '/')

head(dfDate4)




