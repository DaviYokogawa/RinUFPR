x <- 32 + 16^2 - 25^3
x1 <-x/345
y <- (exp(-2)* 2^4 -1)/ factorial(4)
y1 <- log(y)

xr <- runif(30, min = 0, max = 1)
xr1 <- runif(30, min = -5, max = 5)
xr2 <- runif(30, min = 10, max = 500)
objeto <- runif(30, min = 10, max = 50)
xr
xr1
xr2
objeto

xfuncao <- function(){
    x+y
}
xfuncao()
dado <- function(){
    sample(6, 1, replace = FALSE, prob = NULL)
}
dado()
dado1 <- function(){
    sample(6, 2, replace = TRUE, prob = NULL)
}
dado1()

pois <- dpois(1:100, 5, log.p = FALSE)
plot(pois)

objeto1 <- c(54, 0, 17, 94, 12.5, 2, 0.9, 15)
objeto1 <- objeto1 + 5 + 6
objeto1 <- objeto1 +5+6+7
objeto1
objeto2 <- c("A", "B", "C")
objeto2 <- c(rep(objeto2[1], 15), rep(objeto2[2], 12), rep(objeto2[3], 8))
objeto2 <- objeto2 == "B"
objeto2 <- sum(objeto2, na.rm = FALSE)

uniale <- runif(100, 0, 1)
plot(uniale)
uniale <- uniale >= 0.5
sum(uniale, na.rm = FALSE)

igualdade <- rep(2, 50) ^ c(1:50)
igualdade1 <- c(1:50) ^ 2
igualdade2 <- igualdade == igualdade1
sum(igualdade2, na.rm = FALSE)

ang <- seq(from = 0, to = 2*pi, by =0.1)
seno <- sin(ang)
cosseno <- cos(ang)
tangente <- tan(ang)
tg <- seno/cosseno
tangente == tg
