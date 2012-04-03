# TODO: Add comment
# 
# Author: claudio
###############################################################################


setwd("/home/claudio/workspace/grafici-stat2/alari/codiceR/grafici")

x <- seq(2,12)
y <- 1:11
y[1] <- 1
y[2] <- 2
y[3] <- 3
y[4] <- 4
y[5] <- 5
y[6] <- 6
y[7] <- 5
y[8] <- 4
y[9] <- 3
y[10] <- 2
y[11] <- 1 
y <- y/36

pdf("twice_toss_density.pdf")
plot(x,y,type="h",lwd=2,main="Probability mass function",ylab=expression(P[x](x)))
dev.off()


pdf("twice_toss_cdf.pdf")
x <- c(2,3,3,4,4,4,5,5,5,5,6,6,6,6,6,7,7,7,7,7,7,8,8,8,8,8,9,9,9,9,10,10,10,11,11,12)

plot(ecdf(x),main="Distribution function of X",ylab=expression(F[x](t)))
dev.off()


