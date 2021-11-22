ingresos <- scan(file="ingresos.txt")

#a) ¿Cu´al es el ingreso m´ınimo percibido por los trabajadores encuestados? Estime la proporci´on de los trabajadores 
#de la ciudad que percibe el ingreso m´ınimo.

summary(ingresos) #ahí dice explicitamente cual es el minimo
min(ingresos) #me da el result como tal
quantile(ingresos) #de acá agarro el de 25% que es el minimo

#b) Estimar el ingreso mensual que se necesita para pertenecer al 10 % de trabajadores de la ciudad con ingresos m´as altos.

quantile(ingresos, probs = c(.9)) #como pide con ingresos mas altos es 10% desde lo mas grande


#c) Calcular la media muestral, la mediana muestral y la media α-podada con α =0,10 (10 %).

mean(ingresos)
median(ingresos)
mean(ingresos, trim = 0.1)


#d) Calcular el desv´ıo est´andar muestral y la distancia intercuartil.

sd(ingresos)  
IQR(ingresos)  
 

#e) Realizar un histograma y un boxplot. ¿Cu´ales son las caracter´ısticas m´as sobresalientes? ¿Hay outliers?

hist(ingresos)
boxplot(ingresos)  
  
#f) ¿Cree que los datos tienen distribuci´on normal?
  
#g) Discutir con un compa˜nero las ventajas y desventajas de cada medida de posici´on para describir el centro de los datos.



