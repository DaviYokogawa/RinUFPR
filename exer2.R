x <- runif(30, min = 0, max = 1)
y <- runif(30, min = -5, max = 5)
z <- runif(30, min = 10, max = 500)
x
y
z

f1 <-5
f2 <- 10
f <- function(){
    x+y
}
f()

dado <- function(){
    sample(6, size = 1, replace = FALSE, prob = NULL)
}
dado()

dado2 <- function(){
  sample(6, size = 2, replace = FALSE, prob = NULL)
}
dado2
