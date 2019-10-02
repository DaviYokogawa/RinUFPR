x <- matrix(c(2,0,9,8,4,7,4,1,5), nrow = 3, ncol = 3)
row.names(x) <- c("Linha1", "Linha2", "Linha3")
colnames(x) <- c("Coluna1", "Coluna2", "Coluna3")
vetor <- c(rep("A", 2), rep("B", 5), rep("C", 4))
fator <- factor(c("brava", "joaquina", "jose"))
lista <- list(Index1 = vetor, Index2 = x, fator = fator)
df <- data.frame(local = c("A", "B", "C", "D"), contagem = c(42, 34, 59, 18))
pesquisa <- data.frame(Nome = c("Davi", "Eduardo"), Sobrenome = c("Yokogawa", 
                                                                  "Demetrio"),
                                                  AnimaldeEstimacao = c(1,1))
                       
