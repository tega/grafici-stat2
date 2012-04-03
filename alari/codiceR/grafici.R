# TODO: Add comment
# 
# Author: claudio
###############################################################################



setwd("/home/claudio/workspace/grafici-stat2/alari/codiceR/grafici")

x <- (0:100) / 100
f <- function(x) {3*x^2*(1-x)+x^3}

y <- f(x)

pdf("triple_modular_redundancy.pdf")
plot(x,y,type="l",lwd=2,col="red",xlab="Reliability",ylab=expression(R[TMR]))
lines(x,x,lwd=2)
dev.off()