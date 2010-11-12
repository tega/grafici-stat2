# TODO: Add comment
# 
# Author: claudio
###############################################################################
pdf(file="grafici/maxLik3D.pdf")
# x <- mu
x <- seq(-5,5,by=0.2)
# y <- sigma^2
y <- seq(3,25,by=0.4)
f <- function(x,y) {
	z <- (1/(2*pi*y))^2  * exp(-0.5*((3-x)^2+(-3-x)^2+(5-x)^2+(-2-x)^2)/y) 
	return(z)
}
z <- outer(x,y,FUN=f)
persp(x,y,100000*z,theta = 45, phi = 20,
		xlab="mu", 
		ylab = "sigma²", 
		zlab="Verosimiglianza",
		ticktype="detailed"
)
dev.off()
