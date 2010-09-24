# TODO: Add comment
# 
# Author: ortellic
###############################################################################


# pdf(file="standardNormalDensityWith095Quantile.pdf",width=12,height=10)
x = seq(0.1,6,length.out=100)
plot(x,log(x),type="l",ylab="ln(x)",las=1)
abline(h=0)

# dev.off()


# pdf(file="standardNormalDensityWith095Quantile.pdf",width=12,height=10)
g <- function(x) {
	0.546875 * x^4 - 4.5625 *x^3 + 10.4375 * x^2 - 4.5 * x + 5
}

x = seq(0.05,6,length.out=100)
y = g(x)
plot(x,y,type="l",ylab="y",las=1,ylim=c(0,14))
lines(x,log(y),type="l")

x2 <- 2
lines(c(x2,x2),c(g(x2)-3,g(x2)))
lines(c(x2,x2),c(log(g(x2))+3,log(g(x2))))
text(x2,g(x2)-3.7,"Massimo",cex=0.7)

x2 <- 4
lines(c(x2,x2),c(g(x2)-0.25,g(x2)))
lines(c(x2,x2),c(log(g(x2))+0.25,log(g(x2))))

text(x2,g(x2)-0.60,"Minimo",cex=0.7)
text(5.2,12,expression(g(x)))
text(5.5,2,expression(ln(g(x))))


# dev.off()
