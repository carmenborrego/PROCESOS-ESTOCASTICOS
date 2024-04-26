#El tiempo de la 60th tiene una distribución gamma
#con parametros n=60 y lambda=20 
#la probabilidad deseada es P(2.9<S60<3)

pgamma(3,60,20)-pgamma(2.9,60,20)

#para un proceso de Poisson cada tiempo de llegada 
#Sn es la suma de n i.i.d, con 
#tiempo de interarribo exonenciales 
#una suma de variables exponenciales i.i.d. tiene
#una distribución gama