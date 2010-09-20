# TODO: Add comment
# 
# Author: ortellic
###############################################################################


dati <- read.csv(file="dati genere e numero scarpa 2009.csv",
		header=TRUE)

y <- as.vector(table(dati[,1])/nrow(dati))
names(y) <- c("Donne","Uomini")
x <- 0:1
xExt <- c(-0.5,x,1.5)
yExt <- c(0,y,0)
plot(xExt,yExt,main="Frequenze relative",
		type="h",xlab="",ylab="",
		axes=FALSE,ylim=c(0,0.60))
points(x, y,pch=19)
z = seq(0.0,0.60,by=0.05)
Axis(at=z,labels=rep(TRUE,length(z)),side=2,las=1)
Axis(at=x,side=1,labels=c("Donne","Uomini"))


y <- table(dati[,2])/nrow(dati)
x <- as.numeric(names(y))
y <- as.numeric(y)
plot(x,y,main="Frequenze relative",
		type="h",xlab="",ylab="",
		axes=FALSE,ylim=c(0,0.30))
points(x, y,pch=19)
z = seq(0.0,0.30,by=0.05)
Axis(at=z,labels=rep(TRUE,length(z)),side=2,las=1)
Axis(at=x,side=1)

xlim=c(34,48)
plot(x=ecdf(dati[,2]),ylab="F(x)",xlim=xlim,
		main="Distribuzione del numero di scarpa\n Corso Statistica II - SI 2009",
		axes=FALSE
)

Axis(at=xlim[1]:xlim[2],side=1)
Axis(side=2,las=1)

