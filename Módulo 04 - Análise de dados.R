
### DEFINI��O DO PROBLEMA

#Precisamos entender os gastos com viagens a servi�o para tomar medidas mais eficientes e, com isso, reduzir os custos das viagens a servi�o.

#Vamos levantar algumas quest�es relevantes acerca dessa problem�tica:

# Qual � o valor gasto por �rg�o?
# Qual � o valor gasto por cidade?
# Qual � a quantidade de viagens por m�s?


### OBTEN��O DOS DADOS

#Necess�rio fazer o download do arquivo "2019_viagem.csv" na biblioteca do curso que esta em: Biblioteca > Material Complementar

?read.csv

setwd("D:/Fernando/CURSOS/An�lise de Dados em Linguagem R/Data")


viagens <- read.csv(
  #Alterar o valor do campo file com o caminho completo do diret�rio em que se encontra o arquivo 2019_viagem.csv
  #Exemplo file = "C:/Users/NomeUsuario/Documents/Datasets/2019_Viagem.csv"
  #Nesse exemplo o arquivo 2019_Viagem.csv est� no disco "E" dentro da pasta Datasets
  file = "D:/Fernando/CURSOS/An�lise de Dados em Linguagem R/Data/2019_Viagem.csv",
  sep = ';',
  dec = ','
)

#Visualizando as primeiras linhas do dataset - verificar se dados foram carregados corretamente
head(viagens)

View(viagens)

#Verificar dimens�es do dataset
dim(viagens)

?summary

#Resumo do dataset - valores min, max, media, mediana...
summary(viagens)

#Summary de uma coluna especifica
summary(viagens$Valor.passagens)


#Verificar tipo dos dados
#Caso n�o tenha o dplyr instalado remover o comentario da linha abaixo

#install.packages("dplyr")
library(dplyr)

glimpse(viagens)



### TRANSFORMA��O DOS DADOS OBTIDOS

#Convertendo o tipo do dato para tipo Date
?as.Date

viagens$data.inicio <- as.Date(viagens$Per�odo...Data.de.in�cio, "%d/%m/%Y")

glimpse(viagens)


#Formatando a data de inicio - para utilizar apenas Ano/M�s
?format
viagens$data.inicio.formatada <- format(viagens$data.inicio, "%Y-%m")
viagens$data.inicio.formatada


### EXPLORA��O DOS DADOS 

#Gerando histograma da coluna passagens
hist(viagens$Valor.passagens)

#Outro exemplo de histograma - filtrando valores

#Para esse exemplo ser�o utilizadas as fun��es filter e select
?dplyr::filter
?dplyr::select

#Filtrando os valores das passagens - apenas passagens entre 200 e 5000
passagens_fitro <- viagens %>%
  select(Valor.passagens) %>%
  filter(Valor.passagens >= 200 & Valor.passagens <= 5000) 


passagens_fitro
hist(passagens_fitro$Valor.passagens)


#Verificando os valores min, max, m�dia... da coluna valor
summary(viagens$Valor.passagens)


#Visualizando os valores em um boxplot
boxplot(viagens$Valor.passagens)

#Visualizando os valores das passagens - filtro de 200 a 5000
boxplot(passagens_fitro$Valor.passagens)

#Calculando o desvio padr�o
sd(viagens$Valor.passagens)

#Verificar se existem valores n�o preenchidos nas colunas do dataframe
?is.na

?colSums

colSums(is.na(viagens))


#Verifcar a quantidade de categorias da coluna Situa��o 

#Converter para factor
viagens$Situa��o <- factor(viagens$Situa��o)


str(viagens$Situa��o)

#Verificar quantidade de registros em cada categoria
table(viagens$Situa��o)

#Obtendo os valores em percentual de cada categoria
prop.table(table(viagens$Situa��o))*100



### Visualiza��o dos resultados------------------




# 1 - Qual � o valor gasto por �rg�o em passagens?




#Criando um dataframe com os 15 �rg�os que gastam mais
#library(dplyr)
p1 <- viagens %>%
  group_by(Nome.do.�rg�o.superior) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(desc(n)) %>%
  top_n(15)

#Alterando o nome das colunas
names(p1) <- c("orgao", "valor")

p1


#Plotando os dados com o ggplot
library(ggplot2)
ggplot(p1, aes(x = reorder(orgao, valor), y = valor))+
  geom_bar(stat = "identity")+
  coord_flip()+
  labs(x = "Valor", y = "�rg�os")





# 2 - Qual � o valor gasto por cidade?



#Criando um dataframe com as 15 cidades que gastam mais
p2 <- viagens %>%
  group_by(Destinos) %>%
  summarise(n = sum(Valor.passagens)) %>%
  arrange(desc(n)) %>%
  top_n(15)

p2

#Alterando o nome das colunas
names(p2) <- c("destino", "valor")
p2

#Criando o gr�fico
ggplot(p2, aes(x = reorder(destino, valor), y = valor))+
  geom_bar(stat = "identity", fill = "#0ba791")+
  geom_text(aes(label = valor), vjust = 0.3, size = 3)+
  coord_flip()+
  labs(x = "Valor", y = "Destino")

#options(scipen = 999)







# 3 - Qual � a quantidade de viagens por m�s?




#Criando um dataframe com a quantidade de viagens por Ano/m�s
p3 <- viagens %>%
  group_by(data.inicio.formatada) %>%
  summarise(qtd = n_distinct(Identificador.do.processo.de.viagem))

head(p3)

#Criando o gr�fico
ggplot(p3, aes(x = data.inicio.formatada, y = qtd, group = 1))+
  geom_line()+
  geom_point()