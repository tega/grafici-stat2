# png(filename="parallelRedundancy1.png",height=1000,width=1500,units="px")
png(filename="parallelRedundancy1.png",height=20,width=30,units="cm",res=600)
alpha <- 0.95
Ri <- rep(1-alpha,10)
R = 1 - cumprod(Ri)
plot(1:10,R,ylim=c(0,1),ylab="System Reliability",
     xlab=expression("Number of components n"))
lines(R)
alpha <- 0.75
Ri <- rep(1-alpha,10)
R = 1 - cumprod(Ri)
lines(R,lty=3)
points(R)

alpha <- 0.65
Ri <- rep(1-alpha,10)
R = 1 - cumprod(Ri)
lines(R,lty=4)
points(R)
legend(8,0.2,lty=c(1,3,4),legend=paste("Comp. reliability =",c(0.95,0.75,0.65)))

dev.off()


