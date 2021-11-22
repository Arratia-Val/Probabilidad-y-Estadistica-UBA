muestra<-c(76.93, 76.88, 77.07, 76.68, 76.39, 75.09, 77.67, 76.88, 78.15, 76.50, 77.16, 76.42)

#A
mean(muestra)

#B
median(muestra)

#C
plot(ecdf(muestra))

mean(muestra<=76.5)

sum(muestra <= 76.5) / length(muestra)
