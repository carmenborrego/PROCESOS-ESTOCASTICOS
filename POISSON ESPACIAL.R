
lambda <- 100
squarearea <- 1
trials <- 100000
simlist <- numeric(trials)
for (i in 1:trials) {
N <- rpois(1,lambda*squarearea)
xpoints <- runif(N,0,1)
ypoints <- runif(N,0,1)
ct <- sum(((xpoints-0.7) ^ 2+(ypoints-0.7) ^ 2)<=0.2 ^ 2)
simlist[i] <- ct } # number of points in circle
mean(simlist)

var(simlist)

# Compare with theoretical mean and variance
lambda*pi*(0.2) ^ 2

#point process 
#modelo para la distribución de puntos en un espacio 
#clusters, dependencia espacio-tiempo 
#el vecino más cercano:definido como distancia entre 
#un punto arbitrario y el más cercano  