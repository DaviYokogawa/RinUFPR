Ozonio <- c(41, 36, 12, 18, NA, 28, 23, 19, 8, NA, 7, 16)
Rad.Solar <- c(190, 118, 149, 313, NA, NA, 299, 99, 19, 194, NA, 256)
Vento <- c(7.4, 8.0, 12.6, 11.5, 14.3, 14.9, 8.6, 13.8, 20.1, 8.6, 6.9, 9.7)
Temp <- c(67, 72, 74, 62, 56, 66, 65, 59, 61, 69, 74, 69)
Mes <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
Estacao <- c("Verao", "Verao", "Verao", "Outono", "Outono", "Outono", 
             "Inverno", "Inverno", "Inverno", "Primavera", "Primavera",
             "Primavera")
df <- data.frame(Ozonio, Rad.Solar, Vento, Temp, Mes, Estacao)
df
class(Ozonio)
Rad.Solar >= 180

y <-runif(5, n = 10, 15)
seq(from = 1, to = 20 , by = 4)

epoca <- factor(c("Verao", NA, "Verao", NA, "Outono", "Outono", "Inverno",
                  "Inverno", NA, NA, "Primavera", NA ))
epoca


matriz <- matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE )











