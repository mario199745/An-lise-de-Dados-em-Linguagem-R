#--------------- Obtenção dos dados ----------------

### DEFINIÇÃO DO PROBLEMA

#Identificar pacientes com alta probabilidade de serem diagnosticados com diabetes, tendo, no mínimo, 75% de acurácia.



### OBTENÇÃO DOS DADOS

setwd("D:/Fernando/CURSOS/Análise de Dados em Linguagem R/Data")
#Necessário fazer o download do arquivo "diabetes.csv" na biblioteca do curso que esta em: Biblioteca > Material Complementar

diabetes <- read.csv(
  #Alterar o valor do campo file com o caminho completo do diretório em que se encontra o arquivo diabetes.csv
  #Exemplo file = "C:/Users/NomeUsuario/Documents/Datasets/diabetes.csv"
  #Nesse exemplo o arquivo diabetes.csv está no disco "E" dentro da pasta Datasets
  file = "D:/Fernando/CURSOS/Análise de Dados em Linguagem R/Data/diabetes.csv"
)

head(diabetes)



### PREPARAÇÃO DOS DADOS

#Verificando o tipo dos dados das colunas do dataset
?str
str(diabetes)

#Verificando se existem valores não preenchidos
?colSums()
colSums(is.na(diabetes))

#Verificando a proporção dos valores de cada categoria
?table
table(diabetes$Outcome)


#Alterando o tipo da coluna "Outcome" que é int para factor
diabetes$Outcome <- as.factor(diabetes$Outcome)

#Verificando valores min, max, média, mediana...
summary(diabetes$Insulin)

#Criando o gráfico de boxplot para cada coluna do dataset
boxplot(diabetes)

#Criando o boxplot apenas da coluna "Insulin"
boxplot(diabetes$Insulin)

#Criando um histograma da coluna "Insulin"
hist(diabetes$Insulin)

#install.packages("dplyr")
library(dplyr)

#Filtrando o dataset por Insulin - Remoção de outliers
diabetes2 <- diabetes %>%
  filter(Insulin <= 250)

boxplot(diabetes2$Insulin)


### Análise exploratória

#Criação do boxplot para identificar outliers nas colunas do dataset
boxplot(diabetes2)

#Criação de histogramas para visualizar a distribuição dos dados
hist(diabetes2$Pregnancies)
hist(diabetes2$Age)
hist(diabetes2$BMI)

#Visualizando os valores de min, max, média, mediana...
summary(diabetes2$Insulin)


### CONSTRUÇÃO DO MODELO 

install.packages("caTools")
library(caTools)

# Divisão dos dados em treino e teste - 70% dos dados para treino e 30% dos dados para teste
set.seed(123)
index = sample.split(diabetes2$Pregnancies, SplitRatio = .70)
index

train = subset(diabetes2, index == TRUE)
test  = subset(diabetes2, index == FALSE)

dim(diabetes2)
dim(train)
dim(test)

install.packages("caret")
install.packages("e1071")

library(caret)
library(e1071)

?caret::train

#Treinando a primeira versão do modelo - KNN
modelo <- train(
  Outcome ~., data = train, method = "knn")

#Visualizando os resultados do modelo
modelo$results
modelo$bestTune


#Treinando a segunda versão do modelo - testando o comportamento do modelo com outros valores de k
modelo2 <- train(
  Outcome ~., data = train, method = "knn",
  tuneGrid = expand.grid(k = c(1:20)))

#Visualizando os resultados do modelo
modelo2$results
#Identificando o melhor valor de k
modelo2$bestTune

#Visualizando a performance do modelo - gráfico de linhas
plot(modelo2)


#Treinando a terceira versão do modelo - Naive bayes
#install.packages("naivebayes")
library(naivebayes)

modelo3 <- train(
  Outcome ~., data = train, method = "naive_bayes")

#Visualizando os resultados do modelo
modelo3$results
modelo3$bestTune

#Treinando a quarta versão do modelo - randomForest
#install.packages("randomForest")
library(randomForest)

modelon4 <- train(
  Outcome ~., data = train, method = "rpart2"
)
modelon4

#Verificando a importância das váriaveis para o aprendizado do modelo
varImp(modelon4$finalModel)
#As colunas "Insulin e Blood Pressure" não contribuem muito para o aprendizado do modelo  


#Treinando o modelo sem as colunas "Insulin e BloodPressure" - train[,c(-3,-5)] exclui as colunas
modelon4_1 <- train(
  Outcome ~., data = train[,c(-3,-5)], method = "rpart2"
)
modelon4_1

# Visualizando a arvore de decisão
plot(modelon4_1$finalModel)
text(modelon4_1$finalModel)



#install.packages("kernlab")
library(kernlab)

set.seed(100)
modelo5 <- train(
  Outcome ~., data = train, method = "svmRadialSigma"
  ,preProcess=c("center")
)

modelo5$results
modelo5$bestTune




# Avaliando o modelo
?predict

#Testando o modelo com os dados de teste
predicoes <- predict(modelo5,test)

# Visualizando o resultado das prediçoes do modelo
predicoes


?caret::confusionMatrix
#Criando a confunsion matrix para Verificar os resultados do modelo
confusionMatrix(predicoes, test$Outcome)


# Realizando predições

#Criando um dataframe apenas com o registro de um unico paciente para simular a utilização do modelo
novos.dados <- data.frame(
  Pregnancies = c(3),           
  Glucose = c(111.50),
  BloodPressure = c(70),
  SkinThickness = c(20),          
  Insulin = c(47.49),
  BMI = c(30.80),       
  DiabetesPedigreeFunction = c(0.34),
  Age = c(28)                     
)

novos.dados

#Utilizando o modelo para gerar a previsão - passando os dados do paciente
previsao <- predict(modelo5,novos.dados)

resultado <- ifelse(previsao == 1, "Positivo","Negativo")

#Verificando o resultado da predição do modelo
print(paste("Resultado:",resultado))



### VISUALIZAÇÃO DOS RESULTADOS

#Criando o arquivo com os resultados das predições
write.csv(predicoes,'resultado.csv')

#Lendo o arquivo de previsões que foi gerado
resultado.csv <- read.csv('resultado.csv')

#Alterando o nome das colunas do dataframe
names(resultado.csv) <- c('Indice','Valor previsto')

#Visualizando o dataframe
resultado.csv

