# TODO: Add comment
# 
# Author: ortellic
###############################################################################


# TODO: Add comment
# 
# Author: ortellic
###############################################################################


#pdf(file="confrontoBias.pdf"#
#		,width=12,height=10)
f <- function(x) {
	1/27+4/9*x^2
}


x <- seq(-2,2,length.out = 100)
y1 <- f(x)
y2 <- rep(1/3,100)

plot(x,y1,type="l",lty=3,las=1,
		xlab=expression(paste("Vero valore di", ~ ~mu)),ylab="")
lines(x,y2)

text(-1.5,1.5,expression(EQM[hat(mu)[5]]))
text(1.7,0.4,expression(EQM[hat(mu)[2]]))
#dev.off()

