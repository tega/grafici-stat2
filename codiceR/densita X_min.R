# TODO: Add comment
# 
# Author: ortellic
###############################################################################

pdf(file="densitaXmin.pdf")


f <- function(x) {
	sigma=0.008
	mu = -0.545
	F <- pnorm(x,mean=mu,sd=sigma)
	return(5*(1-F)^4*dnorm(x,mean=mu,sd=sigma))
}

x <- seq(-0.575,-0.535,length.out = 100)
y <- f(x)
		
plot(x,y1,type="l",
		ylab=expression(y),
		axes=FALSE,
		xlim=c(-0.575,-0.535)
)

Axis(at=seq(-0.575,-0.535,by=0.005),side=1)
Axis(side=2,las=1)

text(-0.56,60,expression(f[X[min]]),cex=1.5)


dev.off()