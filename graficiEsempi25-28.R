# TODO: Add comment
# 
# Author: ortellic
###############################################################################


#pdf(file="pdf"
#		,width=12,height=10)
# grafico esempio 25
f <- function(x) {
	exp(-1/(2*0.005^2)*(x-0.6)^2)/sqrt(2*pi)/5*1000
}


x <- seq(0.585,0.615,length.out = 100)
y <- f(x)

plot(x,y,type="l",axes=FALSE,
		xlab=expression(H[0]:~ ~mu==0.60),ylab="y")

Axis(at=seq(0.585,0.615,by=0.005),side=1)
Axis(side=2,las=1)
text(0.604,70,expression(f[X]),cex=1.5)


#dev.off()

#pdf(file="pdf"
#		,width=12,height=10)
# grafico esempio 27
f <- function(x) {
	sigma2=0.008^2/5
	exp(-1/(2*sigma2)*(x+0.545)^2)/sqrt(2*pi*sigma2)
}


x <- seq(-0.555,-0.535,length.out = 100)
y <- f(x)

plot(x,y,type="l",axes=FALSE, 
		xlab=expression(H[0]:~ ~mu==-0.545),ylab="y")

Axis(at=seq(-0.555,-0.535,by=0.005),side=1)
Axis(side=2,las=1)
text(-0.542,95,expression(f[bar(X)[5]]),cex=1.5)


#dev.off()

#pdf(file="pdf"
#		,width=12,height=10)
# grafico esempio 28
f <- function(x) {
	sigma2=0.001^2
	exp(-1/(2*sigma2)*(x-0.6)^2)/sqrt(2*pi*sigma2)
}


x <- seq(0.596,0.604,length.out = 100)
y <- f(x)

plot(x,y,type="l",axes=FALSE, 
		xlab=expression(H[0]:~ ~mu==0.6),ylab="y")

Axis(at=seq(0.596,0.604,by=0.001),side=1)
Axis(side=2,las=1)
text(0.6013,350,expression(f[bar(X)[25]]),cex=1.5)


#dev.off()
