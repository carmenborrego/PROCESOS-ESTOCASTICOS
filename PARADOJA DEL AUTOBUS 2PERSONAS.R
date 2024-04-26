#TENEMOS DOS PERSONAS QUE EST�N EN LA PARADA 
#LA LLEGADA DEL AUTOBUS SIGUE POISSON 
#LAMBDA 1/30 (LLEGA UN CAMION CADA 30 MIN)
#AMY LLEGA JUSTO CUANDO SE VA TENDRIAS QUE ESPERAR 30 MIN
#ZACH LLEGA 10 MINUTOS DESPUES QUE AMY 
#MEMORYLESSNESS (SIN MEMORIA)
#EN PROMEDIO AMBAS PERSONAS ESPERAN EL MISMO TIEMPO 
#LA DISTRIBUCI�N EXPONENCIAL ES LA �NICA DIST CONTINUA
#QUE NO TIENE MEMORIA 
#LA DISTRIBUCI�N GEOM�TRICA DISCRETAS ES LA DISTRIBUCI�N
#DE LAS DISCRETAS QUE NO TIENE MEMORIA



trials <- 5000
amy <- numeric(trials)
zach <- numeric(trials)
for (i in 1:trials) {
  bus <- rexp(1,1/30)
  amy[i] <- bus
  while (bus < 10) { bus <- bus + rexp(1,1/30) }
  zach[i] <- bus-10
}
mean(amy)
mean(zach)
par(mfrow=c(1,2))
hist(amy,xlab="",prob=T,ylab="",main="",yaxt="n")
mtext(1,text="Amy")
axis(2,at=c(0,.01,.02),labels=c(0,0.01, 0.02))
hist(zach,xlab="",prob=T,ylab="",yaxt="n",main="")
mtext(1,text="Zach")
axis(2,at=c(0,.01,.02),labels=c(0,0.01,0.02))