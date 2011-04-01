setwd("/home/claudio/Dropbox/USI/Alari/mySlydes/latex")

pdf("probBinomiale.pdf")
.x <- 0:3
plot(.x, dbinom(.x, size=3, prob=0.3), xlab="Number of Successes", 
  ylab="Probability Mass", main="Binomial Distribution: 
Trials = 3, Probability of success = 0.3", type="h")
points(.x, dbinom(.x, size=3, prob=0.3), pch=16)
abline(h=0, col="gray")
remove(.x)
dev.off()

pdf("distBinomiale.pdf")
x <-0:3
y <- pbinom(0:3, size=3, prob=0.3)
x <- c(x,4)
plot(x=c(x[1],x[2]),y=c(y[1],y[1]),xlab="Number of Successes",ylab="Cumulative Probability",type="l",xlim=c(0,4),ylim=c(0,1))
for (i in 1:(length(x)-1)) {
lines(x=c(x[i],x[i+1]),y=c(y[i],y[i]))
points(x[i], y[i], pch=16)
}
abline(h=0, col="gray")
dev.off()

pdf("quantileBinomiale.pdf")
x <- pbinom(0:3, size=3, prob=0.3)
y <- 0:3
plot(c(x[3],x[4]),c(3,3),xlab="Probability",ylab="Quantile",type="l",xlim=c(0,1),ylim=c(0,3))
abline(h=0, col="gray")
x <- c(0,x)
for (i in 1:3) {
lines(x=c(x[i],x[i+1]),y=c(y[i],y[i]))
points(x[i+1], y[i], pch=16)
}
remove(x,y)
dev.off()





pdf("probChi2.pdf")
.x <- seq(0.158, 22.105, length.out=100)
plot(.x, dchisq(.x, df=5), xlab=expression(chi^2), ylab="Density", type="l")
abline(h=0, col="gray")
remove(.x)
dev.off()

pdf("distChi2.pdf")
.x <- seq(0.158, 22.105, length.out=100)
plot(.x, pchisq(.x, df=5), xlab=expression(chi^2), ylab="Cumulative Probability", type="l")
abline(h=0, col="gray")
remove(.x)
dev.off()


pdf("quantileChi2.pdf")
.x <- seq(0.158, 22.105, length.out=100)
plot(pchisq(.x, df=5), .x, xlab="Probability", ylab="Quantile", type="l")
abline(h=0, col="gray")
remove(.x)
dev.off()






