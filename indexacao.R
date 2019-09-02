#exercicio1 

#x <- c(88, 5, 12, 13)
#x[3]
#x[1]
#x[c(4,2)]
#x[c(-1, -4)]
#x1 <- c(x[c(1:3)], 168, x[4])


count <- c(8,  4, NA,  9, 6,  1,  7,  9)
names(count) <- letters[1:length(count)]

x <- c(3, 8, 7, 4)

mat <- matrix(1:9, nrow = 3, ncol = 3)
colnames(mat) <- c("A", "B", "C")
rownames(mat) <- c("X", "Y", "Z")

z <- 1:5

lista <- list(vetor1 = x, matriz = mat, vetor2 = z)
mean(lista[[3]])
lista[[2]]["Z", "C"]
