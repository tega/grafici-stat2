# TODO: Add comment
# 
# Author: claudio
###############################################################################

library("multicore")
setwd("/home/claudio/eclipse/grafici-stat2/iti")
n <- 50 # numero di osservazioni
m <- 1000  # numero di ripetizioni nel calcolo della binding function
K <- 3 # numero di variabili esplicative modello ausiliario

# simula la x e per il modello ausiliario la z
x <- rnorm(n,1,0.16)
z <- x^2

# calcola il vettore del prodotto X_i*y_i per il calcolo delle moment conditions
dati <- matrix(c(rep(1,n),x,z),ncol=n,byrow=TRUE)
XX.l <- apply(dati,2,function(x){return(x%*%t(x))})
XX.l <- mclapply(1:n,function(i,X,K){return(matrix(X[,i],ncol=K))},XX.l,K)

# simula gli errori
epsilon <- rnorm(n)

# simula le y al modello
rho <- 2.5
X <- exp(x)
y <- rho * X + epsilon

# calcola il vettore del prodotto X_i*y_i per il calcolo delle moment conditions
Xy.l <- mclapply(1:n,function(i,dati,y){return(dati[,i]*y[i])},dati,y)

# stima theta
estimateTheta <- function(y,x,z) {
	result <- lm(y~x+z)
	result$coefficients
}

dgpErroriStimati <- function(rhoHat,y,X) {
	# restituisce gli errori stimati dato un valore del parametro rho
	epsilonHat <- y - rhoHat * X 
}

simulaDGP <- function(simulatedEpsilon,rho,X) {
	y <- rho * X + simulatedEpsilon
}

campiona <- function(n) {
	sampled <- sample(n,replace=TRUE)
	return(sampled)
}

sampledIntegers.l <- mclapply(rep(n,m),campiona)

campionaErrori <- function(v,erroriStimati) {
	return(erroriStimati[v])
}

empiricalBindingFunction <- function(rho) {

	erroriStimati <- dgpErroriStimati(rhoHat=rho,y,X)
	campione.l <- mclapply(sampledIntegers.l,campionaErrori,erroriStimati)
	simulaDGP.l <- mclapply(campione.l,simulaDGP,rho,X)
	estimateTheta.m <- sapply(simulaDGP.l,estimateTheta,x,z)
	result <- apply(estimateTheta.m,1,mean)
}

psi <- function(rho) {
	# questa funzione restituisce una lista di lunghezza n
	# coi vettori Kx1 della moment condition Psi(X_i,rho), 
	# i=1,...,n

	bf <- empiricalBindingFunction(rho)
	XX.l <- mclapply(XX.l,function(x,bf){return(as.vector(x%*%bf))},bf)
	psi.l <- mclapply(1:length(XX.l),function(i,x,y){return(x[[i]]-y[[i]])},XX.l,Xy.l)
	psi.m <- matrix(unlist(psi.l),nrow=length(psi.l),byrow=TRUE)
	colnames(psi.m) <- names(bf)
	return(psi.m)
}


objective <- function(rho,t) {
	psi.m <- psi(rho)
	tPsi.v <- exp(as.vector(psi.m%*%t))
	denumerator <- sum(tPsi.v)
	
	K_t <- function(rho,t) { # the derivative of K as in Imbens, Spady and Johnson
		pi.v <- tPsi.v/denumerator
		weightedPsi.m <- pi.v * psi.m
		result <- apply(weightedPsi.m,2,sum)
	}
	Kt <- K_t(rho,t)
	K <- log(denumerator/n)
	obj <- K - 0.5 * 1000000*sum(Kt^2)
}

objfunc <- function(x) {
	rho = x[1]
	t = x[2:(K+1)]
	return(-objective(rho,t))
}

#initial values
initPar = c(3,rep(1,K))
optim(par=initPar,fn=objfunc)


# Load the R MPI package if it is not already loaded. 
if (!is.loaded("mpi_initialize")) { 
	library("Rmpi") 
} 
# Spawn as many slaves as possible 
mpi.spawn.Rslaves() 

# In case R exits unexpectedly, have it automatically clean up 
# resources taken up by Rmpi (slaves, memory, etc...) 
.Last <- function(){ 
	if (is.loaded("mpi_initialize")){ 
		if (mpi.comm.size(1) > 0){ 
			print("Please use mpi.close.Rslaves() to close slaves.") 
			mpi.close.Rslaves() 
		} 
		print("Please use mpi.quit() to quit R") 
		.Call("mpi_finalize") 
	} 
} 

# Tell all slaves to return a message identifying themselves 
mpi.remote.exec(paste("I am",mpi.comm.rank(),"of",mpi.comm.size())) 

# Tell all slaves to close down, and exit the program 
mpi.close.Rslaves() 
mpi.quit() 
