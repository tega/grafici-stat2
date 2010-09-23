testUnilateraleDestro <- function() {
  x1 = -0.555
  x2 = -0.530
  xMin = -0.55
  xMax = -0.535
  nbPoints = 100
  PloygonScalingFactor = 100
  x = seq(x1,x2,length.out=nbPoints)
  y = -x - 1.078
  yMin = min(y)
  yMax = -0.528
  
  # colorazione triangolo superiore
  xPol=c(x1,x2,x2)
  yPol=c(y[1],y[1],y[100])
  
  plot(x,y,type="l",lwd=2,xlim=c(xMin,xMax),ylim=c(yMin,yMax),xlab=expression(x[1]),ylab=expression(x[2]),
		  panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))

  text(-0.548,-0.537,expression(paste("Non rifiuto ", H[0])))
  text(-0.546,0.-0.530,expression(paste("Rifiuto ", H[0])))
}
testUnilateraleDestro()
print("");

testBilaterale <- function() {
	x1 = 0.54
	x2 = 0.67
	xMin = 0.55
	xMax = 0.65
	nbPoints = 100
	PloygonScalingFactor = 100
	x = seq(x1,x2,length.out=nbPoints)
	y2 = -x + 1.213859
	y1 = -x + 1.186141
	yMin = min(y2)
	yMax = max(y1)
	
	# colorazione triangolo inferiore
	xPolInf=c(x1,x1,x2)
	yPolInf=c(y1[1],y1[100],y1[100])
	
	# colorazione triangolo superiore
	xPolSup=c(x1,x2,x2)
	yPolSup=c(y2[1],y2[1],y2[100])
	
    xPol = c(xPolInf,x2,xPolSup)
	yPol = c(yPolInf,NA,yPolSup)

	plot(x,y2,type="l",lwd=2,xlim=c(xMin,xMax),ylim=c(yMin,yMax),
			xlab=expression(x[1]),ylab=expression(x[2]),
			panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))
    
	lines(x,y1,lwd=2)

	text(0.58,0.62,expression(paste("Non rifiuto ", H[0])))
	text(0.62,0.63,expression(paste("Rifiuto ", H[0])))
	text(0.62,0.64,label="R")
	text(x=0.57,y=0.57,labels=expression(paste("Rifiuto ", H[0])))
	text(0.57,0.58,label="R")
}

testBilaterale()

regioneCritica3 <- function() {
  x1 = -0.565
  x2 = -0.530
  xMin = -0.56
  xMax = -0.535

  yMin = -0.565
  yMax = -0.528
  
  # colorazione triangolo superiore
  xPol=c(-0.546,-0.546,-0.53,-0.53)
  yPol=c(-0.546,-0.525,-0.525,-0.546)
 
  
  plot(x=c(1,2),y=c(1,2),type="l",lwd=2,xlim=c(xMin,xMax),ylim=c(yMin,yMax),
		  xlab=expression(x[1]),ylab=expression(x[2]),
		  panel.first=polygon(xPol,yPol,col="lightcyan",border = NA))

  

  
  text(-0.55,-0.55,expression(paste("Non rifiuto ", H[0])))
  text(-0.54,0.-0.535,expression(paste("Rifiuto ", H[0])))
}

regioneCritica3()
print("");
