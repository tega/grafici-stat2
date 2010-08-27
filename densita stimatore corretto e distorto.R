# TODO: Add comment
# 
# Author: ortellic
###############################################################################


#pdf(file="densityEstimatorBiasedUnBiased.pdf"#
#		,width=12,height=10)
f <- function(x) {
	exp(-1/8*x^2)/sqrt(4*pi)
}

g <- function(x) {
	exp(-(x-0.5)^2)*sqrt(2)/sqrt(pi)
}

x <- seq(-4,4,length.out = 100)
y1 <- g(x)
y2 <- f(x)

plot(x,y1,type="l",lty=3,axes=FALSE,
		xlab="",ylab="y")
lines(x,y2)
Axis(at=-4:4,side=1, labels=c(rep("",4),expression(theta),rep("",4)))
Axis(side=2,las=1)
abline(v=0)
text(1.5,0.6,expression(f[T[2]](x)))
text(2.5,0.17,expression(f[T[1]](x)))
#dev.off()
