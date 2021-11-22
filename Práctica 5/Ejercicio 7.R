#P(z <= 1.29)

pnorm(q=1.29, lower.tail=TRUE)

#P(z >= 1.29)

1-pnorm(q=1.29, lower.tail=TRUE)

pnorm(q=1.29, lower.tail=FALSE)

#P(z < z_alfa) = 0.95
z_alfa = qnorm(0.95)