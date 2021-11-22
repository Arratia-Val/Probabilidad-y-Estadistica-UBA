#Defino mi directorio de trabajo
#se hace si estoy en Rdesktop

#Cargo los datos del quiz
alfajores <- read.table(file="alfajores.txt", header= TRUE, sep=' ')
n <- nrow(alfajores) #nrow es la cant de filas que hay en alfajores
n
# Los miro
head(alfajores)

# Los fijo para poder llamarlos directamente
attach(alfajores)
defectuosos
fabrica

# 1) Estimar la probabilidad de que una caja provenga de la sede Quilmes: quiero estimar 

#P(Y=0) ---------------------

sum(alfajores[2] == 0)/n

#b) la probabilidad de que una caja sea producida por la sede Quilmes y tenga 3 alfajores defectuosos.
#Quiero estimar 

#P(X=3,Y=0) -----------------

sum(alfajores[1]==3 & alfajores[2] == 0)/n


#c) la funcion de probabilidad puntual conjunta del vector (X, Y ): Quiero estimar 

#P_XY(X,Y) ------------------

#Una forma
t <- t(table(defectuosos,fabrica))
t

pXY <- t/n
pXY

#Otra Forma - No me muestra la tabla pero puedo llamar a los valores de la tabla con la funcion
probaConjunta <- function(x,y){
  sum(alfajores[1] == x & alfajores[2] == y)/nrow(alfajores)
}
probaConjunta



#d) la esperanza y la varianza de X.

mean(defectuosos) #Esperanza es la media

#Dos formas de calcular la varianza
var(defectuosos)
sum((defectuosos - mean(defectuosos))^2)/(n-1)

#e) la probabilidad de que una caja producida por la sede Quilmes tenga 3 alfajores defectuosos.

#proba condicional P(X=3|Y=0) = P(X=3,Y=0)/P(Y=0) ------------------------------


probaX3Y0 <- sum(alfajores[1] == 3 & alfajores[2] == 0)/nrow(alfajores)
probaX3Y0

sedeQuilmes <- sum(alfajores[2] == 0)/n
sedeQuilmes

probaCondicional2 <- probaX3Y0 / sedeQuilmes
probaCondicional2

#O direcamente
probaCondicional <- (sum(alfajores[1] == 3 & alfajores[2] == 0)/nrow(alfajores))/(sum(alfajores[2] == 0)/n)
probaCondicional

#f) la probabilidad de que una caja producida por la empresa y elegida al azar tenga 3 alfajores defectuosos ( es decir X = 3).

proba3Defectuosos <- probaConjunta(3,0) + probaConjunta(3,1)
proba3Defectuosos

proba3Defectuosos2 <- sum(alfajores[1] ==3)/n
proba3Defectuosos2

#g) la probabilidad de que una caja con 3 alfajores defectuosos haya sido producida por la sede Quilmes.

proba3defectuososQuilmes <- probaConjunta(3,0)/(sum(alfajores[1] == 3)/n)
proba3defectuososQuilmes


#h) la probabilidad de que una caja con 3 alfajores defectuosos haya sido producida por la sede Pilar.

proba3defectuososPilar <- probaConjunta(3,1)/(sum(alfajores[1] == 3)/n)
proba3defectuososPilar


