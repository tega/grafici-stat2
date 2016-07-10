# TODO: Add comment
# 
# Author: claudio
###############################################################################


nbObs <- 10000
X1 <- rnorm(nbObs,3,2)
X2 <- rnorm(nbObs,-1,1.5)
Z1 <- exp(rnorm(nbObs,1))
epsilon <- sqrt(1 + 0.2*Z1)*rnorm(nbObs)

y <- 1 + 2*X1 + 3*X2 + epsilon

result <- lm(y~X1+X2)

aux <- lm(result$residuals^2~Z1)

summary(result)
summary(aux)