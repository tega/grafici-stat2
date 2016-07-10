# TODO: Add comment
# 
# Author: claudio
###############################################################################



x <- 0:10
p <- c(0.5,1,1,2,4,6,5,4,1,0,0)
p <- p/sum(p)

postscript(file="./../grafici-stat2/mq/profilo_dei_ritardi.ps")#,
#family="ComputerModern")
plot(x=x,y=p,xlab="Ritardo")
lines(x=x,y=p)
dev.off()


x <- 0:10
p <- 30 - 2*x
somma <- sum(p)
p <- p/somma

postscript(file="./../grafici-stat2/mq/profilo_ritardi_lineare.ps")
plot(x,p,xlab="Ritardo")
lines(x=x,y=p)
dev.off()


x <- 0:10
p <- -x^2+12*x-8
somma <- sum(p)
p <- p/somma

postscript(file="./../grafici-stat2/mq/profilo_ritardi_quadratico.ps")
plot(x,p,xlab="Ritardo")
lines(x=x,y=p)
dev.off()


x <- 0:10
p <- (0.5*(x - 8))^3 + 4*(0.5*(x - 8))^2 + 0.5*(x - 8) + 5
somma <- sum(p)
p <- p/somma

postscript(file="./../grafici-stat2/mq/profilo_ritardi_cubico.ps")
plot(x,p,xlab="Ritardo")
x <- 0:100/10
p <- (0.5*(x - 8))^3 + 4*(0.5*(x - 8))^2 + 0.5*(x - 8) + 5
p <- p/somma
lines(x=x,y=p)
dev.off()



x <- 0:10
d <- 0.85
d <- rep(d,10)^(1:10)
p <- rep(1,11)*c(1,d)
somma <- sum(p)
p <- p/somma

postscript(file="./../grafici-stat2/mq/profilo_progressione_geom1.ps")
plot(x,p,xlab="Ritardo")
lines(x=x,y=p)
dev.off()




x <- 0:10
d <- 0.85
d <- rep(d,7)^(1:7)
p <- c(1,1.2,1.18,rep(1.16,8))*c(1,1,1,1,d)
somma <- sum(p)
p <- p/somma

postscript(file="./../grafici-stat2/mq/profilo_progressione_geom2.ps")
plot(x,p,xlab="Ritardo")
lines(x=x,y=p)
dev.off()



## esempio profili pag. 76

b <- c(0.3,0.26,0.192,0.0384)
d <- 0.0384*rep(0.2,3)^(1:3)
p <- c(b,d)
x <- 0:(length(p)-1)

postscript(file="./../grafici-stat2/mq/profilo_esempio_funzione_consumo.ps")
plot(x,p,xlab="Ritardo")
lines(x=x,y=p)
dev.off()


## Esempio di serie storica stazionaria: AR-1
library(xts)
n <- 365*15
ts <- xts(arima.sim(n = n, list(ar = 0.99),sd = 0.10),order.by=seq.Date(from=as.Date("2000-01-01"),by="1 d",length.out=n))
plot(ts)
postscript(file="./../grafici-stat2/mq/esempio_ar1.ps")
plot(ts,main="")
dev.off()


## Esempio di serie storica stazionaria: white noise
library(xts)
n <- 31
ts <- xts(arima.sim(n = n, list(ar = 0),sd = 0.10),order.by=seq.Date(from=as.Date("2000-01-01"),by="1 d",length.out=n))
plot(ts)
postscript(file="./../grafici-stat2/mq/esempio_white_noise.ps")
plot(ts,main="")
dev.off()


## Esempio variabile non stazionaria
load("./downloadLongTermTimeSeries/timeseries/CPI US SADJ - None.RData")
postscript(file="./../grafici-stat2/mq/CPI_US_SADJ.ps")
plot(series.l[[1]],main="")
dev.off()

## esempio cointegrazione
n=200
r3 <- c(0,cumsum(rnorm(n-1)))
u1 <- rnorm(n-1)
r2 <- rep(0.0,length(r3))
for (i in 2:length(r3)) {
	r2[i] <- r2[i-1] + 0.756*(r3[i]-r3[i-1]) -0.05*(r2[i-1] - 0.391 - 0.822*r3[i-1])+u1[i]
}


postscript(file="./../grafici-stat2/mq/esempio_cointegrazione.ps")
plot(r3,type="l",ylim=c(-10,15),xlab="",ylab="")
lines(r2,col="red")
dev.off()
