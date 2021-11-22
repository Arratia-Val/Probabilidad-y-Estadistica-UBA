datos <- scan(file="graduados.txt")
n <- nrow(datos)
n

#a) Calcular la media muestral y la mediana muestral.

mean(datos)
median(datos)

#b) Calcular el desv´ıo est´andar muestral y la distancia intercuartil.

sd(datos)
IQR(datos)

#c) Realice un histograma con los datos. y superponga la curva de una densidad normal con los par´ametros que considere 
#pertinentes.
 hist(datos)
 hist(datos, col = "lightblue", prob = TRUE, breaks = 7)

  curve(dnorm(x, mean = median(datos), sd = sd(datos)), col="darkblue", lwd=2, add=TRUE)
  
  
#d) Realice un boxplot con este conjunto de datos. ¿Cu´ales son sus caracter´ısticas m´as sobresalientes?. 
#¿C´omo relaciona lo observado en los gr´aficos con los valores estimados de media y mediana obtenidos en a)? ¿Hay outliers?

  boxplot(datos)
  

#e) ¿Qu´e distribuci´on cree que tienen estos datos?


#f ) Superponga en el histograma la curva de una densidad apropiada con los par´ametros que considere pertinentes. Explore el comando density en R.

  hist(datos)
  x <- seq(3.3,4,length=100)
  lines(x,dnorm(x,3.720667,0.1456717),col="blue")
  lines(density(datos), col='darkblue', lwd=3)


#g) ¿Qu´e otro gr´afico conoce que le permitir´ıa verificar si su conjetura es razonable?



  
  
  
  
  
  
  
