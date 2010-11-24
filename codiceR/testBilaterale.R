# TODO: Add comment
# 
# Author: ortellic
###############################################################################


pdf(file="grafici/k005TestBilaterale.pdf")
# test bilaterale

f <- function(x) {
	sigma2=0.001^2
	exp(-1/(2*sigma2)*(x-0.6)^2)/sqrt(2*pi*sigma2)
}


x <- seq(0.596,0.604,length.out = 100)
y <- f(x)

xPol1 <- c(0.596,seq(0.596,0.59804,by=0.0001))
yPol1 <- c(0,f(xPol1),0)
xPol1 <- c(0.596,xPol1,0.59804)

xPol2 <- c(0.60196,seq(0.60196,0.604,by=0.0001))
yPol2 <- c(0,f(xPol2),0)
xPol2 <- c(0.60196,xPol2,0.604)

xPol <- c(xPol1,NA,xPol2)
yPol <- c(yPol1,NA,yPol2)


plot(x,y,type="l",axes=FALSE, 
		xlab=expression(H[0]:~ ~mu==0.6),
		ylab="y",
		panel.first=polygon(xPol,yPol,col="lightcyan",border = NA)
)

Axis(at=seq(0.596,0.604,by=0.001),side=1)
Axis(side=2,las=1)

abline(v=0.6,lty=3)


lines(x=c(0.59804,0.59804),y=c(0,f(0.59804)),lty=3)
lines(x=c(0.60196,0.60196),y=c(0,f(0.60196)),lty=3)

text(0.60196+0.00016,f(0.60196),expression(phantom(0) %->% H[A]),cex=1,pos=4)
text(0.60196-0.00016,f(0.60196),expression(H[0] %<-% phantom(0)),cex=1,pos=2)


text(0.59804+0.00016,f(0.59804),expression(H[A] %<-% phantom(0)),cex=1,pos=2)
text(0.59804-0.00016,f(0.59804),expression(phantom(0) %->% H[0]),cex=1,pos=4)


text(0.6005,400,expression(f[bar(X)[25]]),cex=1.5)
text(0.60196,10,expression(paste(2.5, symbol("%"))),cex=0.8,pos=4)
text(0.59814,10,expression(paste(2.5, symbol("%"))),cex=0.8,pos=2)

text(0.59808,-7,expression(paste(k[s,5,symbol("%"),])),cex=1)
text(0.60192,-7,expression(paste(k[d,5,symbol("%"),])),cex=1)

dev.off()


