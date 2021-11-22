#PRACTICA 8

#EJEMPLO 1
#Determinar Intervalos de Confianza de los parámetros de una Normal

#SUB A
X <-c(5.68, 5.16, 4.65, 4.73, 5.23, 4.68, 4.11 ,5.47, 5.7, 4.21, 4.6, 5.57,5.28, 4.36, 5.54)
n <- length(X)
x_bar <- mean(X)
x_bar
S2 <- var(X)
t <- qt(0.995, df =n-1)

extr_izq <- x_bar - t*sqrt(S2/n)
extr_der <- x_bar + t*sqrt(S2/n)

cbind(extr_izq, extr_der)


#SUB B

extr_izq <- (n-1)*S2/qchisq(0.995, df=n-1)
extr_der <- (n-1)*S2/qchisq(0.005, df=n-1)

I <- c(extr_izq, extr_der)
cbind(extr_izq, extr_der)


#SIMULACIóN

mu <- 5 # en mm
sigma2 <- 0.25 # en mm
Num_iter <- 10^2

IC_mu <- matrix(0, nrow = Num_iter, ncol = 3) # los extremos de los intervalos y un 1 si atrapa o no
mu_hat <- c() # vector de las estimaciones para cada experimento

for (i in 1:Num_iter){
  x <- rnorm(n, mean = mu, sd = sqrt(sigma2))
  t <- qt(0.995, df = n-1)
  S2 <- var(x)
  a <- mean(x)- t*sqrt(S2/n)
  b <- mean(x) + t*sqrt(S2/n)
  mu_hat[i] <- mean(x)
  IC_mu[i,] <- cbind(a, b, a< mu & b>mu)
}

sum(IC_mu[,3])/Num_iter


#GRAFICO

library(repr)
# Change plot size to 4 x 3
options(repr.plot.width=14, repr.plot.height=7)
plot(mu_hat, xlab=paste(Num_iter," muestras de tamaño", n),ylab="Estimadores puntuales de mu",

main<-"N(mu,s^2) con verdadero mu=5", ylim = c(min(IC_mu[,1:2]),max(IC_mu[,1:2])),pch=3, lwd=3)
abline(h=mu, col="red", lwd=2, lty=1)

for(i in 1:Num_iter){
  lines(c(i,i),c(IC_mu[i,1:2]), col="blue", lwd=1)
}


#EJEMPLO 2
#Determinar parámetros de una distribución cualquiera

X<-c(1.81, 1.97, 2.35, 3.89, 1.73, 3.79, 4.39, 2.58, 2.49, 1.56, 1.73, 1.69,
     2.66, 1.98, 2.97, 2.19, 2.76, 6.32, 1.98, 3.00, 4.23, 1.74, 2.55, 1.63,
     1.81, 1.99, 1.51, 1.98, 3.54, 1.92)
n<-length (X)
n
extr_izq <- min(X) - qexp(0.995, rate = n)
extr_der <- min(X) - qexp(0.005, rate = n)

cbind(extr_izq, extr_der)



