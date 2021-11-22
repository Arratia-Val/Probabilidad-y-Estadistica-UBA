#EJERCICIO 1
#Parametros Normal varianza conocida

#B
#ii
mu<-25.01
z<-1-0.05/2
qnorm(z)

extr_izq <- mu-qnorm(z)*(0.6/sqrt(20))
extr_der <- mu+qnorm(z)*(0.6/sqrt(20))

I <- c(extr_izq, extr_der)
cbind(extr_izq, extr_der)


#iii
alpha <- 0.05
sd <- sqrt(0.36)
z <- qnorm(1 - alpha / 2)

targetLength <- 0.05
ceiling(((2 / targetLength) * z * sd)^2)

