# TODO: Add comment
# 
# Author: claudio
###############################################################################



pdf(file="grafici/densitaStudent.pdf")
x <- seq(-4,4,length.out = 100)
y1 <- dt(x,df=2)

y2 <- dt(x,df=5)

y3 <-dnorm(x)

plot(x,y3,xlab="x",ylab=expression(f(x)),type="l",col="red",lwd=2)
lines(x,y2,col="blue",lwd=2)
lines(x,y1,lty=3,lwd=2)
legend(x=1,y=0.38,
		legend=c("Normale standard","Student-5 g.l.","Student-2 g.l."),
		col=c("red","blue","black"),
		lty=c(1,1,3),
		lwd=c(2,2,2),
		bty="n"
)


dev.off()

