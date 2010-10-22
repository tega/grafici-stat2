# TODO: Add comment
# 
# Author: ortellic
###############################################################################


pdf(file="grafici/convergenzaInProbabilita1.pdf")
f <- function(x,mu=0,sigma=2) {
	exp(-1/(2*sigma^2)*(x-mu)^2)/sqrt(sigma^2*pi)
}


x <- seq(-4,4,length.out = 100)
y <- f(x,sigma=1.3)

xPol1 <- seq(-4,-3,length.out=20)
yPol1 <- f(xPol1,sigma=1.3)

xPol1 <- c(-4,xPol1,-3)
yPol1 <- c(0,yPol1,0)

xPol2 <- seq(3,4,length.out=20)
yPol2 <- f(xPol2,sigma=1.3)

xPol2 <- c(3,xPol2,4)
yPol2 <- c(0,yPol2,0)

xPol = c(xPol1,NA,xPol2)
yPol = c(yPol1,NA,yPol2)


plot(x,y,type="l",axes=FALSE,
		xlab="",ylab="",panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))

Axis(at=-4:4,side=1, labels=c("",expression(mu - epsilon),"","",expression(mu),"","",expression(mu + epsilon),""))
Axis(side=2,las=1)
abline(v=0)
# segments(x0=-3, y0=0, x1 = -3, y1 = f(-3,sigma=1.3))
# segments(x0=3, y0=0, x1 = 3, y1 = f(3,sigma=1.3))
text(1.7,0.3,expression(f[bar(X)[n]]),cex = 1.5)

dev.off()

