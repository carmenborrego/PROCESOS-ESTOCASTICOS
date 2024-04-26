sim <- replicate(10000,
                 min(rexp(1,1/15),rexp(1,1/15),rexp(1,1/20)))
mean(sim)
#MÍNIMO DE TIEMPO A QUE LLEGUE UN TREN DE CUALQUIER COLOR
