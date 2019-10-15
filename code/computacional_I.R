## multiplicação de matriz

mult_M <- function(m1, m2){
  if(dim(m1)[2] != dim(m2)[1]){
    print("Matrizes não compatíveis!")
  }
  else{
    mr <- matrix(0, nrow = dim(m1)[1], ncol = dim(m2)[2])
    for(i in 1:dim(m1)[1]){
      n <- 1
      for(j in 1:dim(m2)[2]){
        
        mr[i,n] <- sum(m1[i,]*m2[,j])
        n <- n+1
        }
    }
    return(mr)
  }
}


teste1 <- matrix(c(2,2,2,2,2,2), ncol = 2)
teste2 <- matrix(c(1,1,1,1,1,1), ncol = 3)
teste <- matrix(c(1,1,1,1,1,1,1,1), ncol = 2)
mult_M(teste, teste1)
# teste1%*%teste
# mr <- matrix(0, nrow = dim(teste1)[1], ncol = dim(teste2)[2])

## EX 1.3
set.seed(123)
i <- 0
while (i < 1000) {
  i <- i+1
  x <- sd(rnorm(100, 0, 10))/sqrt(100)
  if(x < 0.3){
    next
    }
  print(x)
  if(x >= 1){
    break()
  }
  
}

## EX:5.3.3

sist <- function(sistema){
  y <- sistema[2,1]/sistema[1,1]
  l1 <- sistema[1,]*y
  sistema[1,] <- l1
  sistema[2,] <- sistema[2,] - sistema[1,]
  sistema[2,] <- sistema[2,]/sistema[2,2]
  x2 <- sistema[2,3]
  sistema[1,] <- sistema[1,] - (sistema[1,2]*sistema[2,])
  x1 <- sistema[1,3]/sistema[1,1]
  
  print(paste0("X1 = ", round(x1, digits = 2))) 
  print(paste0("X2 = ", round(x2, digits = 2)))
  
}


m <- matrix(c(1, 3, 3, 2, 3, 6), nrow = 2)
sist(m)

## Não linear
soluc <- function(fx, a, b, pre){
  y <- c()
  x <- seq(from = a, to = b, pre)
  for(i in 1:length(x)){
    y[i] <- fx(x = x[i])
  }
  da <- data.frame("y" = y, "x" = x)
  sol <- da[min(abs(da$y)),]
  return(sol)
}

function(x) log(x)-1

soluc((log(x)-1), 2, 10, 1)

## EX: 5.4.1
absoluto <- function(vetor){
  x <- abs(vetor)
  return(x)
}
y <- -c(1,2,4,5,6,7)
z <- absoluto(y)

## EX:5.4.3

maior_media <- function(vetor){
  m <- mean(vetor)
  i <- 0
  for(a in 1:length(vetor)){
    if(vetor[a] > m){
    i <- i+1
    }
    }
  return(i)
}
 
maior_media(z)

## EX:5.4.4

cres_decres <- function(vetor){
  x <- sort(vetor)
  y <- sort(vetor, decreasing = TRUE)
  z <- list(x, y)
  return(z)
}
cres_decres(z)

## EX:5.4.5

fatorial <- function(x){
  if(x == 1 | x == 0){
    y <- 1
  }
  if(x > 1){
    y <- 1
    for(i in x:2){
      y <- y * i
    }
  }
  else{
     y <- "Fatorial não admite número negativo"
  }
  return(y)
}
fatorial(-3)

fatorial(10)


