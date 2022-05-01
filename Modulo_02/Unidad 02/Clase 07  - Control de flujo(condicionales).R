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

