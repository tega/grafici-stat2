# TODO: Add comment
# 
# Author: claudio
###############################################################################

setwd("/home/claudio/eclipse/grafici-stat2/iti")
n <- 5 # numero di osservazioni
m <- 100  # numero di ripetizioni nel calcolo della binding function
K <- 3 # numero di variabili esplicative modello ausiliario

# simula la x e per il modello ausiliario la z
x <- rnorm(n,1,0.16)
z <- x^2

# calcola il vettore del prodotto X_i*y_i per il calcolo delle moment conditions
dati <- matrix(c(rep(1,n),x,z),ncol=n,byrow=TRUE)
XX.l <- apply(dati,2,function(x){return(x%*%t(x))})
XX.l <- lapply(1:n,function(i,X,K){return(matrix(X[,i],ncol=K))},XX.l,K)

# simula gli errori
epsilon <- rnorm(n)

# simula le y al modello
rho <- 2.5
X <- exp(x)
y <- rho * X + epsilon

# calcola il vettore del prodotto X_i*y_i per il calcolo delle moment conditions
Xy.l <- lapply(1:n,function(i,dati,y){return(dati[,i]*y[i])},dati,y)

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

sampledIntegers.l <- lapply(rep(n,m),campiona)

campionaErrori <- function(v,erroriStimati) {
	return(erroriStimati[v])
}

empiricalBindingFunction <- function(rho) {

	erroriStimati <- dgpErroriStimati(rhoHat=rho,y,X)
	campione.l <- lapply(sampledIntegers.l,campionaErrori,erroriStimati)
	simulaDGP.l <- lapply(campione.l,simulaDGP,rho,X)
	estimateTheta.m <- sapply(simulaDGP.l,estimateTheta,x,z)
	result <- apply(estimateTheta.m,1,mean)
}

psi <- function(rho) {
	# questa funzione restituisce una lista di lunghezza n
	# coi vettori Kx1 della moment condition Psi(X_i,rho), 
	# i=1,...,n
	
	bf <- empiricalBindingFunction(rho)
	
}

K_t <- function(rho,t) {
	
}


a <- empiricalBindingFunction(rho=2.5)
