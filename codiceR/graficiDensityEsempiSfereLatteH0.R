# TODO: Add comment
# 
# Author: ortellic
###############################################################################


pdf(file="grafici/densityPenneSfereH0.pdf")

f <- function(x) {
	exp(-1/(2*0.005^2)*(x-0.6)^2)/sqrt(2*pi)/5*1000
}

x <- seq(0.585,0.615,length.out = 100)
y <- f(x)

plot(x,y,type="l",axes=FALSE,
		xlab=expression(H[0]:~ ~mu==0.60),ylab="y")
abline(v=0.6,lty=3)

Axis(at=seq(0.585,0.615,by=0.005),side=1)
Axis(side=2,las=1)
text(0.604,70,expression(f[X]),cex=1.5)

dev.off()


pdf(file="grafici/densityLatteH0.pdf")
f <- function(x) {
	sigma2=0.008^2/5
	exp(-1/(2*sigma2)*(x+0.545)^2)/sqrt(2*pi*sigma2)
}


x <- seq(-0.555,-0.535,length.out = 100)
y <- f(x)

plot(x,y,type="l",axes=FALSE, 
		xlab=expression(H[0]:~ ~mu==-0.545),ylab="y")
abline(v=-0.545,lty=3)
Axis(at=seq(-0.555,-0.535,by=0.005),side=1)
Axis(side=2,las=1)
text(-0.542,95,expression(f[bar(X)[5]]),cex=1.5)


dev.off()


pdf(file="grafici/densityLatteH0Pvalore.pdf")
f <- function(x) {
	sigma2=0.008^2/5
	exp(-1/(2*sigma2)*(x+0.545)^2)/sqrt(2*pi*sigma2)
}


x <- seq(-0.550,-0.532,length.out = 100)
y <- f(x)

xPol <- c(-0.536,seq(-0.536,-0.525,by=0.001))
yPol <- c(0,f(xPol),0)
xPol <- c(-0.536,xPol,-0.525)

plot(x,y,type="l",axes=FALSE, 
		xlab="",
		ylab="y",
		panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))

abline(v=-0.545,lty=3)
lines(x=c(-0.536,-0.536),y=c(f(-0.536)+5,100))

Axis(at=seq(-0.555,-0.530,by=0.005),side=1)
Axis(side=2,las=1)
text(-0.549,95,expression(f[bar(X)[5]]),cex=1.5)

text(-0.536,65,expression(phantom(0) %->% H[A]),cex=1,pos=4)
text(-0.536,65,expression(H[0] %<-% phantom(0)),cex=1,pos=2)
text(-0.545,30,expression(H[0]:~ ~mu==-0.545),cex=1)
text(-0.536,105,expression(bar(x)[5]==-0.536),cex=1)

dev.off()





pdf(file="grafici/densityPenneSfereH0Pvalore.pdf")

f <- function(x) {
	sigma2=0.001^2
	exp(-1/(2*sigma2)*(x-0.6)^2)/sqrt(2*pi*sigma2)
}


x <- seq(0.596,0.604,length.out = 100)
y <- f(x)

xPol1 <- c(0.596,seq(0.596,0.5985,by=0.0001))
yPol1 <- c(0,f(xPol1),0)
xPol1 <- c(0.596,xPol1,0.5985)

xPol2 <- c(0.6015,seq(0.6015,0.604,by=0.0001))
yPol2 <- c(0,f(xPol2),0)
xPol2 <- c(0.6015,xPol2,0.604)

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
lines(x=c(0.6015,0.6015),y=c(0,f(0.6015)),lty=3)
lines(x=c(0.5985,0.5985),y=c(0,f(0.5985)),lty=3)
lines(x=c(0.6015,0.6015),y=c(f(0.6015),350))
lines(x=c(0.5985,0.5985),y=c(f(0.5985),350))


text(0.6005,400,expression(f[bar(X)[25]]),cex=1.5)
text(0.5985,365,expression(bar(x)[25]==0.5985),cex=1)
text(0.6015,365,expression(0.6 + group("|",bar(x)[25]-0.6,"|")),cex=1)

text(0.6015-0.00016,f(0.6015),expression(phantom(0) %->% H[A]),cex=1,pos=4)
text(0.6015+0.00016,f(0.6015),expression(H[0] %<-% phantom(0)),cex=1,pos=2)
text(0.5985+0.00016,f(0.5985),expression(H[A] %<-% phantom(0)),cex=1,pos=2)
text(0.5985-0.00016,f(0.5985),expression(phantom(0) %->% H[0]),cex=1,pos=4)

dev.off()
