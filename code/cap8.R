set.seed(123)
y <- rbinom(n = 10, size = 1, prob = 0.5)
y

dbinom(6, size = 10, prob = 0.5)
dbinom(6, size = 10, prob = 0.8)

# Maneiras para descobrir a melhor confiança para o esperimento
L <- function(p, n, y) {
  out <- dbinom(y, size = n, prob = p)
  return(out)
}
curve(L(x, n = 10, y = 6), 0, 1)
ll <- function(p, n, y) {
  out <- dbinom(y, size = n, prob = p, log = TRUE)
  return(out)
}
curve(ll(x, n = 10, y = 6), 0.4, 0.8)
abline(v = mean(y))
abline(h = -2)
mean(y)
# ---------------------------------------------------------------------
# Verossimilhança Relativa (veros/veros.no.pto.max)
LR <- function(p, p_hat, n, y) {
  out <- L(p = p, n = n, y = y)/L(p = p_hat, n = n, y = y)
  return(out)
}
curve(LR(x, p_hat = 0.6, n = 10, y = 6), 0, 1)
abline(h = 0.4)

# ---------------------------------------------------------------------

set.seed(1234)
p.hat <- c()
for(i in 1:1000) {
  y <- rbinom(10, prob = 0.5, size = 1)
  p.hat[i] <- mean(y)
}

par(mfrow = c(1,1), mar=c(2.6, 2.8, 1.2, 0.5), mgp = c(1.6, 0.6, 0))
plot(prop.table(table(p.hat)), main = "", 
     ylab = "Proporção observada",
     xlab = expression(hat(p)), xlim = c(0,1))
# ---------------------------------------------------------------------
set.seed(1234)
p.hat.list <- list()
amostra <- c(10, 50, 100, 250,500, 1000)
par(mfrow = c(2,3), mar=c(2.6, 2.8, 1.2, 0.5), mgp = c(1.6, 0.6, 0))
for(j in 1:6) {
  p.hat.list[[j]] <- matrix(NA, ncol = 1, nrow = 1000)
  for(i in 1:1000) {
    y <- rbinom(amostra[j], prob = 0.5, size = 1)
    p.hat.list[[j]][i,] <- mean(y)
  }
  hist(p.hat.list[[j]], prob = TRUE, main = paste("Amostra", amostra[j]), 
       ylab = "Proporção observada",
       xlab = expression(hat(p)), xlim = c(0,1))
}

# ---------------------------------------------------------------------
set.seed(1234)
p.hat.list <- list()
amostra <- c(10, 50, 100)
par(mfrow = c(2,3), mar=c(2.6, 2.8, 1.2, 0.5), mgp = c(1.6, 0.6, 0))
for (j in 1:3){
  p.hat.list[[j]] <- matrix(NA, ncol = 1, nrow = 1000)
  for (i in 1:1000){
    y <- rbinom(amostra[j], prob = 0.5, size = 1)
    p.hat.list[[j]][i, ] <- mean(y)
  }
  hist(p.hat.list[[j]], prob = TRUE, main = paste("Amostra", amostra[j]),
       ylab = "Densidade",
       xlab = expression(hat(p)), xlim = c(0,1))
  abline(v = c(quantile(p.hat.list[[j]], probs = c(0.025, 0.975))),
         col = "red")
  curve(dnorm(x, mean = 0.5, sd = sqrt(0.5*(1-0.5)/amostra[j])),
        0.1, 0.9, add = TRUE)
}
# ---------------------------------------------------------------------
"""
#1
 Num grupo de pacientes, o nível de colesterol é uma variável aleatória 
 com distribuição Normal, de média desconhecida e variância 64(mg/ml^2).
 Para uma amostra de 46 indivíduos que forneceu nível médio de
 colesterol de 120 mg/ml, construa o intervalo de confiança de 88%:
"""
media.colesterol <- 120
alfa.colesterol <- 0.12
n.colesterol <- 46
sd.colesterol <- sqrt(64)

mu_I.colesterol <- media.colesterol - qnorm((1 - (alfa.colesterol/2))) * sd.colesterol/sqrt(n.colesterol)
mu_S.colesterol <- media.colesterol + qnorm(((1 - alfa.colesterol/2))) * sd.colesterol/sqrt(n.colesterol)

c(mu_I.colesterol, mu_S.colesterol)

"""
#2
Por analogia a produtos similares, o tempo de reação de um novo
medicamento pode ser considerado como tendo distribuição Normal
com desvio padrão igual a 2 minutos (a média desconhecida).
Vinte pacientes foram sorteados, receberam o medicamento e tiveram
seu tempo de reação anotado. Os dados foram os seguintes (em minutos): 
2.9,3.4,3.5,4.1,4.6,4.7,4.5,3.8,5.3,4.9,4.8,5.7,5.8,5,3.4,5.9,6.3,4.6,5.5,6.2
"""
tempo.medicamentos <- c(2.9,3.4,3.5,4.1,4.6,4.7,4.5,3.8,5.3,4.9,4.8,5.7,5.8,5,3.4,5.9,6.3,4.6,5.5,6.2)
mean.tempo.medicamentos <- mean(tempo.medicamentos)
alfa.medicamentos <- 0.04
sd.medicamentos <- 2
n.medicamentos <- length(tempo.medicamentos)

mu_I.medicamentos <- mean.tempo.medicamentos - qnorm((1-(alfa.medicamentos/2)))* sd.medicamentos/sqrt(n.medicamentos)
mu_S.medicamentos <- mean.tempo.medicamentos + qnorm((1-(alfa.medicamentos/2)))* sd.medicamentos/sqrt(n.medicamentos)
c(mu_I.medicamentos, mu_S.medicamentos)

"""
#3
Uma amostra de 25 observações de uma Normal(u,16) foi coletada e 
forneceu uma Media amostral de 8. Construa intervalos de confianca com
80%, 85%, 90%, 95% de confianca. Comente as diferencas
"""
mean.amostra <- 8
sd.amostra <- sqrt(16)
alfa.amostra.80 <- 1-0.8
alfa.amostra.85 <- 1-0.85
alfa.amostra.90 <- 1-0.9
alfa.amostra.95 <- 1-0.95
n.amostra <- 8

mu_I.amostra.80 <- mean.amostra - qnorm((1-(alfa.amostra.80/2)))*sd.amostra/sqrt(n.amostra)
mu_S.amostra.80 <- mean.amostra + qnorm((1-(alfa.amostra.80/2)))*sd.amostra/sqrt(n.amostra)
c(mu_I.amostra.80, mu_S.amostra.80)

mu_I.amostra.85 <- mean.amostra - qnorm((1-(alfa.amostra.85/2)))*sd.amostra/sqrt(n.amostra)
mu_S.amostra.85 <- mean.amostra + qnorm((1-(alfa.amostra.85/2)))*sd.amostra/sqrt(n.amostra)
c(mu_I.amostra.85, mu_S.amostra.85)

mu_I.amostra.90 <- mean.amostra - qnorm((1-(alfa.amostra.90/2)))*sd.amostra/sqrt(n.amostra)
mu_S.amostra.90 <- mean.amostra + qnorm((1-(alfa.amostra.90/2)))*sd.amostra/sqrt(n.amostra)
c(mu_I.amostra.90, mu_S.amostra.90)

mu_I.amostra.95 <- mean.amostra - qnorm((1-(alfa.amostra.95/2)))*sd.amostra/sqrt(n.amostra)
mu_S.amostra.95 <- mean.amostra + qnorm((1-(alfa.amostra.95/2)))*sd.amostra/sqrt(n.amostra)
c(mu_I.amostra.95, mu_S.amostra.95)
















