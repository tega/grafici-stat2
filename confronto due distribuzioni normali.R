# TODO: Add comment
# 
# Author: ortellic
###############################################################################


x <- seq(-4,5,length.out = 100)

y <- dnorm(x,mean=1.5,sd=1)
plot(x,y,xlab="x",type="l",lty=1,
		las=1,ylab=expression(f(y)),main="Funzione di densità della distribuzione Normale")


y <- dnorm(x,mean=0,sd=2)
lines(x,y,type="l",lty=2)


text(3.5, 0.7, 
		expression(f(x)==frac(1, sigma*sqrt(2*pi))~ ~exp~ ~
						bgroup("(",-~ ~frac((x-mu)^2, 2~ ~sigma^2),")")
				)
		,cex = 1
)

text(2.5, 0.34, expression(phantom(0) %<-%~ ~mu==1.5),cex = 1,pos=4)
text(2.5, 0.32, expression(phantom(0) %<-%~ ~sigma^2==1),cex = 1,pos=4)
text(-1.8, 0.15, expression(mu==0 %->% phantom(0)),cex = 1,pos=2)
text(-1.8, 0.13, expression(sigma^2==4 %->% phantom(0)),cex = 1,pos=2)