# TODO: Add comment
# 
# Author: claudio
###############################################################################

setwd("/home/claudio/eclipse/grafici-stat2/codiceR")

pdf(file="grafici/costi_traversata.pdf")
f <- function(x) {
	if (x <=  9) return(10+10*x)
	if (x <= 10) return(100+20*(x-9))
	return(120+40*(x-10))
}


x <- seq(8,11,length.out = 100)
y1 <- lapply(x,f)

plot(x,y1,type="l",las=1,main="Costi traversata",xlab="x",ylab="")

dev.off()


