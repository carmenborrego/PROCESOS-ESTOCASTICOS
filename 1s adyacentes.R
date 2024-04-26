#ADYACENTES
# init: secuencia inicial
# n: numero de pasos 
adjacent <- function(init, n)
{ k <- length(init)
tot <- 0 # numero total de  1s
new <-c(2, init,2) # secuencia de pasos al final
for (i in 1:n) {
      index <- 1 +sample(1:k,1)
      newbit <- 0 + !new[index] 
      if (newbit==0) {
      new[index] <- 0
      tot <- tot+sum(new)
      next} else {
      if (new[index-1]==1 | new[index+1] ==1) {
            tot <-tot + sum(new)
            next}
           else {new[index] <- 1}
          tot <- tot + sum(new)}
      }
    tot/n- 4 } # se restan ambs puntos finales
m <- 100
init <- rep(0,m) # comienza la secuencia de 0s
adjacent(init,100000)
#el resultado que arroja el codigo es un estimado 
# de para el número esperado de 1s miu 
#que sería aproximadamente 27.833
