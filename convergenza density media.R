# TODO: Add comment
# 
# Author: ortellic
###############################################################################


x <- seq(-3,5,length.out = 100)

y <- dnorm(x,mean=1,sd=2/4)
plot(x,y,xlab=expression(mu = 1),type="l",lty=4,ylab=expression(f(x)))
abline(v=1)
y <- dnorm(x,mean=1,sd=2/sqrt(2))

lines(x,y,type="l",lty=2)

y <- dnorm(x,mean=1,sd=2)
lines(x,y,type="l")