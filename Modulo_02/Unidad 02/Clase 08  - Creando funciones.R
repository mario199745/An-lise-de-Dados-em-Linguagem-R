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