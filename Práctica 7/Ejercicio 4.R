datos<-c(210, 197, 187, 217, 194, 208, 220, 199, 193, 203, 181, 212, 188, 196, 185)
n = length(datos)

#A
mean(datos)

#Por la definicion de Varianza
sigmaCuadrado<- mean((datos-mean(datos))^2)
sigmaCuadrado

sigma = sum((datos - mean(datos))^2) / n
sigma


#B

muestra <- c(25.11, 25.02, 25.16, 24.98, 24.83, 25.05, 24.94, 25.04, 24.99, 24.96, 25.03, 24.97, 24.93, 25.12, 25.01, 25.12, 24.90, 24.98, 25.10, 24.96)
mu<-mean(muestra)


sigmaCuadrado<- mean((-mean(mu))^2)
sigmaCuadrado


#C

magnitudes<- c(12.51, 11.66, 11.91, 12.25, 11.54, 11.36, 12.40, 12.19, 12.88, 12.16, 12.69, 12.91, 12.12, 11.02, 12.53, 11.77, 12.72, 10.56, 11.52, 11.66, 12.25, 12.09, 11.48, 12.36)
mu0<-12
mu0

sigmaCuadradoDelError<- mean((magnitudes-mu0)^2)
sigmaCuadradoDelError


#D
#i
lamparas<-c(39.08, 45.27, 26.27, 14.77, 65.84, 49.64, 0.80, 66.58, 69.60, 32.42, 228.36, 64.79, 9.38, 3.86, 37.18, 104.75, 3.64, 104.19, 8.17, 8.36)

theta<- 1/mean(lamparas)
theta


percentil<--mean(lamparas)*log(0.1)
percentil

#Usando la funcion qexp
percentil <- qexp(0.9, theta)
percentil

#ii
sort(lamparas)[length(lamparas)*0.9]

#E
lamparas2 <- read.table(file="lamparas.txt", header= FALSE, sep=' ')
lamparas2 <- scan(file="lamparas.txt")
#i
1/(sum(lamparas2)/length(lamparas2))

1/mean(lamparas2)

#ii 
percentil<--mean(lamparas2)*log(0.1)
percentil







