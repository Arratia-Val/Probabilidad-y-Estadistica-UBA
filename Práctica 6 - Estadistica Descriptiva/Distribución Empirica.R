
#COMO ESTIMAR PROBABILIDADES DADA UNA MUESTRA
#DISTRIBUCION EMPIRICA

# Cargamos los datos como vectores
# Muestra de una v.a. X
muestra <- c(-7, 1, 1, 2, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 19)
n = length(muestra)


# estimamos la probabilidad de que X = 4
sum(muestra == 4)/n #Al poner == 4 significa que va a buscar en muestra la cant de Trues que da cuenta la una coordenada en muestra es igual a 4
                    #es decir, sum develve la cantidad de coordenadas que son iguales a 4
                    #entonces nos da la proba de que x = 4


# estimamos la probabilidad de que X > 6
sum(muestra > 6)/n #compara los valores que hay que son >6 
                    #y con el sum cuenta cuantos hay 
                    #y obvio al dividir por n nos da la proba



#Otra Forma -------------------------------
#Para verlo con el gráfico


datos <- c(1,2,5,8,10,14,17,21,25,28,40,45)
plot(ecdf(datos))  # Los "saltos" son de 1/n y se dan en los xi de la muestra


# Con el gr�fico es f�cil hallar F_n(28), que puede verse como una estimaci�n de P(X<=5)
# Otra forma:
mean(datos<=28) #--> datos<=5 guarda 1(TRUE) en la obs que cumple ser <=5 y un 0 en las que no
#--> por eso, el mean de eso equivale a la suma de esos 1 sobre el n (que es c�mo definimos a F_n)






































