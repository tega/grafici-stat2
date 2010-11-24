# TODO: Add comment
# 
# Author: ortellic
###############################################################################

pdf(file="grafici/densitaXmin.pdf")


f <- function(x) {
	sigma=0.008
	mu = -0.545
	F <- pnorm(x,mean=mu,sd=sigma)
	return(5*(1-F)^4*dnorm(x,mean=mu,sd=sigma))
}

x <- seq(-0.565,-0.535,length.out = 100)
y <- f(x)

xPol <- c(-0.542,seq(-0.542,-0.535,by=0.001))
yPol <- c(0,f(xPol),0)
xPol <- c(-0.542,xPol,-0.535)



plot(x,y,type="l",
		ylab=expression(y),
		xlab="",
		axes=FALSE,
		xlim=c(-0.565,-0.535),
		ylim=c(0,80),
		panel.first=polygon(xPol,yPol,col="lightcyan",border = NA)
)

Axis(at=seq(-0.565,-0.535,by=0.005),side=1)
Axis(x=c(0,80),at=seq(0,80,by=20),side=2,las=1)
lines(x=c(-0.542,-0.542),y=c(0,40),lty=3)

text(-0.56,60,expression(f[S]),cex=1.5)
mtext(expression(-0.542),side=1,at=c(-0.5435,-5),adj=0,cex=0.8)
text(-0.542+0.00016,f(-0.542),expression(phantom(0) %->% H[A]),cex=1,pos=4)
text(-0.542-0.00016,f(-0.542),expression(H[0] %<-% phantom(0)),cex=1,pos=2)
text(-0.542,45,expression(paste(P[H[0]] ~ (S >= -0.542) == 0.5545, symbol("%"))),cex=1)

dev.off()