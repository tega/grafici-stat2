# TODO: Add comment
# 
# Author: claudio
###############################################################################


x <- (0:150)/100
y1 <- x
y2 <- x+x^2

pdf(file="grafici/momento1E2Poisson.pdf")
plot(x,y2,xlab=expression(theta),ylab="y",type="l",lty=2)
lines(x,y1,lty=1)

text(1.4, 1, expression(M[1](theta)),cex = 1)
text(1.4, 2.7, expression(M[2](theta)), cex = 1)

dev.off()

### secondo grafico
pdf(file="grafici/momento3Poisson.pdf")
x <- (0:120)/100
y <- x+3*x^2+x^3


plot(x,y,xlab=expression(theta),ylab="y",type="l",lty=2)

text(1.17, 6, expression(M[3](theta)), cex = 1)

text(0.18, 1, expression(m["3,n"]==1), cex = 1)
x0 <- sqrt(2) - 1
#horizontal lines
lines(x=c(-1,0.08),y=c(1,1))
lines(x=c(0.26,x0),y=c(1,1))
# vertical lines
lines(x=c(x0,x0),y=c(-1,0.05))
lines(x=c(x0,x0),y=c(0.5,1))

text(0.3825, 0.2, expression(hat(theta)==0.4142), cex = 1,pos=4)

dev.off()