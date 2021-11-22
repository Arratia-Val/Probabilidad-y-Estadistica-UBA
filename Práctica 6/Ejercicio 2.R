datos <- scan(file="lamparas.txt") #para leer un archivo que no es tabla, sino solo datos
n <- nrow(datos) #nrow es la cant de filas que hay en alfajores
n
# Los miro
head(alfajores)



#a) Estimar la probabilidad de que una l´ampara producida por esta f´abrica dure m´as de 30 horas.

probaMás30 <- sum(datos>30)/n
probaMás30

#b) Implementar y graficar la funci´on de distribuci´on emp´ırica de este conjunto de datos.

distribucionEmpirica <- function(x){
  sum(datos<= x)/n
}


duracion <- c(26.43, 33.58, 65.86, 29.18, 5.92, 13.29, 13.54, 64.78, 56.11,
              23.60, 33.39, 100.32, 28.04, 29.63, 2.41, 3.17, 11.99, 6.47,
              23.59, 17.96, 32.27, 2.09, 57.43, 15.31, 42.85, 1.68, 49.61)

plot(ecdf(datos)) 



#c) Completar: Estos datos permiten estimar que el 90 % de las l´amparas producidas
#por esta f´abrica dura m´as de ........ horas y el 10 % dura menos de ........ horas.


quantile(duracion, probs = c(.1))


