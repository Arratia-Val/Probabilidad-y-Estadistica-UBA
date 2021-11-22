#################################
# ESTAD�STICA DESCRIPTIVA CON R #
#################################


#MEDIDAS DE DISPERSION

#Rango Muestral ---------------------------------------------------------------
muestra1
max(muestra1) - min(muestra1)

muestra2
max(muestra2) - min(muestra2)

#Varianza ---------------------------------------------------------------------

muestra <- c(0,1,5,9,10)

# varianza
var(muestra)

# calculamos usando formula de la varianza
n = length(muestra)
sum((muestra - mean(muestra))^2)/(n-1)

# desvio standard
sd(muestra) #raíz de la varianza

#-----------------------------------------------------------------------
#CUARTILES ~ percentil (si dice percentil 1 es el 1% de la muestra si digo cuartil  es el 25% e la muestra)

muestra <- c(1, 1, 2, 2, 3, 4, 4, 5, 5, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11)

# cuartiles
quantile(muestra)

# para valores genericos
# en la lista probs ponemos todos los percentiles que queremos calcular.
quantile(muestra, probs = c(.1,.25, .3, .5, .9))

# distancia inter-cuartil (diferencia entre el primer y el tercer cuartil)
IQR(muestra)


#NUMEROS PARA RESUMIR LA MUESTRA------------------------------------------

#minimo, primer cuartil, mediana(2 cuartil), tercer cuartil, maximo 
muestra

# five-number summary
summary(muestra)


#MAD ---------------------------------------------------------------------------
  
  mad(datos) 
#--> Para asegurar consistencia, esta funci�n multiplica la MAD que usamos nosotros por la cte=1.4826

# a mano: la MAD es 10
aa <- abs(datos-median(datos))
aa[order(aa)]
median(aa)
mad(datos, constant = 1) #--> con constant = 1, devuelve la que usamos nosotros





