# TODO: Add comment
# 
# Author: claudio
###############################################################################

pdf(file="grafici/variabileAleatoria2.pdf")
plot(1:6,1:6-2,
		pch=19,
		xlab=expression(Omega),
		ylab=expression(X(omega)),
		main="",
		axes=FALSE
		)

Axis(at=1:6,side=1)
Axis(side=2,las=1)

text(1.3,-1,labels=expression(X(1)),cex=1)
text(2.3,0,labels=expression(X(2)),cex=1)
text(3.3,1,labels=expression(X(3)),cex=1)
text(4.3,2,labels=expression(X(4)),cex=1)
text(5.3,3,labels=expression(X(5)),cex=1)
text(5.7,4,labels=expression(X(6)),cex=1)
dev.off()
