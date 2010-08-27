# TODO: Add comment
# 
# Author: ortellic
###############################################################################

#pdf(file="standardNormalDensityWith095Quantile.pdf"
#		,width=12,height=10)
x <- seq(-3.5,3.5,length.out = 100)
y <- dnorm(x)

q05 <- qnorm(0.05)
q95 <- -q05

f05 <- dnorm(q95)

Xd <- seq(q95,3.5,length.out=30)
Yd<- dnorm(Xd)
Xd <- c(q95,Xd,Xd[30])
Yd <- c(0,Yd,0)

Xs <- seq(-3.5,q05,length.out=30)
Ys<- dnorm(Xs)
Xs <- c(Xs[1],Xs,q05)
Ys <- c(0,Ys,0)

X <- c(Xs,q05,Xd)
Y <- c(Ys,NA,Yd)
plot(x,y,xlab=expression(mu==0),type="l",ylab=expression(y),
		panel.first=polygon(X,Y,col="lightcyan",border = NA),
		las=1,axes=FALSE,xlim=c(-4,4))
lines(c(0,0),c(-1,dnorm(0)),lty=3)
lines(x=c(q95,q95),y=c(0,dnorm(q95)),type="l",lty=3)
lines(x=c(q05,q05),y=c(0,dnorm(q05)),type="l",lty=3)
Axis(at=seq(-4,4,by=1),side=1)
Axis(side=2,las=1)

text(-2.1, 0.04, expression(P(Z<=-1.64) ~ ~ phantom(0) %->% phantom(0)),
		pos=2,cex = 0.8)
text(2.1, 0.04, expression(phantom(0) %<-% phantom(0) ~ ~ P(Z>=+1.64)),
		pos=4,cex = 0.8)
text(q05,-0.006,-1.64,cex = 0.8)
text(q95,-0.006,"+1.64",cex = 0.8)

#dev.off()