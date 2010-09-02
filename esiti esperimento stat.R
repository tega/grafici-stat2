# TODO: Add comment
# 
# Author: ortellic
###############################################################################

a <- expand.grid(1:6,1:6)
plot(a,axes=FALSE,pch=19,xlab=expression(Omega[1]),
		ylab=expression(Omega[2]))
 Axis(at=1:6,labels=1:6,side=2,las=1)
 Axis(at=1:6,labels=1:6,side=1)

for (i in 1:6) {
	for (j in 1:6) {
		text(i,j-0.1,labels=paste("(",i,",",j,")"),cex=0.75)
	}
}




## secondo grafico


a <- expand.grid(1:6,1:6)
xPol=c(1.5,1.5,4.5,4.5)
yPol=c(1.5,3.5,3.5,1.5)

plot(a,axes=FALSE,pch=19,xlab=expression(Omega[1]),
		ylab=expression(Omega[2]),
		panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))

Axis(at=1:6,labels=1:6,side=2,las=1)
Axis(at=1:6,labels=1:6,side=1)

for (i in 1:6) {
	for (j in 1:6) {
		text(i,j-0.1,labels=paste("(",i,",",j,")"),cex=0.75)
	}
}

lines(c(1.45,1.45),c(1.5,3.5),col="red")
lines(c(1.5,4.5),c(1.45,1.45),col="red")

text(1.3,2.5,label=expression(E[2]))

text(3,1.3,label=expression(E[1]))

text(4.7,3.5,label=expression(E[1] %*% E[2]))

## terzo grafico


a <- expand.grid(1:6,1:6)
xPol=c(1.5,1.5,4.5,4.5,2.5,2.5,4.5,4.5,3.5,3.5,2.5,2.5)
yPol=c(1.5,4.5,4.5,3.5,3.5,1.5,1.5,3.5,3.5,2.5,2.5,1.5)

plot(a,axes=FALSE,pch=19,xlab=expression(Omega[1]),
		ylab=expression(Omega[2]),
		panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))

Axis(at=1:6,labels=1:6,side=2,las=1)
Axis(at=1:6,labels=1:6,side=1)

for (i in 1:6) {
	for (j in 1:6) {
		text(i,j-0.1,labels=paste("(",i,",",j,")"),cex=0.75)
	}
}



