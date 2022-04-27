
#https://mooc38.escolavirtual.gov.br/course/view.php?id=4080

#----------------2.1. Criando o seu primeiro script-----------------------

#Atribuindo texto à variável mensagem
mensagem <- "Hello world!"

#Imprimindo o valor da variável no console
print(mensagem)

# Creando el primer script 



#-----------2.2 Comentando seu código---------------------

#Isto é um comentário

#Os comentários podem ser utilizados para ajudar outros programadores a entender o seu código


#Para comentar basta inserir o caractere # no ínicio da linha 
#Com isso o interpretador da linguagem R irá ignorar o que for digitado
#Caso contrário será exibida uma mensagem de erro


# Comentando su código 


#---------------2.3 Documentação da função----------------

#Acessando a documentação de uma função
#basta adicionar o caractere de interrogação (?) na frente do nome da função

#Exemplo: Consultando a documentação da função print
?print

#O resultado irá aparecer na aba Help

#Outras funções úteis
?head
?str
?getwd
?mean
?sd
?sum
?seq

#La documentación de las funciones solamente con el signo de interrigación 


#-----------------2.4 Instalando pacotes--------------------

#Instalando um novo pacote

#Instalando o pacote ggplot2
#install.packages("ggplot2")

#Carregando o pacote ggplot2
#library(ggplot2)

# ggplot 2 é um pacote de visualização de dados - utilizado para a criação de gráficos
?ggplot2


#Instalación de los paquetes 


#-----------------------2.5 Estrutura de dados---------------------------


#Vetores
#Armazena um conjunto de valores ordenados chamados de elementos. Todos os elementos de um vetor devem ser do mesmo tipo.

#Criando um vetor
?c()

cidade <-c("Brasília",
           "São Paulo",
           "Rio de Janeiro",
           "Porto Alegre")

#Visualizando os dados do vetor
cidade

temperatura <- c(32,22,35,17)

regiao <- c(1,2,2,3)



#Acessando o primeiro elemento

cidade[1]
temperatura[3]
regiao[4]

#Acessando um intervalo de elementos
temperatura[1:3]


#Copiando um vetor
cidade2 <- cidade
cidade2

#Excluindo o segundo elemento da consulta
temperatura[-2]

#Altereando um vetor
cidade2[3] <- "Belo Horizonte"

#Adicionando um novo elemento
cidade2[5] <- "Curitiba"
cidade2 

#Deletando o vetor
cidade2 <- NULL
cidade2

#Fatores 
#Armazena valores categóricos (nominal ou ordinal).
#Datos por niveles 


?factor

UF <- factor(c("DF", "SP", "RJ", "RS"))
UF


grau.instrucao <- factor(c("Nível Médio",
                           "Superior",
                           "Nivel Médio",
                           "Fundamental"),
                         levels = c("Fundamental",
                                    "Nivel Médio",
                                    "Superior"),
                         ordered = TRUE)

grau.instrucao


#Listas
#É um tipo especial de vetor, porém é possível adicionar elementos de tipos diferentes.


?list()

pessoa <- list(sexo = "M", cidade = "Brasília", idade = 20)

pessoa

#Acessando o primeiro elemento da lista
pessoa[1]
pessoa[3]

#Acessando o valor do primeiro elemento da lista
pessoa[[1]]
pessoa[[2]]

#Editando a lista
pessoa[["idade"]] <- 24
pessoa

#Deletando elemento da lista
pessoa[["idade"]] <- NULL
pessoa

#Criando novamente a lista
pessoa <- list(sexo = "M", cidade = "Bras?lia", idade = 20)

#Filtrando elementos da lista
pessoa[c("cidade", "idade")]

#Lista de listas
cidades <- list(cidade = cidade,
                temperatura = temperatura,
                regiao = regiao)
cidades


#Criando um data frame com vetores

#Dataframe: É utilizado para organizar elementos em linhas e colunas, semelhante a uma planilha ou base de dados. Além disso, pode ser formado por listas ou vetores.

df <- data.frame(cidade,temperatura)
df

df2 <- data.frame(cidades)
df2

#Filtrando valores do data frame
#Recuperando o valor da linha 1, coluna 2
df[1,2]

#Recuperando todas as linhas da primeira coluna
df[, 1]

#Recuperando a Primeira linha e todas as colunas
df[1,]

#Selecionando as 3 primeiras linhas da primeira e ultima coluna
df2[c(1:3), c(1,3)]


#Verificando o nome das colunas
names(df)

#Verificando numero de linhas x colunas
dim(df)

#Verificando os tipos de dados
str(df)


#Acessar uma coluna do dataframe
df$cidade

#Visualizar en una columna 


df['cidade']




?matrix()

#Matrizes
#Armazena dados tabulares semelhante ao data frame, porém só aceita um tipo de dado.

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


#---------------------2.6 Estruturas de repetição-----------------
#Loops

#For

# for (valor in sequencia){
#   código...
# }

?seq

#Exemplo for
for (i in seq(12)){
  print(i)
}


#While

# while(condição){
#   código...
# }


#Exemplo while

i <- 0
while(i <= 10){
  print(i)
  i = i+1
}



#----------------2.7 Controle de fluxo----------

#Controle de fluxo

# if(condição){}
#   código...
# }


#Exemplo - Controle de fluxo

x = 10
if (x > 0){
  print("Número Positivo")
}


nota = 4
if (nota >=7){
  print("Aprovado")
}else if (nota > 5 && nota < 7){
  print("Recuperação")
}else{
  print("Reprovado")
}


#---------------2.8 Criando funções----------------

#Estrutura da função

# nome.funcao <- function(argumento){
#   código
# }


#Criando a função
par.impar <- function(num){
  if((num %% 2) == 0){
    return("Par")
  }else
    return("Ímpar")
}

#Usando a função
num = 3
par.impar(num)




#--------------------2.9 Utilizando funções apply-----------------


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

#---------------- 2.10 Criando gráficos ------------


#Graficos

#dataset/conjunto de dados
?mtcars

#Filtrando colunas do dataset
carros <- mtcars[,c(1,2,9)]

#Visualizando o dataset
head(carros)

#Histograma
hist(carros$mpg)

#Gráfico de dispersão
plot(carros$mpg,carros$cyl)

#install.packages("ggplot2")
library(ggplot2)

#Criando gráfico de barras com ggplot2
ggplot(carros,aes(am))+
  geom_bar()



#-----------------------3.1. Utilizando junções----------------------


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

#Resultado da junção df1 + df2 usando left join
df3 <- left_join(df1,df2,"Produto")
head(df3)

#Resultado da junção df1 + df2 usando right join
df4 <- right_join(df1,df2, "Produto")
head(df4)

#Resultado da junção df1 + df2 usando inner join
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

# Agrupando os dados - Tamanho médio da sépala por espécie
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

#Utilizando a função gather para mudar o formato da tabela
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

#Acrescentando uma coluna Mês
dfDate3$Mes <- c('01','02','03')

dfDate3

#Fazendo a união da coluna Ano e Mês
?unite

#Criando a coluna Data para receber Mês e Ano - separado por /
dfDate4 <- dfDate3 %>%
  unite(Data, Mes, Ano, sep = '/')

head(dfDate4)




