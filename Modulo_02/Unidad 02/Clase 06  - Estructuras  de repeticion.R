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