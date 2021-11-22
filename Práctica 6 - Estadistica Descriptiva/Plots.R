#GRAFICOS -----------------------------------------------------------------
#Histograma
#Box Plot
#Q-Q Plot


datos <- c(1,2,5,8,10,14,17,21,25,28,40,70)
hist(datos) # Asimetr�a a derecha
hist(datos, probability = TRUE) #, breaks=10
boxplot(datos) # Asimetr�a a derecha
plot(density(datos))
qqnorm(datos)
qqline(datos)


