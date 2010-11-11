# TODO: Add comment
# 
# Author: claudio
###############################################################################

pdf(file="grafici/funzioneVerosimiglianzaDiP.pdf")
p <- 0:100 / 100
f <- function(p) return(dbinom(x=6, size=25, prob=p))

plot(p,f(p),type="l",ylab="y")
text(0.30, 0.175, expression("f(6;p)"), cex = 1.2,pos=4)

dev.off()