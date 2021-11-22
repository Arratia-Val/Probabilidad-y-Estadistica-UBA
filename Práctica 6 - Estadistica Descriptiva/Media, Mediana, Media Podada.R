
#CALCULAR LA MEDIA -------------------------------------------------------

muestra1 <- c(2, 1, 0, 4, 8)

# calculamos la media
mean(muestra1)

# mean:  calcula media
muestra2 <- c(2, 1, 0, 4, 18)
mean(muestra2)
#tiene outliers
#PARA CONTRARESTAR LOS PROBLEMAS DE LOS OUTLIERS USAMOS LA MEDIANA


#CALCULAR LA MEDIANA ------------------------------------------------------

# median:  calcula mediana
median(muestra1)
median(muestra2)


#CALCULAR LA MEDIA PODADA --------------------------------------------------

muestra <- c(40, 14, 25, 10, 5, 17, 21, 8, 28, 2)

# ordenamos la muestra
muestra <- sort(muestra)  #sort ordena la muestra

poda = 1   #definimos la poda
n = length(muestra)  

mean(muestra[(1+poda):(n-poda)]) #con los corchetes accedo a los valores y con los : me indica de que a que valor va a tomar
#entonces toma de 2 a n-1 (valores inclusivos)


#Otra Forma -------------------

# Media alpha-podada
mean(muestra, trim = 0.1) #--> el trim permite definir el alpha de la poda


#ALFA=0 ES CALCULAR LA MEDIA
#ALFA =0.5 ES CALCULAR LA MEDIANA







