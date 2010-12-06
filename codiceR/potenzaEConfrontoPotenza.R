# TODO: Add comment
# 
# Author: claudio
###############################################################################


pdf(file="grafici/potenzaXMin.pdf")

x <- seq(-0.545,-0.525,length.out = 100)
y <- 1 - pnorm((-0.539-x)/0.008*sqrt(5))

plot(x,y,xlab=expression(mu),type="l",ylab=expression(beta),
		xlim=c(-0.545,-0.525),ylim=c(0,1))


points(x=-0.545, y=0.05,pch=19)
text(-0.546,0.02,expression(H[0]:mu==-0.545),pos=4,cex = 0.8)

dev.off()




pdf(file="grafici/potenzaMediaEpotenzaXMin.pdf")

x <- seq(-0.545,-0.525,length.out = 100)
y1 <- 1 - pnorm((-0.539-x)/0.008*sqrt(5))
y2 <- (1 - pnorm(-0.5459907,mean=x,sd=0.008))^5

plot(x,y1,xlab=expression(mu),type="l",ylab=expression(beta),
		xlim=c(-0.545,-0.525),ylim=c(0,1))

lines(x,y2,type="l",lty=3)

points(x=-0.545, y=0.05,pch=19)
text(-0.546,0.02,expression(H[0]:mu==-0.545),pos=4,cex=0.8)
text(-0.542,0.8,expression(Potenza~di~S==bar(X)[5]),pos=4,cex=0.8)
text(-0.53,0.8,expression(Potenza~di~S==min(X[1],",",...,",",X[5])),pos=4,cex=0.8)

dev.off()
