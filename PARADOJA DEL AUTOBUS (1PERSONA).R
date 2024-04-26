

mytime <- 50 #momento en el que llega
#el resultado esperado de acuerdo a las especificaciones
#es de en promedio 10 minutos
lambda <- 1/10
trials <- 10000
simlist <- numeric(trials)
for (i in 1:trials) {
  N <- rpois(1,300*lambda)
  arrivals <- sort(runif(N,0,300))
  wait <- arrivals[arrivals > mytime][1] - mytime
  simlist[i] <- wait
}
mean(simlist)
#la única diferencia con el ejemplo anterior 
#es que aquí no se involucran dos personas
#calcula el tiempo de espera para una persona
#basándose en el tiempo t en el que llega a la parada
#no tiene memoria 
#si esta persona llega entre salidas de autobuses
#espera en promedio el mismo tiempo 
