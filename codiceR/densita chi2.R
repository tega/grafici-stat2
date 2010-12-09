# TODO: Add comment
# 
# Author: claudio
###############################################################################


pdf(file="grafici/densitaChi2.pdf")
x <- seq(0,10,length.out = 100)
y1 <- dchisq(x,df=2)

y2 <- dchisq(x,df=5)



plot(x,y1,xlab="x",ylab=expression(f(x,m)),type="l")
lines(x,y2)

text(1,0.4,expression(chi[2]^2),cex=1.2)
text(5,0.16,expression(chi[5]^2),cex=1.2)

dev.off()


pdf(file="grafici/Test_densitaChi2.pdf")

x <- seq(0,16,length.out = 100)
y <- dchisq(x,df=5)

Xd <- seq(q95,16,length.out=50)
Yd<- dchisq(Xd,df=5)
Xd <- c(q95,Xd,Xd[50])
Yd <- c(0,Yd,0)

q95 <- qchisq(0.95,5)
plot(x,y,xlab="x",ylab=expression(f(x)),
		type="l",
		panel.first=polygon(Xd,Yd,col="coral",border = NA),
		las=1,axes=FALSE,xlim=c(0,16),ylim=c(0,0.16)
)
Axis(at=seq(0,0.16,length.out=9),side=2,las=1)
Axis(at=seq(0,16,length.out=9),side=1)

lines(x=c(q95,q95),y=c(0,dchisq(q95,5)))
text(5,0.14,expression(chi[5]^2),cex=1.2)
text(12,0.006,expression(alpha==paste(5,symbol("%"))))
text(q95, -0.0022, expression(k[paste(5,symbol("%"))]),cex = 1)


dev.off()
