#se genera una caminata aleatoria SIN DERIVA
#se consideran dos opciones: 
#caminata con deriva y caminata sin deriva (drift)
#random walk with drift o random walk withour drift 
#sin deriva o desv�o (no tiene constante ni intercepto)
#con deriva o desv�o (hay un t�mino constante)
#t�rminos a utilizar 
#n�mero de per�odos N 
#valor iniciar (x0)
#deriva (drft) mu
#varianza 

CA <- function(N, x0, mu, variance) {
  z<-cumsum(rnorm(n=N, mean=0, 
                  sd=sqrt(variance)))
  t<-1:N
  x<-x0+t*mu+z
  return(x)
}


P1<-CA(100,10,0,0.0004)
P2<-CA(100,10,0,0.0004)
plot(P1, main="Caminata aleatoria sin deriva", 
     xlab="t",ylab="Precio", ylim=c(9.7,10.3),
     typ='l', col="red")
par(new=T)  #se deibuja en la misma gr�fica
plot(P2, main="Caminata aleatoria sin deriva", 
     xlab="t",ylab="Price", ylim=c(9.7,10.3),
     typ='l', col="blue")

