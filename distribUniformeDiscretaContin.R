# TODO: Add comment
# 
# Author: ortellic
###############################################################################


plot(x=ecdf(seq(0.2,1,by=0.2)),ylab="F(x)",
		main="Distribuzione Uniforme",
		axes=FALSE
)

Axis(at=seq(0,1.2,by=0.2),side=1)
Axis(side=2,las=1)

text(0.2,0.9,
		expression(
				paste(Omega,"={0.2,0.4,0.6,0.8,1}")
		)
)

x = seq(0,1.2,by=0.2)
y = punif(x, min=0, max=1)
plot(x,y,ylab="F(x)",type="l",
		main="Distribuzione Uniforme",
		axes=FALSE
)

Axis(at=seq(0,1.2,by=0.2),side=1)
Axis(side=2,las=1)

text(0.2,0.9,
		expression(
				paste(Omega,"=[0,1]")
		)
)