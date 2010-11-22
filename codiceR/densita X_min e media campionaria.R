# TODO: Add comment
# 
# Author: ortellic
###############################################################################

pdf(file="confrontoFxMinFxMedio.pdf")
fx <- function(x) {
	dnorm(x,mean=-0.545,sd=0.008/sqrt(5))
}

fMin <- function(x) {
	sigma=0.008
	mu = -0.545
	F <- pnorm(x,mean=mu,sd=sigma)
	5*(1-F)^4*dnorm(x,mean=mu,sd=sigma)
}

x <- seq(-0.575,-0.535,length.out = 100)
y1 <- fx(x)
yMin <- fMin(x)
		
plot(x,y1,type="l",
		ylab=expression(y),lty=3
		,axes=FALSE,
		xlim=c(-0.575,-0.535)
)
lines(x,yMin)

Axis(at=seq(-0.575,-0.535,by=0.005),side=1)
Axis(side=2,las=1)
text(-0.542,105,expression(f[bar(X)[5]]),cex=1.5)
text(-0.56,60,expression(f[X[min]]),cex=1.5)


dev.off()