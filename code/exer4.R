######1
x <- c(54, 0, 17, 94, 12.5, 2, 0.9, 15)
x <- x+5+6
x <- x+5+6+7
######2
vet <- c("A", "B", "C")
vet1 <- c(rep(vet[1], 15), rep(vet[2], 12), rep(vet[3], 8))
vet2 <- vet1 == "B"
vet3 <- sum(vet2, na.rm = FALSE)
#######3
aleatorio <- runif(100, min = 0, max = 1)
aleatorio1 <- sum(aleatorio > 0.5, na.rm = FALSE)
######4
repeticao <- rep(2, 50)
potencias <- repeticao ^ c(1:50)
quadrado <- c(1:50)^2
igualdade <- potencias == quadrado
#######5
ang <- seq(from= 0, to= 2*pi, by= 0.1)
seno <- sin(ang)
cosseno <-cos(ang)
tg <- tan(ang)
tangente <- sin(ang)/cos(ang)
tangente == tg






