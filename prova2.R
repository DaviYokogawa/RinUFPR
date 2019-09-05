#####Questao 1 
#1 = F
set.seed(27)
rn <- rnorm(75, mean = 3.4, sd = 2.1)
mean(x)
#4 = V
set.seed(82)
re <- rexp(150, rate = 1)
re1 <- sum(y > 1.3, na.rm = FALSE)

#5 = V
set.seed(46)
rc <- rcauchy(50, location = 0, scale = 1)
rc1 <- sum(rc > 0.8, na.rm = FALSE) #foram gerados 16 numeros, nao 15

#####Questao 2
data("quakes")
#V F V F F

#####Questao 3
num <- c(13, 2, 95, 62, 70, 43, 49, 96, 92, 77, 34,
         47, 40, 32, 80, 33, 78, 35, 28, 64, 72, 76,
         55, 68, 4)
#1 = F
x<- c(seq(from = 0, to = 2*pi, by = 0.01))
sum(num > 34, na.rm = FALSE) # ha 18 valores maiores que 34
#2 = V
sum(num)
#3 
x1 <- tan(x) == x
sum(round(x1, digits = 2), na.rm = FALSE)
#4 = V
x2 <- sin(x)^2 == cos(x)^2
length(x2)
#5
sum(round(sin(x)==cos(x), digits = 2))

#####Questao 4
#1 = F
A <- matrix(c(1, -2, 15, 7, -3, 0, 4, 3, 07,
              2.3, -1, -3, 5, 9, 3, 0),nrow = 4, ncol = 4)
B <- matrix(c(6,-3,0,1,-3,0,-4,0.3,-0.7,
              6,-1,3,4.5,9,-1,0),nrow = 4, ncol = 4 )
C <- matrix(c(1,2,0,1,-2,0,7,6,3,3,0.9,-1), nrow = 3, ncol = 4)

multiplicacao <- sum(A %*% B, na.rm = FALSE)
#2 = V
A %*% C
#3 = F
C <- as.data.frame(C)
#4 = V
#5 = F
sum(B %*% A, na.rm = FALSE)

#####Questao 5
a <- list(as.vector(runif(10)), c(1, 2, 3),
          c("a", "b", "c"), list(c(TRUE, "R", FALSE)))
b <- data.frame(runif(5), rexp(5), c("a", "b", "c", "d", "e"))
C <- matrix(1:12, ncol = 4, nrow = 3)
d <- c("1", "2", "3")
e <- array(rnorm(30), dim = c(15, 15, 2))
C <- cbind(C, d)
