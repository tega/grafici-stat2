# TODO: Add comment
# 
# Author: ortellic
###############################################################################


pdf(file="grafici/convergenzaInProbabilita2.pdf")
f1 <- function(x) {
	sigma = 0.5
	mu = 1.5
	exp(-1/2*(x-mu)^2/sigma^2)/sqrt(2*pi)/sigma
}
f2 <- function(x) {
	sigma = 0.8
	mu = -1.5
	exp(-1/2*(x-mu)^2/sigma^2)/sqrt(2*pi)/sigma
}
h1 <- function(x) {
	sigma = 1
	mu = 0.7
	exp(-1/2*(x-mu)^2/sigma^2)/sqrt(2*pi)/sigma
}
h2 <- function(x) {
	sigma = 1.4
	mu = 0.-0.8
	exp(-1/2*(x-mu)^2/sigma^2)/sqrt(2*pi)/sigma
}
g <- function(x) {
	sigma = 0.6
	mu = 0
	exp(-1/2*(x-mu)^2/sigma^2)/sqrt(2*pi)/sigma
}
x <- seq(-4,4,length.out = 100)
y1 <- 0.8*f1(x)+0.2*f2(x)
y2 <- 0.6*h1(x)+0.4*h2(x)
y3 <- g(x)

plot(x,y1,type="l",lty=1,axes=FALSE,
		xlab="",ylab="y")
lines(x,y2,lty=3)
lines(x,y3,lty=2)
Axis(at=-4:4,side=1, labels=c(rep("",4),expression(theta),rep("",4)))
Axis(side=2,las=1)
abline(v=0)
text(0.6,0.55,expression(f[hat(theta)[20]]))
text(1.6,0.2,expression(f[hat(theta)[10]]))
text(2,0.55,expression(f[hat(theta)[5]]))

dev.off()

