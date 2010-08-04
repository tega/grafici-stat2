# TODO: Add comment
# 
# Author: ortellic
###############################################################################


spazioParamDistrUnif <- function() {
	
	# definisci i vertici del poligono utilizzato per colorare l'area
    x = c(-6,-6, 8,6)
	y = c(-6,-8,-8,6)

	# esegui il plot
	plot(-5:5,-5:5,type="l",lwd=2,xlab="a",ylab="b",
			panel.first=polygon(x,y,col="lightcyan",border = NA))

	abline(h=0)
	abline(v=0)
}

spazioParamDistrUnif()