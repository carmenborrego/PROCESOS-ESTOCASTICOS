
#ejemplo 1
tm<-matrix(c(0.7,0.1,0.2,0.0,0.6,0.4,0.5,0.2,0.3),
           nrow=3,ncol=3,byrow=TRUE)

tm.tr<-t(tm)
library(diagram)
plotmat(tm.tr,pos=c(1,2),arr.length=0.3,arr.width=0.1,
        box.col="lightblue",box.lwd=1,box.prop=0.5,box.size=0.12,
        box.type="circle",cex.txt=0.8,lwd=1,self.cex=0.6,
        self.shiftx=0.17,self.shifty=-0.01)

library(expm)
#da la matriz a los 3 pasos 
print(tm3<-tm% ^ % 3)
#calcular la distribucion incondicional
init.p<-c(1/3,1/3,1/3)
#init.p% * %tm3
library(markovchain)
mc<-new("markovchain",transitionMatrix=tm,states=c("1",
                                                   "2","3"))
recurrentClasses(mc)
transientClasses(mc)
absorbingStates(mc)
period(mc)
round(steadyStates(mc),digits=4)

#ejemplo 2
tm<-matrix(c(0.3,0.7,0,0,0,0,1,0,0,0,0,0,0.5,0,0,0,0,0.5,
             0,0,0.6,0,0,0.4,0,0,0,0,0.1,0.9,0,0,0,0,0.7,0.3),nrow=6,
           ncol=6,byrow=TRUE)
tm.tr<-t(tm)
plotmat(tm.tr,arr.length=0.3,arr.width=0.1,box.col="light blue",box.lwd=1,box.prop=0.5,box.size=0.09,
        box.type="circle",cex.txt=0.8,lwd=1,self.cex=0.3,
        self.arrpos=0.3,self.shiftx=0.09,self.shifty=-0.05)

mc<-new("markovchain",transitionMatrix=tm,states=c("1",
                                                   "2","3","4","5","6"))
recurrentClasses(mc)
transientClasses(mc)
#encontrar los periodos de una cadena irreductible
tm12.ir<-matrix(c(0.3,0.7,1,0),nrow=2,ncol=2,byrow=TRUE)
mc12.ir<-new("markovchain",transitionMatrix=tm12.ir,
             states=c("1","2"))
period(mc12.ir)

tm56.ir<-matrix(c(0.1,0.9,0.7,0.3),nrow=2,ncol=2,
                byrow=TRUE)
mc56.ir<-new("markovchain",transitionMatrix=tm56.ir,
             states=c("5","6"))
period(mc56.ir)


#encontrar los estados estacionarios de la cadena 
round(steadyStates(mc),digits=4)

#otras funciones últiles 
# numero total de trayectorias 
#ntraj.name<- ntraj.value

#para encontrar el numero total de pasos
#nsteps.name<- nsteps.value

#el producto final de la simulación de estados 
#es una matriz con dimensiones nsteps.value y ntraj.value 
#con columnas que contienen los nombres de los estados 
#para las trayectorias individuales
for(iin1:ntraj.name)
    states.matrix.name[,i]<-rmarkovchain(n=nsteps.name-1,
                                       object=mc.name,
                                       t0=init.state.name, includpe.t0=TRUE)


#probabilidad inicial 
#init.prob.name<-c(p1.value, p2.value, ..., pk.value)

#para especificar la matriz que contiene los estados 
#states.matrix.name<-matrix(NA,nrow=nsteps.name, ncol=ntraj.name)

#seed 
#set.seed(value)

#generar estado inicial 
#init.state.name<-sample(1:k,1,prob=init.prob.name)

#simular estados 
# for(iin1:ntraj.name)
#states.matrix.name[,i]<-rmarkovchain(n=nsteps.name-1, object=mc.name, t0=init.state.name, include.t0=TRUE)
#función sample(1:k 1, prob=init.prob.name)
#genera una estado de entre k estados considerando la distribucion y 
#l vector de probabilidad init.prob.name


#graficar trayectorias simuladas 
#en argumentos podemos cambiar la configuracio´n de lineas colores etc
#para remarcar los pasos podemos poner los puntos 
#points(1:nsteps, MC.states[,1],pch=16, col=3)
#points(1:nsteps, MC.states[,2],pch=16, col=4)
#matplot(states.matrix.name, <arguments>)

#graficar probabiliades contra el tiempo pasos por estado 
#matplot(probs.matrix.name, type="l",lty=1,col=a:b, ylim=c(lower.value,upper.value),ylab="probability",xlab="step")
