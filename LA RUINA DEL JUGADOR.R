#la ruina del jugardor


# jugador(k, n, p)
#   k: capital (estado) inicial de jugador
#   n: jugadas hasta que $n (gané todo) o queda arruinado 
#   p: proabilidad de ganar $1 en cada jugada
#   La función arroja 1 si el jugador eventualmente queda arruinado
#   o arroja 0 si el jugador gana $n

jugador <- function(k,n,p) {
  stake <- k
  while (stake > 0 & stake < n) {
    bet <- sample(c(-1,1),1,prob=c(1-p,p))
    stake <- stake + bet
  }
  if (stake == 0) return(1) else return(0)
}   

k <- 10 
n <-  40  
p <- 1/2  
jugadas <- 1000
lista <- replicate(jugadas,jugador(k, n, p))
mean(lista) # Se estima la probabilidad de que el jugador quede arruinado
# para p = 0.5, la probabilidad exacta es (n-k)/n (caminata simétrica)

