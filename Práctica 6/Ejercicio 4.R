ciudades <- read.table(file="ciudades.txt", header= TRUE)
View(ciudades)



#a) Construir en paralelo, para facilitar la comparaci´on, un box-plot para los datos de cada pa´ıs e identificar los puntos extremos en cada uno de ellos.

boxplot(ciudades)

boxplot(ciudades, horizontal=TRUE, col='lightblue', main='10 ciudades más pobladas', xlab='Población (cientos de miles)')

attach(ciudades)
boxplot(Argentina)
boxplot(EEUU)
boxplot(Holanda)
boxplot(Japon)

summary(ciudades)

#b) Comparar los centros de cada poblaci´on, sus dispersiones y su simetr´ıa. ¿Cu´al es el pa´ıs m´as homog´eneamente habitado?

sort(apply(ciudades, 2, sd)) #sort para ordenar los valores del apply
                             #apply es para dada una matriz x=ciudades, margin=2(agrupa las columnas para aplicarles una funcion)
                             #fun= sd (la funcion que le quiero aplicar A LA matriz x=ciudades EN las columnas(margin=2))



