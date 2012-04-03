# TODO: Add comment
# 
# Author: claudio
###############################################################################

setwd("/home/claudio/workspace/grafici-stat2/alari/codiceR/grafici")
pdf("twice_toss_density.pdf")
plot(x,y,type="h",lwd=2,main="Probability mass function",ylab="P[x](x)")
dev.off()