#EJERCICIO 5

#D
llamadas<-c(40, 46, 46, 45, 42, 44, 50, 31, 41, 42, 50, 34, 62, 32, 46, 50, 39, 42, 44, 41, 47, 42, 41, 50, 34, 47, 38, 40, 44, 45, 35, 51, 38, 41, 39, 34, 48, 35, 40, 40, 43, 36, 40, 49, 45, 47, 34, 45)
mu<-mean(llamadas)
mu

((exp(-mu))*mu^40)/factorial(40)
# Otra forma usando las funciones de R directamente
dpois(40, mu)

#Forma del C
sum(llamadas==40)/48


#D
llamadas <- scan(file="llamadas.txt")
n<-length(llamadas)

mu<-mean(llamadas)
mu
dpois(40,mu)

