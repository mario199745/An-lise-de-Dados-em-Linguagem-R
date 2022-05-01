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
