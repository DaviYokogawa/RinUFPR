x <- 32 + 16^2 - 25^3
y <- x/345
aleatoriedade <- runif(30, min = 10, max = 50)
rm(y)
rm(list = ls())
pois <- dpois(1:100, 5, log = FALSE)
plot(pois)
