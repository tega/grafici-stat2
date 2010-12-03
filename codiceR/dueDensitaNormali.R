# TODO: Add comment
# 
# Author: ortellic
###############################################################################

pdf(file="grafici/dueDensitaNormali.pdf")

x <- seq(-5,5,length.out = 100)
y <- dnorm(x,mean=0,sd=1)

plot(x,y,xlab="x",type="l",lty=1,
		las=1,ylab=expression(f(x)),
		main="",
#		axes=FALSE,
		xlim=c(-5,5),ylim=c(0,0.4))
#Axis(at=(0:4)/10,side=2,las=1)
#Axis(at=-4:5,side=1)

y <- dnorm(x,mean=2,sd=1)
lines(x,y,type="l",lty=2)
#abline(v=0,lty=3)
text(-1.8, 0.35, expression(H[0]),pos=4,cex = 1.5)
text(3, 0.35, expression(H[A]),pos=4,cex = 1.5)

dev.off()
