# TODO: Add comment
# 
# Author: ortellic
###############################################################################


x <- seq(-3,5,length.out = 100)

y <- dnorm(x,mean=1,sd=2/4)
plot(x,y,xlab=expression(mu==1),type="l",lty=4,ylab=expression(y))
abline(v=1,col="red")

y <- dnorm(x,mean=1,sd=sqrt(2))

lines(x,y,type="l",lty=2)

y <- dnorm(x,mean=1,sd=2)
lines(x,y,type="l")

text(3.5, 0.7, 
		expression(f(x)==frac(1, sigma*sqrt(2*pi))~ ~exp~ ~
						bgroup("(",-~ ~frac((x-mu)^2, 2~ ~sigma^2),")")
				)
		,cex = 1
)

text(2, 0.6, expression(phantom(0) %<-%~ ~sigma^2==0.5),cex = 1)
text(2.8, 0.21, expression(phantom(0) %<-%~ ~sigma^2==sqrt(2)),cex = 1)
text(-2.1, 0.1, expression(sigma^2==4 %->% phantom(0)),cex = 1)