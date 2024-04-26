#MOVIMIENTO BROWNIANO

set.seed(1234)
T=1
deltat=1/(252)
N=T/deltat
B=NULL
B[1]=0
for(t in 2:(N+1)) {
  B[t]=B[t???1]+rnorm(1)???sqrt(deltat)
}
matplot(B,type="l")




#MOVIMIENTO BROWNIANO GENERALIZADO 
set.seed(12047)
T=1
deltat =1/252
N=T/deltat
B=NULL
B[1]=10
tiempo=seq(1,(N+1),1)
mu=0.1
sigma =0.2
for(t in 2:(N+1)){
  B[t]=B[t???1]+mu???deltat+sigma???rnorm(1)???sqrt(deltat)
}
intercepto=lm(B~tiempo)$coef[1]
  pendiente=lm(B~tiempo)$coef[2]
    y1=intercepto+pendiente???(tiempo)
    matplot(cbind(B, y1), type="l")
      legend("topleft", inset=0.05, 
             legend=c("Varianza","Media"),
       lwd=2, lty=c(1, 1), col=c("black", "red"), bty="n")
      
set.seed(345)
epsilon=rnorm( 4 , 0 , 1 )
mu=0.07
sigma =0.25
deltat=1/252
S=NULL
S[1]=25400
for (t in 2:5) {
  S[t]=S[t???1]???exp(mu???deltat+sigma*epsilon[t-1]*sqrt(deltat))
}
S
      
      
       