# Defino mi directorio de trabajo
setwd("G:/Mi unidad/_FCEyN UBA/_PyC2021/_2c2021/_FilminasPracticas/1021_Estad�stica descriptiva")

# Cargo los datos del quiz
datos <- read.csv("quiz.csv", sep=";")

# Los miro
head(datos)

# Los fijo para poder llamarlos directamente
attach(datos)
Nota
P5

# 1) Estimar la probabilidad de responder correctamente la pregunta 5: quiero estimar P(Y=1)
mean(P5)

# 2) Estimar la probabilidad de responder correctamente la pregunta 5 y sacarse un 9: quiero estimar P(X=9,Y=1)
datos[Nota==9 & P5==1,]

n <- nrow(datos)
nrow(datos[Nota==9 & P5==1,])/n

# 3) Estimar la funci�n de probabilidad puntual conjunta del vector (X,Y): quiero estimar pXY(X,Y)
t <- t(table(Nota, P5))
t


pXY <- t/n

sum(pXY)

# 4) Estimar la esperanza y la varianza de X: quiero estimar E(X), V(X)
mean(Nota)
var(Nota)

# 5) Estimar la probabilidad de que un estudiante que respondi� incorrectamente la pregunta 5, 
# se haya sacado un 3 en el quiz: quiero estimar P(X=3|Y=0)
# P(X=3|Y=0) = P(X=3,Y=0)/P(Y=0)
pXY

pXY[1,2]/sum(pXY[1,])

# ... P(X=3) 
sum(pXY[,2])

# ... P(X=8|Y=0)
pXY[1,7]/sum(pXY[1,])

# ... P(X=8)
sum(pXY[,7])

# 6) Estimar la probabilidad de sacarse m�s 6: quiero estimar P(X>6)
length(datos[Nota>6,1])/n

# la probabilidad de que teniendo nota superior a 8, la pregunta 5 haya sido correctamente respondida:
# quiero estimar P(Y=1|X>8) = P(Y=1,X>8)/P(Y>8)
sum(pXY[2,8:9])/sum(pXY[1:2,8:9])
