# MOVIMIENTO BROWNIANO EN R 
# SIMULACION DE MOVIMIENTO BROWNIANO [0, t]

n <- 1000
t <- 1
mb <- c(0,cumsum(rnorm(n,0,sqrt(t/n))))
steps <- seq(0,t,length=n+1)
plot(steps,mb,type="l")
