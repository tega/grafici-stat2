# TODO: Add comment
# 
# Author: ortellic
###############################################################################

#jpeg(file="funzioneRipartizioneUniformeDiscreta.jpg")
pdf(file="grafici/funzioneRipartizioneUniformeDiscreta.pdf")

plot(x=ecdf(seq(0.2,1,by=0.2)),ylab="F(x)",
#		main="Distribuzione Uniforme",
		main="",
		axes=FALSE
)

Axis(at=seq(0,1.2,by=0.2),side=1)
Axis(side=2,las=1)

text(0.35,0.9,
		expression(
				paste(Omega,"={0.2,0.4,0.6,0.8,1}")
		),
		cex = 1.7
)
dev.off()



pdf(file="grafici/funzioneRipartizioneUniformeContinua.pdf")
x = seq(0,1.2,by=0.2)
y = punif(x, min=0, max=1)
x = c(-0.2,x)
y = c(0,y)

plot(x,y,ylab="F(x)",type="l",
#		main="Distribuzione Uniforme",
		main="",
		axes=FALSE
)

Axis(at=seq(-0.2,1.2,by=0.2),side=1)
Axis(side=2,las=1)

text(0.2,0.9,
		expression(
				paste(Omega,"=[0,1]")
		),
		cex=1.7
)
dev.off()
