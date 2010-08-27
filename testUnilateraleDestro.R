# TODO: Add comment
# 
# Author: ortellic
###############################################################################


#pdf(file="pdf"
#		,width=12,height=10)
# grafico esempio 27
f <- function(x) {
	sigma2=0.008^2/5
	exp(-1/(2*sigma2)*(x+0.545)^2)/sqrt(2*pi*sigma2)
}


x <- seq(-0.555,-0.535,length.out = 100)
y <- f(x)

q95 <- -0.539
Y <- f(X)
Xd <- seq(q95,-0.535,length.out=30)
Yd<- f(Xd)
Xd <- c(q95,Xd,Xd[30])
Yd <- c(0,Yd,0)


plot(x,y,type="l",axes=FALSE,xlim=c(-0.555,-0.535),
		panel.first=polygon(Xd,Yd,col="lightcyan",border = NA),
		xlab=expression(H[0]:~ ~mu==-0.545),ylab="y")

Axis(at=seq(-0.555,-0.535,by=0.005),side=1,labels=c("-0.555","-0.55","-0.545","-0.54","-0.535"))
Axis(side=2,las=1)
text(-0.542,95,expression(f[bar(X)[5]]),cex=1.5)
mtext(expression(k [95]==-0.539),side=1,at=c(q95,-1),adj=0) 
lines(c(q95,q95),c(0,f(q95)),lty=3)
lines(c(-0.545,-0.545),c(-1,f(-0.545)),lty=3)
#dev.off()


