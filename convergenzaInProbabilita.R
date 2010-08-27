# TODO: Add comment
# 
# Author: ortellic
###############################################################################


#pdf(file="densityEstimatorBiasedUnBiased.pdf"#
#		,width=12,height=10)
f <- function(x) {
	exp(-1/8*(x-1)^2)/sqrt(4*pi)
}

g <- function(x) {
	exp(-(x-0.5)^2)*sqrt(2/pi)
}

h <- function(x) {
	exp(-2*x^2)*4/sqrt(2*pi)
}

x <- seq(-4,4,length.out = 100)
y1 <- g(x)
y2 <- f(x)
y3 <- h(x)

plot(x,y3,type="l",lty=3,axes=FALSE,
		xlab="",ylab="y")
lines(x,y2)
lines(x,y1,lty=2)
Axis(at=-4:4,side=1, labels=c(rep("",4),expression(theta),rep("",4)))
Axis(side=2,las=1)
abline(v=0)
text(0.8,1.3,expression(f[hat(theta)[20]]))
text(1.6,0.5,expression(f[hat(theta)[10]]))
text(3.5,0.2,expression(f[hat(theta)[5]]))

#dev.off()

