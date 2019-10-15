"""
x <- NA
for (i in 1:70){
  if(i%%5 == 0){
    x[i] <- i
  }
  x <- x[!is.na(x)]
}


url <- "http://leg.ufpr.br/~fernandomayer/data/notas.csv"

notas <- read.table(url, header = TRUE, sep = ";", dec = ",")


for (i in 1:30){
  print(notas[i, c("prova1", "prova2", "prova3")])
}

notas$media <- 0

for (i in 1:30){
  notas$media[i] <- sum(notas[i, c("prova1", "prova2", "prova3")])/3
}

notas$aprovado <- NA

for (i in 1:length(notas$media)){
  if (notas$media[i] >= 7){
    notas$aprovado[i] <- "Aprovado"
  }else{
    notas$aprovado[i] <- "Reprovado"
  }
}

for (i in 1:length(notas$aprovado)){
  if(notas$aprovado[i] == "Aprovado"){
    notas$aprovado[i] <- 1
  }else{
    notas$aprovado[i] <- 0
  }
  
}

sum(notas$aprovado == 1)
"""
#Vetor ao cubo
x <- 1:700

for (i in 1:length(x)){
  x[i] <- x[i]^3
}
print(x)

#n de letras no nome da coluna
y <- colnames(iris)
z <- 0

for (i in 1:length(y)){
  z[i] <- (paste0(y[i], "(", nchar(y[i]), ")"))
}

#Erro Padrao

i <- 0
while (i <= 1){
  x <- rnorm(100, sd = 8)
  i <- sd(x)/sqrt(length(x))
  if (i < 0.75){
    next(i)
  }
  print(i)
}

#Par ou Impar
sequencia <- 1:10
par <- 0
impar <- 0
i <- 0
for (i in 1:length(sequencia)){
  if (sequencia[i]%%2 == 0){
    par[i] <- sequencia[i]
  }else{
    impar[i] <- sequencia[i]
  }
  if (is.na(par[i])){
    par[i] <- na.omit(par[i])
    if (par[i] == 0){
      par[i] <- -0
    }
  }
  if (is.na(impar[i])){
    impar[i] <- na.omit(impar[i])
    if (impar[i] == 0){
      impar[i] <- -0
    }
  }
}

#Cara ou Koroa
i <- 0
ck <- rep(NA, 10)

for (i in 1:length(ck)){
  ck[i] <- sample(c(1,0), replace = TRUE)
  if (ck[i] == 0){
    ck[i] = "KOROA"
  }else{
    ck[i] = "CARA"
  }
}
sum(ck == "KOROA")
sum(ck == "CARA")


multiplicacao_m <- function(m1, m2){
  if(dim(m1)[1] != dim(m2)[2]){
    print("matrizes nao compativeis!")
  }else{
    mr <- matrix(0, nrow = dim(m1)[1], ncol = dim(m2)[2])
    for (i in 1:dim(m1)[1]){
      n = 1
      for (j in 1:dim(m2)[2]){
        mr[i,n] <- sum(m1[i,]*m2[,j])
        n <- n+1
      }
    }
    return(mr)
  }
}


matriz1 <- matrix(c(1:12), nrow = 4, ncol = 3)
matriz2 <- matrix(c(10:22), nrow = 3, ncol = 4)

multiplicacao_m(matriz1, matriz2)
