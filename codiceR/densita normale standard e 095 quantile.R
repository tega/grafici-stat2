# TODO: Add comment
# 
# Author: ortellic
###############################################################################

pdf(file="grafici/standardNormalDensityWith095Quantile.pdf")

x <- seq(-3.5,3.5,length.out = 100)
y <- dnorm(x)

q95 <- qnorm(0.95)

Xd <- seq(q95,-1.5,length.out=30)
Yd<- dnorm(Xd,mean=2)
Xd <- c(q95,Xd,Xd[30])
Yd <- c(0,Yd,0)

#Xd <- c(Xd,NA,q95,seq(q95,3.5,length.out=30),seq(q95,3.5,length.out=30)[30])
#Yd <- c(Yd,NA,0,dnorm(seq(q95,3.5,length.out=30)),0)

x <- seq(-5,5,length.out = 100)
y <- dnorm(x,mean=0,sd=1)


plot(x,y,xlab=expression(mu==0),type="l",ylab=expression(f(x)),
		panel.first=polygon(Xd,Yd,col="coral",border = NA),
		las=1,axes=FALSE,xlim=c(-5,5),ylim=c(0,0.4))


Axis(at=(0:4)/10,side=2,las=1)
Axis(at=-5:5,side=1)

y <- dnorm(x,mean=2,sd=1)
lines(x,y,type="l",lty=2)
abline(v=q95,lty=3)
text(-1.8, 0.35, expression(H[0]),pos=4,cex = 1.5)
text(3, 0.35, expression(H[A]),pos=4,cex = 1.5)

Xd <- c(q95,seq(q95,3.5,length.out=30),seq(q95,3.5,length.out=30)[30])
Yd <- c(0,dnorm(seq(q95,3.5,length.out=30)),0)
polygon(Xd,Yd,col="yellow",border = NA)

text(0.65, 0.065, expression(beta),pos=4,cex = 1.5)
text(2, 0.025, expression(alpha),cex = 1)

dev.off()