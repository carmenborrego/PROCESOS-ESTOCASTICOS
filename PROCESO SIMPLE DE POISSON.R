#simulacion de llegadas de un proceso de Poisson 
#con parametro lambda=1/2 [0,30]


t <- 30
lamba <- 1/2
N <- rpois(1, lambda*t)
unifs <- runif(N,0,t)
arrivals <- sort(unifs)
arrivals
