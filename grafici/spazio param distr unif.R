# TODO: Add comment
# 
# Author: ortellic
###############################################################################


spazioParamDistrUnif <- function() {
	
	# definisci i vertici del poligono utilizzato per colorare l'area
    x = c(-6,-6,6)
	y = c(-6,6,6)
	
	# esegui il plot
	plot(-5:5,-5:5,type="l",lwd=2,xlab="a",ylab="b",
			panel.first=polygon(x,y,col="lightcyan",border = NA),
			las=1)

	abline(h=0)
	abline(v=0)
	
	text(-3, 2, expression(Theta),cex = 3,pos=2)
}

spazioParamDistrUnif()